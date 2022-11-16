/** @type { (byteLength: number) => (Uint8Array) } */
let malloc;

/** @type { (Uint8Array) => (void) } */
let free;

/** @type { (byteOffset: number, byteLength: number) => (ArrayBuffer) } */
let inflate;

/** @type { WebAssembly.Memory } */
let memory;

/**
 * 
 * @param { number } byteOffset 
 * @param { number } byteLength 
 * @returns { ArrayBuffer }
 */
function copyToArrayBuffer(byteOffset, byteLength) {
    return memory.buffer.slice(byteOffset, byteOffset + byteLength);
}

async function fetchInflate() {
    const instance = (await WebAssembly.instantiateStreaming(fetch('./inflate.wasm'))
        .catch(async _ => { 
            return await WebAssembly.instantiate(await (await fetch('./inflate.wasm')).arrayBuffer(), {
                jsinterop: {
                    copyToArrayBuffer
                },
                env: {
                    emscripten_notify_memory_growth(_) {}
                }
            });
        })).instance.exports;

    /**
     * @param { ArrayBuffer } arrayBuffer
     */
    malloc = function(byteLength) {
        const bufferPointer = instance["malloc"](byteLength);
        return new Uint8Array(memory.buffer, bufferPointer, byteLength);
    };

    /**
     * @param { Uint8Array } u8Array
     */
    free = function(u8Array) {
        instance["free"](u8Array.byteOffset);
    };

    inflate = instance["inflateFromBuffer"];

    memory = instance.memory;
}
const inflatePromise = fetchInflate();

self.addEventListener('fetch', function(e) {
    e.respondWith(
        (async function() { 
            if (!e.request.url.endsWith(".wasm")) {
                return await fetch(e.request);
            }

            const gzResponse = await fetch(e.request.url + '.gzip');

            if (gzResponse.status === 200) {
                await inflatePromise;

                const gzBuffer = await gzResponse.arrayBuffer();
                const allocatedMemory = malloc(gzBuffer.byteLength);
                allocatedMemory.set(new Uint8Array(gzBuffer));

                const decompressed = inflate(allocatedMemory.byteOffset, allocatedMemory.byteLength);
                free(allocatedMemory);

                return new Response(
                    decompressed,
                    {
                        headers: {
                            'Content-Type': 'application/wasm'
                        }
                    }
                );
            }

            return await fetch(e.request);
        })()
    )
});

self.addEventListener('install', e => {
    console.log("install event");
    e.waitUntil(self.skipWaiting());
});

self.addEventListener('activate', e => { 
    console.log("activate event");
    e.waitUntil(self.clients.claim());
});

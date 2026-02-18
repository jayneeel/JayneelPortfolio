'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "e2b2692af377e6a50be9ec0d533c2776",
"assets/AssetManifest.bin.json": "a386f495d60b5a16223c972b1e47ea4f",
"assets/AssetManifest.json": "a51db815e83dabe503022d19a77e40cc",
"assets/assets/icons/android.svg": "99b98830c91efa221dec7902bc797e1b",
"assets/assets/icons/dart.svg": "384ad99903293e87f01f49214db88050",
"assets/assets/icons/firebase.svg": "10b0719343408095f5a9b369e0787115",
"assets/assets/icons/flutter.svg": "59a662c262bb9fae1751abe4d13abb84",
"assets/assets/icons/git.svg": "adcab6a564a11096dc35f681cfb02ce6",
"assets/assets/icons/google_cloud.svg": "d87afdbbe428325cf72483d9eaeda8f6",
"assets/assets/icons/java.svg": "249fe040428adedb1d5b3bb6811ef492",
"assets/assets/icons/kotlin.svg": "73c815b94511db676068d478c1e80875",
"assets/assets/icons/open_cv.svg": "5ca2926640fb5adde52005561a17b28d",
"assets/assets/icons/python.svg": "ffc01dcc015f573d0f1d831fb7b6cbca",
"assets/assets/icons/sqlite.svg": "332417a7f4156fbd6f81615a48286092",
"assets/assets/icons/tensorflow.svg": "3766283c45d537cea7708ea7eafffab2",
"assets/assets/images/aibi-logo.png": "c88cc100e1343e53b3711c3f72ddb8cc",
"assets/assets/images/bks-logo.svg": "0c92be1b066c0173a429b79cf4d82a19",
"assets/assets/images/circolife-logo.svg": "92cb1e11359c371d396acdde7f4ac60f",
"assets/assets/images/fitstack_app.png": "7243aa700206773fdcd6121e72995b7d",
"assets/assets/images/hackathon_certificate.png": "b2c0600629f09bf4fdedc20c6787be84",
"assets/assets/images/ieee_certificate.png": "8134f61180d680109671531e40a54120",
"assets/assets/images/jayneel_pic.png": "2d3825e6938dfb5236a309ee2db86d22",
"assets/assets/images/workshop.jpg": "77463f5f5b779a31096c9fa67cfd8bf3",
"assets/FontManifest.json": "d7294b11043574750e206b7c35f8887d",
"assets/fonts/Inter-Bold.ttf": "8b04b3bd9435341377d7f4b4d68b6ecc",
"assets/fonts/Inter-Medium.ttf": "4591e900425d177e6ba268d165bf12e8",
"assets/fonts/Inter-Regular.ttf": "e48c1217adab2a0e44f8df400d33c325",
"assets/fonts/MaterialIcons-Regular.otf": "2abecb5861d97d3f97987fc3c732fc43",
"assets/NOTICES": "e805b74b92ef9211a6a356f028898216",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e250767b86cf956c9457ead2b7aad5fd",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "2121a197c4837fee3a766e717a822da7",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "dbd76dbb035899ab01ce5be4798b2bfe",
"/": "dbd76dbb035899ab01ce5be4798b2bfe",
"main.dart.js": "4d508e1755e8700e6506931bcf08ff03",
"manifest.json": "f8e5afc2d80d329a7cc63f258e4087a5",
"version.json": "806f0e14c4e57ae63b62aea942ea284f"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

self.addEventListener('install', e => {
    e.waitUntil(
        caches.open('constfn-cache').then(cache => {
            return cache.addAll([
                '/',
                '/index.html',
                '/about.html',
                '/static/main.css',
                '/static/css/material.css',
                '/static/css/roboto.css',
                '/static/css/roboto-mono.css',
                '/static/js/jquery.min.js',
            ]);
        })
    );
});

self.addEventListener('fetch', e => {
    e.respondWith(
        caches.match(e.request).then(response => {
            return response || fetch(e.request);
        })
    )
})
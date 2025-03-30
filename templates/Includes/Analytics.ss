<% if $GAMainCode && $GAMainIsOn %>
<!-- Google tag (gtag.js) -->
<script>
    window.dataLayer = window.dataLayer || [];
    const loadGTM  = function () {
        window.setTimeout(function () {
            (function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({ 'gtm.start': new Date().getTime(), event: 'gtm.js' });

                var j = d.createElement(s),
                    f = d.getElementsByTagName(s)[0],
                    dl = l !== 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', '$GAMainCode');
        });
    }
    const loadGTMOnInteraction = function () {
        loadGTM();
        window.removeEventListener('scroll', loadGTMOnInteraction);
        window.removeEventListener('mousemove', loadGTMOnInteraction);
        window.removeEventListener('touchstart', loadGTMOnInteraction);
    }

    window.addEventListener('scroll', loadGTMOnInteraction, { once: true });
    window.addEventListener('mousemove', loadGTMOnInteraction, { once: true });
    window.addEventListener('touchstart', loadGTMOnInteraction, { once: true });
</script>
<% end_if %>

<% if $GAMainCode && $GAMainIsOn %>
<!-- Google tag -->
<script>
    window.dataLayer = window.dataLayer || [];

    const loadAnalytics = function () {
        window.setTimeout(function () {
            <% if $GAMainType == 'gtm' %>
            // Google Tag Manager container
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
            <% else %>
            // GA4 via gtag.js
            var j = document.createElement('script');
            j.async = true;
            j.src = 'https://www.googletagmanager.com/gtag/js?id=$GAMainCode';
            document.head.appendChild(j);

            function gtag() { dataLayer.push(arguments); }
            window.gtag = gtag;
            gtag('js', new Date());
            gtag('config', '$GAMainCode');
            <% end_if %>
        });
    };

    const loadAnalyticsOnInteraction = function () {
        loadAnalytics();
        window.removeEventListener('scroll', loadAnalyticsOnInteraction);
        window.removeEventListener('mousemove', loadAnalyticsOnInteraction);
        window.removeEventListener('touchstart', loadAnalyticsOnInteraction);
    };

    window.addEventListener('scroll', loadAnalyticsOnInteraction, { once: true });
    window.addEventListener('mousemove', loadAnalyticsOnInteraction, { once: true });
    window.addEventListener('touchstart', loadAnalyticsOnInteraction, { once: true });
</script>
<% end_if %>

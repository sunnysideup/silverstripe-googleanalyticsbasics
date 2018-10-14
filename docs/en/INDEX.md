Google Analytics Basics
================================================================================

Adds google analytics to your website. We use this module
so that when google analytics upgrades its JS code (which has happened many times)
we can upgrade this module and thereby all our websites.


Installation Instructions
-----------------------------------------------

1. Review configs and add entries to app/_config/config.yml
(or similar) as necessary.
In the _config/ folder of this module
you can usually find some examples of config options (if any).

2a. Add GoogleAnalyticsCode to the bottom of your page
by adding <% include Analytics %> to the end of your
page template (but before </body>)

OR

2b. add the following line to Page_Controller::init():
```php

        $this->InsertGoogleAnalyticsAsHeadTag();

```

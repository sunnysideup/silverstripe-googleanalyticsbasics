<?php

namespace Sunnysideup\GoogleAnalyticsBasics;

use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\Control\Director;
use SilverStripe\Core\Config\Config;
use SilverStripe\Core\Extension;
use SilverStripe\View\Requirements;

/**
 * Class \Sunnysideup\GoogleAnalyticsBasics\GoogleAnalyticsSTE
 *
 * @property ContentController|GoogleAnalyticsSTE $owner
 */
class GoogleAnalyticsSTE extends Extension
{
    /**
     * @return string
     */
    private static ?string $main_code = null;

    protected static $inserted = false;

    public function GAMainIsOn(): bool
    {
        return Director::isLive() || isset($_GET['testanalytics']);
    }

    public function GAMainCode(): string
    {
        return trim((string) Config::inst()->get(GoogleAnalyticsSTE::class, 'main_code'));
    }

    public function onAfterInit()
    {
        $this->InsertGoogleAnalyticsAsHeadTag();
    }

    public function InsertGoogleAnalyticsAsHeadTag(): void
    {
        if (self::$inserted) {
            return;
        }
        self::$inserted = true;
        if ($this->GAMainIsOn() && $this->GAMainCode()) {
            $owner = $this->getOwner();
            $script = $owner->renderWith('Includes/Analytics');
            Requirements::insertHeadTags($script, 'GoogleAnalyticsSTE');
        }
    }

    /**
     * Returns the Google tag type based on the configured ID prefix.
     * 'gtm'   => Google Tag Manager container (GTM-XXXXXXX)
     * 'gtag'  => GA4 / gtag.js (G-XXXXXXX, also AW-, UA-)
     * ''      => no/invalid code
     */
    public function GAMainType(): string
    {
        $owner = $this->getOwner();
        $code = trim((string) $owner->GAMainCode());

        if ($code === '') {
            return '';
        }

        return str_starts_with($code, 'GTM-') ? 'gtm' : 'gtag';
    }
}

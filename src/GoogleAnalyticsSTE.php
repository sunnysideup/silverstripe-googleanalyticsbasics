<?php

namespace Sunnysideup\GoogleAnalyticsBasics;

use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\Control\Director;
use SilverStripe\Control\RequestHandler;
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
    private static $main_code;


    public function GAMainIsOn()
    {
        return Director::isLive() || isset($_GET['testanalytics']);
    }

    public function GAMainCode()
    {
        return Config::inst()->get(GoogleAnalyticsSTE::class, 'main_code');
    }

    public function InsertGoogleAnalyticsAsHeadTag()
    {
        $owner = $this->getOwner();
        $script = $owner->renderWith('Includes/Analytics');
        Requirements::insertHeadTags($script, 'GoogleAnalyticsSTE');
    }
}

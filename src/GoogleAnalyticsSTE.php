<?php

namespace Sunnysideup\GoogleAnalyticsBasics;

use SilverStripe\Control\Director;
use SilverStripe\Core\Config\Config;
use SilverStripe\Core\Extension;
use SilverStripe\View\Requirements;

class GoogleAnalyticsSTE extends Extension
{
    /**
     * @return string
     */
    private static $main_code;

    /**
     * @return string
     */
    private static $site_name;

    /**
     * @return string
     */
    private static $show_really_annoying_yellow_bar = false;

    public function GAMainIsOn()
    {
        return Director::isLive() || isset($_GET['testanalytics']);
    }

    public function GAMainCode()
    {
        return Config::inst()->get(GoogleAnalyticsSTE::class, 'main_code');
    }

    public function GAMainSite()
    {
        return Config::inst()->get(GoogleAnalyticsSTE::class, 'site_name');
    }

    /**
     * @return boolean
     */
    public function ShowReallyAnnoyingYellowBar()
    {
        return Config::inst()->get(GoogleAnalyticsSTE::class, 'show_really_annoying_yellow_bar');
    }

    public function InsertGoogleAnalyticsAsHeadTag()
    {
        Requirements::insertHeadTags($this->owner->renderWith('Includes/Analytics'));
    }

    public function canEditThisPage()
    {
        $member = Security::getCurrentUser();
        if ($member) {
            return $this->owner->dataRecord->canEdit($member);
        }
    }
}

<?php

namespace Sunnysideup\GoogleAnalyticsBasics;

use SilverStripe\Control\Director;
use SilverStripe\Core\Config\Config;
use SilverStripe\Core\Extension;
use SilverStripe\Security\Security;
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

    /**
     * @return string
     */
    private static $site_name;

    /**
     * @return string
     */
    private static $show_really_annoying_yellow_bar = false;

    /**
     * @return string
     */
    private static $use_gtag = false;

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

    public function UseGTag()
    {
        return Config::inst()->get(GoogleAnalyticsSTE::class, 'use_gtag');
    }

    /**
     * @return bool
     */
    public function ShowReallyAnnoyingYellowBar()
    {
        return Config::inst()->get(GoogleAnalyticsSTE::class, 'show_really_annoying_yellow_bar');
    }

    public function InsertGoogleAnalyticsAsHeadTag()
    {
        if ($this->UseGTag()) {
            Requirements::insertHeadTags($this->getOwner()->renderWith('Includes/AnalyticsGTag'));
        } else {
            Requirements::insertHeadTags($this->getOwner()->renderWith('Includes/Analytics'));
        }
    }

    public function canEditThisPage()
    {
        $member = Security::getCurrentUser();
        if ($member) {
            return $this->getOwner()->dataRecord->canEdit($member);
        }
        return null;
    }
}

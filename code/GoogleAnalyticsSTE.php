<?php

class GoogleAnalyticsSTE extends Extension
{

    /**
     *
     * @return String
     */
    private static $main_code;

    /**
     *
     * @return String
     */
    private static $site_name;

    /**
     *
     * @return String
     */
    private static $show_really_annoying_yellow_bar = false;

    public function GAMainIsOn()
    {
        return Director::isLive() || isset($_GET['testanalytics']);
    }

    public function GAMainCode()
    {
        return Config::inst()->get("GoogleAnalyticsSTE", "main_code");
    }

    public function GAMainSite()
    {
        return Config::inst()->get("GoogleAnalyticsSTE", "site_name");
    }

    /**
     *
     * @return Boolean
     */
    public function ShowReallyAnnoyingYellowBar()
    {
        return Config::inst()->get("GoogleAnalyticsSTE", "show_really_annoying_yellow_bar");
    }

    public function InsertGoogleAnalyticsAsHeadTag()
    {
        Requirements::insertHeadTags($this->owner->renderWith('Analytics'));
    }

    public function canEditThisPage()
    {
        $member = Member::currentUser();
        if ($member) {
            return $this->owner->dataRecord->canEdit($member);
        }
    }
}

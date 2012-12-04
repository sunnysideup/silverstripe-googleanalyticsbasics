<?php

class GoogleAnalytics extends SiteTreeDecorator {

	public static $googleAnalyticsCode;
	public static $googleAnalyticsCodeTwo;

	function GoogleAnalyticsCode() {
		if(Director::isLive()) {
			return self::$googleAnalyticsCode;
		}
		return null;
	}

	function GoogleAnalyticsCodeTwo(){
		if(Director::isLive()) {
			return self::$googleAnalyticsCodeTwo;
		}
		return null;
	}

}

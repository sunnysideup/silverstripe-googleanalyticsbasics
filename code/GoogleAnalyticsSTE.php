<?php

class GoogleAnalyticsSTE extends SiteTreeExtension {

	private static $main_code;

	private static $site_name;

	function GAMainIsOn() {
		return Director::isLive();
	}

	function GAMainCode() {
		return Config::inst()->get("GoogleAnalyticsSTE", "main_code");
	}

	function GAMainSite() {
		return Config::inst()->get("GoogleAnalyticsSTE", "site_name");
	}


}

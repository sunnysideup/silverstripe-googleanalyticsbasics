<?php

class GoogleAnalyticsSTE extends SiteTreeExtension {

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
	private static $show_really_annoying_yellow_bar = true;

	function GAMainIsOn() {
		return Director::isLive();
	}

	function GAMainCode() {
		return Config::inst()->get("GoogleAnalyticsSTE", "main_code");
	}

	function GAMainSite() {
		return Config::inst()->get("GoogleAnalyticsSTE", "site_name");
	}

	/**
	 *
	 * @return Boolean
	 */
	public function ShowReallyAnnoyingYellowBar(){
		return Config::inst()->get("GoogleAnalyticsSTE", "show_really_annoying_yellow_bar");
	}


}

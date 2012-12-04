<?php

class GoogleAnalyticsSTE extends SiteTreeExtension {
	
	static $main_code;
	static $optional_code;

	function GAMainCode() {
		if(Director::isLive()) {
			return self::$main_code;
		}
	}

	function GAOptionalCode() {
		if(Director::isLive()) {
			return self::$optional_code;
		}
	}
}
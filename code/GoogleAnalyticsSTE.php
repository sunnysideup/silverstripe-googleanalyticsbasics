<?php

class GoogleAnalyticsSTE extends SiteTreeExtension {

	protected static $main_code;
		static function set_main_code($s) {self::$main_code = $s;}

	protected static $optional_code;
		static function set_optional_code($s) {self::$optional_code = $s;}

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

/*
 *@author nicolaas[at]sunnysideup.co.nz
 * Changes 16/02/2012 - Ralph
 * - Added in _gaq to prevent undedfined array if not yet set
 * - Added dlTracking function
 **/


(function($) {

	jQuery(document).ready(
		function() {
			googleanalytics.dlTracking();
		}
	);

	var googleanalytics = {

		dlTracking: function() {
			jQuery('a').each(
				function() {
					var href = jQuery(this).attr('href');
					if(typeof(href) != 'undefined' && href.match(/^assets\//)) {
						jQuery(this).click(function() {
							_gaq.push(['_trackEvent', 'Downloads', href.replace(/^assets\//i, '')]);
						});
					}
				}
			);
		}
	}

})(jQuery);

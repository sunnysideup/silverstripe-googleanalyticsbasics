<% if GoogleAnalyticsCode %>
<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', '{$googleAnalyticsCode}']);
	_gaq.push(['_trackPageview']);

	<% if GoogleAnalyticsCodeTwo %>
	_gaq.push(function() {
		// create the second async tracker
		_gaq._createAsyncTracker('{$GoogleAnalyticsCodeTwo}', 'secondGATracker');
	});
	_gaq.push(['secondGATracker._trackPageview']);
	<% end_if %>

	(function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();
</script>
<% else %>
<div style="background-color: yellow; height: 100px; color: red; clear: both; margin: 0; padding: 10px; text-align: center;" id="GoogleAnalyticsFooter">
Please note: this site is currently undergoing maintenance.
	<% if CurrentMember %>Welcome Back, $CurrentMember.FirstName.
		<% if CurrentMember.IsAdmin %>
	Please <a href="/admin/show/$ID/" style="color: red;">edit this page in CMS.</a>
		<% end_if  %>
	<% else  %>
	You are not logged in.
	<% end_if  %>
</div>
<% end_if %>

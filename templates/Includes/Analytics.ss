<% if GAMainCode %>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', '$GAMainCode']);
		_gaq.push(['_trackPageview']);
		<% if GAOptionalCode %>
			_gaq.push(function() {
				// create the second async tracker
				_gaq._createAsyncTracker('$GAOptionalCode', 'secondGATracker');
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
		<% if CurrentMember %>
			Welcome Back, {$CurrentMember.Name}.
			<% if CurrentMember.IsAdmin %>
				Please click <a href="/admin/show/$ID/" style="color: red;">here</a> to edit this page in CMS.
			<% end_if  %>
		<% else  %>
			You are not logged in.
		<% end_if  %>
	</div>
<% end_if %>

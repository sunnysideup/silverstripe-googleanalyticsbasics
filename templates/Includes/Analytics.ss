<% if GAMainIsOn %>
	<script type="text/javascript">
<% if GAMainSite %>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', '$GAMainCode', '$GAMainSite');
		ga('send', 'pageview');
<% else %>
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', '$GAMainCode']);
		_gaq.push(['_trackPageview']);
		(
			function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			}
		)();
<% end_if %>
	</script>
<% else %>
	<% if ShowReallyAnnoyingYellowBar %>
	<div style="background-color: yellow; height: 17px; position: fixed; bottom: 0; left: 0; right: 0; color: red; padding: 7px 0 0 0; text-align: center; font-size: 10px; " id="GoogleAnalyticsFooter">
		<strong>UNDERGOING MAINTENANCE:</strong>
		<strong>Google Analytics</strong> $GAMainCode, Tracking: <% if GAMainSite %>$GAMainSite<% else %>anything<% end_if %>.
		<% if CurrentMember %>
			 Logged in as {$CurrentMember.Name}.
		<% else  %>
			Not logged in.
		<% end_if  %>
		<a href="/admin/pages/edit/show/$ID/" style="color: red;">Edit this Page</a>
	</div>
	<% end_if %>
<% end_if %>

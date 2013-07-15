<% if GAMainCode %>
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
	<div style="background-color: yellow; height: 100px; color: red; clear: both; margin: 0; padding: 10px; text-align: center;" id="GoogleAnalyticsFooter">
		Please note: this site ($GAMainSite) is currently undergoing maintenance.
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

<% if GAMainCode && GAMainIsOn %>
<script type="text/javascript">//<![CDATA[
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', '$GAMainCode', '<% if GAMainSite %>$GAMainSite<% else %>auto<% end_if %>');
    ga('send', 'pageview');
//]]></script>
<% else %>
    <% if ShowReallyAnnoyingYellowBar %>
<div style="background-color: yellow; height: 100px; color: red; clear: both; margin: 0; padding: 10px; text-align: center;" id="GoogleAnalyticsFooter">
    This site is currently undergoing maintenance.
        <% if CurrentMember %>
        Welcome Back, {$CurrentMember.Name}.
        <% if $canEditThisPage %>
            Please click <a href="/admin/pages/edit/show/$ID/" style="color: red;">here</a> to edit this page in CMS.
        <% end_if  %>
        <% else  %>
        You are not logged in.
        <% end_if  %>
</div>
    <% end_if %>
<% end_if %>

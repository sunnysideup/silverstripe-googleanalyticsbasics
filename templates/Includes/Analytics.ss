<% if GAMainCode && GAMainIsOn %>
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=$GAMainCode"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', '$GAMainCode');
</script>
//]]></script>
<% else %>
    <% if $ShowReallyAnnoyingYellowBar %>
<div style="background-color: yellow; height: 100px; color: red; clear: both; margin: 0; padding: 10px; text-align: center;" id="GoogleAnalyticsFooter">
    This site is currently undergoing maintenance.
        <% if $CurrentMember %>
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

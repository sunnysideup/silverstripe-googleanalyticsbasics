<% if GAMainCode && GAMainIsOn %>
<% else %>
    <% if ShowReallyAnnoyingYellowBar %>
<div style="background-color: yellow; height: 100px; color: red; clear: both; margin: 0; padding: 10px; text-align: center;" id="GoogleAnalyticsFooter">
    This site is currently undergoing maintenance.
        <% if CurrentMember %>
        Welcome Back, {$CurrentMember.Name}.
        <% if $canEditThisPage %>
            Please click <a href="/admin/show/$ID/" style="color: red;">here</a> to edit this page in CMS.
        <% end_if  %>
        <% else  %>
        You are not logged in.
        <% end_if  %>
</div>
    <% end_if %>
<% end_if %>

<#import "parts/common.ftl" as C>
<#import "parts/login.ftl" as L>

<@C.page>
<div class="mb-1">Add new user</div>
    ${message?ifExists}
    <@L.login "/registration" true/>
</@C.page>
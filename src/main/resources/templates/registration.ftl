<#import "parts/common.ftl" as C>
<#import "parts/login.ftl" as L>

<@C.page>
Add new user
    ${message?ifExists}
    <@L.login "/registration" />
</@C.page>
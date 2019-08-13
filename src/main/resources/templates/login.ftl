<#import "parts/common.ftl" as C>
<#import "parts/login.ftl" as L>

<@C.page>
    ${message?ifExists}
<@L.login "/login" false/>
</@C.page>
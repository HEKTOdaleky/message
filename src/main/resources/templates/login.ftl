<#import "parts/common.ftl" as C>
<#import "parts/login.ftl" as L>
<@C.page>
Login Page
<@L.login "/login"/>
<a href="/registration">Add new user</a>
</@C.page>
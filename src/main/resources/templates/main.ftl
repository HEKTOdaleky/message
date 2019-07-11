<#import "parts/common.ftl" as C>
<#import "parts/login.ftl" as L>
<@C.page>
<div>
<@L.logout/>
</div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Input message"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="text" name="tag" placeholder="Tag">
        <button type="submit">Add</button>
    </form>
</div>
<div>Message list</div>
<form method="get" action="/main">
    <input type="text" name="filter" value=${filter}>
    <button type="submit">Find</button>
</form>
    <#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
    </div>
    <#else>
        No messages
    </#list>
</@C.page>
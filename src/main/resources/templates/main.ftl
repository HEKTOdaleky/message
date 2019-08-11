<#import "parts/common.ftl" as C>
<#import "parts/login.ftl" as L>
<@C.page>
<div>
<@L.logout/>
    <a href="/user/">Edit User</a>
</div>
<div>
    <form method="post" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Input message"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="text" name="tag" placeholder="Tag">

        <input type="file" name="file">
        <button type="submit">Add</button>
    </form>
</div>
<div>Message list</div>
<form method="get" action="/main">
    <input type="text" name="filter" value=${filter?ifExists}>
    <button type="submit">Find</button>
</form>
    <#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
        <div>
            <#if message.filename??>
                <img src="/img/${message.filename}">
            </#if>
        </div>
    </div>
    <#else>
        No messages
    </#list>
</@C.page>
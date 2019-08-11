<#macro login path isReqisterForm>
<form action="${path}" method="post">
    <div class="form-group row">
        <label class="col-sm-2">User Name:</label>
        <div class="col-sm-10">
            <input type="text" name="username"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2"> Password:</label>
        <div class="col-sm-10">
            <input type="password" name="password"/>
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <#if !isReqisterForm>
        <a href="/registration">
            Add new user
        </a>
    </#if>
    <div>
        <button class="btn btn-primary" type="submit"><#if isReqisterForm>Create<#else>Sign in</#if></button>
    </div>
</form>
</#macro>

<#macro logout>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button class="btn btn-primary" type="submit">Sign Out</button>
        </form>
</#macro>
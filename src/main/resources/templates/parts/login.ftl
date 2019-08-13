<#macro login path isReqisterForm>
<form action="${path}" method="post">
    <div class="form-group row">
        <label class="col-sm-2">User Name:</label>
        <div class="col-sm-10">
            <input type="text" name="username" class="form-control" placeholder="username"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2"> Password:</label>
        <div class="col-sm-10">
            <input type="password" name="password" class="form-control" placeholder="password"/>
        </div>
    </div>
    <#if isReqisterForm>
    <div class="form-group row">
        <label class="col-sm-2"> Email:</label>
        <div class="col-sm-10">
            <input type="email" name="email" class="form-control" placeholder="example@example.com"/>
        </div>
    </div>
    </#if>
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
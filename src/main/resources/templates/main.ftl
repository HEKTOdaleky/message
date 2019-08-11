<#import "parts/common.ftl" as C>

<@C.page>
<div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter" placeholder="Search by tag" value=${filter?ifExists}>
            <button type="submit" class="ml-2 btn btn-primary">Find</button>
        </form>
    </div>
</div>

  <a class="btn btn-primary mb-3" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
     aria-controls="collapseExample">
      Add new message
  </a>
<div class="collapse form-group" id="collapseExample">
    <div class="card card-body ml">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" name="text" placeholder="Input message"/>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <div class="form-group">
                <input type="text" name="tag" placeholder="Tag">
            </div>
            <div class="custom-file">
                <input type="file" name="file" id="customFile">
                <label class="custom-file-label" for="customFile">Choose file</label>
            </div>
            <button type="submit" class="btn btn-primary">Add</button>
        </form>
    </div>
</div>

<div class="card-columns">
    <#list messages as message>
        <div class="card mb-2" style="width: 18rem;">
        <#if message.filename??>
            <img src="/img/${message.filename}" class="card-img-top" alt="...">
        </#if>
            <div class="card-body">
                <h5 class="card-title">${message.authorName}</h5>
                <p class="card-text">${message.text}</p>
                <a href="#" class="btn btn-primary">${message.tag}</a>
            </div>
        </div>
    <#else>
        No messages
    </#list>
</div>
</@C.page>
<#import "parts/common.ftlh" as c>

<@c.page>
<div class="row mb-3 text-start">
    <form method="get" action="/main">
        <label>
            <input type="text" name="filter" value="${filter!}" placeholder="Search by tag">
        </label>
        <button type="submit" class="btn btn-primary ml-2">Search</button>
    </form>
</div>
    <div class="d-grid gap-2 d-md-block text-start">
        <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
            Add new message
        </a>
    <div class="collapse mb-3" style="margin-top: 10px" id="collapseExample">
        <form method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <input  type="text" class="form-control" name="text" placeholder="Enter message">
            </div>
            <div class="mb-3">
                <input class="form-control" type="text" name="tag" placeholder="Tag">
            </div>
            <div class="mb-3">
                <input class="form-control" type="file" name="file">
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button type="submit" class="btn btn-primary" style="margin-top: 10px">Add</button>
            </div>
        </form>
    </div>
</div>
<div class="row row-cols-2 row-cols-md-2 g-4 text-end">
    <#list messages as message>
        <div class="col text-end" style="margin-top: 35px">
            <div class="card" h-100>
                <#if message.filename??>
                    <img src="/img/${message.filename}" alt="" class="card-img-top">
                </#if>
                <div class="card-body text-start">
                    <div>
                        <i class="card-title">${message.tag}</i>
                    </div>
                    <div>
                        <span class="card-text">${message.text}</span>
                    </div>
                </div>
            <div class="card-footer">
                <small class="text muted">${message.authorName}</small>
            </div>
            </div>
            <#else >
                No message
            </div>
    </#list>
</div>
</@c.page>

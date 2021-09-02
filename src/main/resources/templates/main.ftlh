<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
    <div>
    <@l.logout/>
    <span><a href="/user">User list</a></span>
    </div>
    <div>
        <form method="post" enctype="multipart/form-data">
            <label>
                <input type="text" name="text" placeholder="Enter message">
            </label>
            <label>
                <input type="text" name="tag" placeholder="Tag">
            </label>
            <label>
                <input type="file" name="file">
            </label>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit">Add</button>
        </form>
    </div>

    <div>List messages</div>
    <form method="get" action="/main">
        <label>
            <input type="text" name="filter" value="${filter!}">
        </label>
        <button type="submit">Find</button>
    </form>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
            </br>
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}">
                </#if>
            </div>
        </div>
    <#else >
        No message
    </#list>
</@c.page>

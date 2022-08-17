<#import "parts/common.ftlh" as c>

<@c.page>
    User Editor
    <form action="/user" method="post">
        <input type="text" name="username" value="${user.username}">
        <input type="email" name="email" value="${user.email}">
        <#list roles as role>
            <div>
                <label><input type="checkbox"
                              name="${role}" ${user.roles?seq_contains
                    (role)?string("checked", "")}>${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit" class="btn btn-primary">Save</button>
        <button type="reset" class="btn btn-primary">Cancel</button>
        <button type="button" class="btn btn-danger">Delete</button>
    </form>
</@c.page>
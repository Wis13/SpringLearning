<#import "parts/common.ftlh" as c>

<@c.page>
List of users
<table class="table">
    <thead>
    <tr>
        <th>Name</th>
        <th>Role</th>
        <th>Email</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
        <tr>
            <td>${user.username}</td>
            <td><#list user.roles as role>${role}<#sep>, </#list></td>
            <td>${user.email}</td>
            <td><a href="/user/${user.id}">Edit</a></td>
        </tr>
    </#list>
    </tbody>
</table>
</@c.page>
<#import "parts/common.ftlh" as c>

<@c.page>
    <h2>${message!}</h2>
    <h5>${username}</h5>
    <form method="post">
        <div class="mb-3" style="text-align: left">
            <label class="form-label">Password :</label>
            <input class="form-control" type="password" name="password" placeholder="password"/>
        </div>

        <div class="mb-3" style="text-align: left">
            <label class="form-label">Email :</label>
            <input class="form-control" type="email" name="email" placeholder="some@some.com" value="${email!''}"/>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</@c.page>
<#macro login path, button>
    <form action="${path}" method="post">
        <div class="mb-3" style="text-align: left">
            <label class="col-form-label">User Name :</label>
            <input class="form-control "type="text" name="username" aria-describedby="User name"/>
        </div>
        <div class="mb-3" style="text-align: left">
            <label class="form-label">Password :</label>
            <input class="form-control "type="password" name="password" placeholder="password"/>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit" class="btn btn-primary">${button}</button>
    </form>
</#macro>
<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input type="submit" value="Sign Out">
    </form>
</#macro>

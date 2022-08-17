<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <h2>${message!}</h2>
    <@l.login "/registration" 'SignUP' true/>
</@c.page>
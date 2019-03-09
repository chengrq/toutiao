<html>
<body>
<pre>
Hello FTL.

value1 : ${value1}

<#list map?keys as m>
map : ${m_index} ${m}
</#list>

<#list map?values as v>
map : ${v_index} ${v}
</#list>

User : ${user.name}
User : ${user.getName()}

<#assign title = "nowcoder">
Include: <#include "header.ftl">

<#macro render_color key ind>
macro : ${key} , ${ind}
</#macro>

<#list map?keys as m>
    <@render_color key = m ind = m_index/>
</#list>

</pre>
</body>
</html>
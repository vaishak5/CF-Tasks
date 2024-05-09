
<!---<cfcomponent>
    <cffunction  name="getIdentify" returntype="string">
        <cfargument  name="key" type="string" required="true">
        <cfargument  name="value" type="string" required="true">
        
    </cffunction>
</cfcomponent>--->



<cfcomponent>

    <cffunction name="addKeyValuePair" access="public" returnType="void">
        <cfargument name="key" type="string" required="true">
        <cfargument name="value" type="string" required="true">
        
        <cfset application.keyValuePairs[arguments.key] = arguments.value>
    </cffunction>

</cfcomponent>


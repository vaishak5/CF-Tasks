<cfcomponent>
    <cffunction name="getIdentify" returntype="struct">
        <cfargument name="userDob" type="date" required="true">
        <cfargument name="momDob" type="date" required="true">
        <cfset var output = {}>
        <cfset output.usersAge = dateDiff("yyyy", userDob, now())>
        <cfset output.momsAge = dateDiff("yyyy", momDob, now())>
        <cfreturn output>
    </cffunction>
</cfcomponent>

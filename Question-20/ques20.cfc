<cfcomponent>
    <cffunction name="getIdentify">
        <cfargument name="captcha">
        <cfset  local.result = {}>
        <cfif arguments.captcha EQ session.captchaInput>
            <cfset local.result = "Email Address successfully subscribe our newsletter">
        <cfelse>
            <cfset local.result = "Enter the Same Captcha">
        </cfif>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>



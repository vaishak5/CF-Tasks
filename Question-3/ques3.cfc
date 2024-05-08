<cfcomponent>
   <cffunction name="getRating" returntype="string">
      <cfargument name="ratings" type="string" required="true">
      <cfset numbers = ListToArray(arguments.ratings)>
      <cfset divisibleNumbers = []>
      <cfloop array="#numbers#" index="num">
         <cfif num MOD 3 EQ 0>
            <cfset arrayAppend(divisibleNumbers, num)>
         </cfif>
      </cfloop>
      <cfif ArrayLen(divisibleNumbers) EQ 0>
         <cfreturn "None">
      <cfelse>
         <cfreturn ArrayToList(divisibleNumbers, ",")> 
      </cfif>
   </cffunction>
</cfcomponent>

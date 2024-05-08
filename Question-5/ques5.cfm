<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Birthday Checker</title>
</head>
<body>
    <h1>Birthday Checker</h1>
    <form action="ques5.cfm" method="post">
        <span>Enter User's DOB:</span>
        <input type="text" name="userDob"><br>
        <span>Enter Mother's DOB:</span>
        <input type="text" name="momDob"><br>
        <input type="submit" name="submit" value="Submit">
    </form>
    <cfif structKeyExists(form, "userDob") and structKeyExists(form, "momDob") and structKeyExists(form, "submit")>
        <cfset ques5 = createObject("component", "ques5")>
        <cfset local.result = ques5.getIdentify(form.userDob, form.momDob)>
        <h2>Results:</h2>
        <h2>User's Age: <cfoutput>#local.result.usersAge#</cfoutput></h2>
        <h2>Mother's Age: <cfoutput>#local.result.momsAge#</cfoutput></h2>
        <h2>Remaining Days for User's Birthday: <cfoutput>#local.result.userBdayRemainingDays#</cfoutput></h2>
        <h2>Remaining Days for Mother's Birthday: <cfoutput>#local.result.momBdayRemainingDays#</cfoutput></h2>
    </cfif>
</body>
</html>

<!DOCTYPE HTML>
<html lang="en">
<head>
    <link rel="stylesheet" href="./Style/style.css">
    <title>RATING CHECKER</title>
</head>
<body>
    <h3>Enter a number between 1 and 5</h3>
    <form action="ques1.cfm" method="post" class="content">
        <input type="text" name="ratings" min="1" max="5" required class="txt">
        <input type="submit" value="submit" class="btn">
    </form>
    <cfif structKeyExists(form, "ratings")>
        <cfset ques1 = createObject("component", "ques1")>
        <cfset local.ratings = ques1.getRating(form.ratings)>
        <h4>The output is: <cfoutput>#local.ratings#</cfoutput></h4>
    </cfif>
</body>
</html>

<!DOCTYPE HTML>
<html lang="en">
<head>
    <link rel="stylesheet" href="./Style/style.css">
    <title>Divisibility</title>
</head>
<body>
    <h3>Enter the number series</h3>
    <form action="ques3.cfm" method="post" class="content">
        <input type="text" name="ratings" min="1" max="5" required class="txt">
        <input type="submit" value="submit" class="btn">
    </form>
    <cfif structKeyExists(form, "ratings")>
        <cfset ques3 = createObject("component", "ques3")>
        <cfset local.ratings = ques3.getRating(form.ratings)>
        <h4>The output is: <cfoutput>#local.ratings#</cfoutput></h4>
    </cfif>
</body>
</html>

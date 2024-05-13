<!DOCTYPE html>
<html lang="en">
<head>
    <title>Highlight search keyword</title>
</head>
<body>
    <h2>Highlight search keyword</h2>
    <form action="ques13.cfm" method="post">
        <label for="value">Enter the input</label>
        <input type="text" name="value" required>
        <input type="submit" name="submit" value="Submit">
    </form>
    <cfif structKeyExists(form, "submit")>
        <cfset obj = createObject("component", "ques13")>
        <cfset keyword = (form.value)>
        <cfset result = obj.search("the quick brown fox jumps over the lazy dog", keyword)>
        <cfoutput>#result#</cfoutput>
    </cfif>
</body>
</html>

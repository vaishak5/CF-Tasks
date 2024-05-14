<!DOCTYPE html>
<html lang="en">
<head>
    <title>Page Validation</title>
    <script src="./Script/ques17.js"></script>
    <link rel="stylesheet" href="./style/ques17.css">
</head>
<body>
    <h2>Page Validation using JavaScript</h2>
    <form name="checkForm" action="ques17.cfm" method="post" onsubmit="return validateForm()">
        <label for="value">Enter the input:</label>
        <input type="text" name="value" id="value" required><br>
        <input type="submit" value="Submit">
    </form>
    <cfif structKeyExists(form, "value")>
        <cfset obj = createObject("component", "ques17")>
        <cfset local.value = obj.getRating(form.value)>
        <cfoutput>#local.value#</cfoutput>
    </cfif>
</body>
</html>

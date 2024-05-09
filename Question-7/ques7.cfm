<!---<!DOCTYPE html>
<html lang="en">
<head>
    <title>Entering Values</title>
</head>
<body>
    <h2>Entering some Values</h2>
    <form action="ques7.cfm" method="post">
        <label for="key">Enter first Key:</label>
        <input type="text" name="key"><br>
        <label for="value">Enter first Value:</label>
        <input type="text" name="value"><br><br>
        <input type="submit" name="submit" value="Submit"><br>
    </form><br>
    <cfparam name="form.key" default="">
    <cfparam name="form.value" default="">
    <cfif structKeyExists(form, "submit")>
    <cfset ques7 = createObject("component", "ques7")>
    <cfset local.result = ques7.getIdentify(form.key, form.value)>
        <cfset myStructure = {}>
        <cfset myStructure[form.key] = form.value>
        <cfdump var="#myStructure#">
    </cfif>
</body>
</html>--->


<!DOCTYPE html>
<html>
<head>
    <title>Key-Value Form</title>
</head>
<body>

    <h2>Key-Value Form</h2>

    <form action="ques7.cfm" method="post">
        <label for="key">Key:</label>
        <input type="text" id="key" name="key" required><br><br>
        
        <label for="value">Value:</label>
        <input type="text" id="value" name="value" required><br><br>
        
        <input type="submit" value="Submit">
    </form>
    <br>
    <h3>New Values:</h3>
    <cfparam name="application.keyValuePairs" default="#structNew()#">
    <cfif structKeyExists(application, "keyValuePairs")>
        <cfset local.result = ques7.getIdentify(form.key, form.value)>
        <cfset application = {}>
        <cfset application[form.key] = form.value>
        <cfdump var="#application.keyValuePairs#">
    </cfif>
    
</body>
</html>




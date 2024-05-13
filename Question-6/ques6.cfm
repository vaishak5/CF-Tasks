<!DOCTYPE html>
<html lang="en">
<head>
    <title>Entering Values</title>
</head>
<body>
    <h2>Entering some Values</h2>
    <form action="ques6.cfm" method="post">
        <label for="key">Enter any Key:</label>
        <input type="text" name="key"><br><br>
        <label for="value">Enter any Value:</label>
        <input type="text" name="value"><br><br>
        <input type="submit" name="submit" value="Submit"><br>
    </form><br>
    <cfparam name="form.key" default="">
    <cfparam name="form.value" default="">
    <cfif structKeyExists(form, "submit")>
    <cfset ques6 = createObject("component", "ques6")>
    <cfset local.result = ques6.getIdentify(form.key, form.value)>
        <cfset myStructure = {}>
        <cfset myStructure[form.key] = form.value>
        <cfdump var="#myStructure#">
    </cfif>
</body>
</html>


<!---<cfapplication name="myData" sessionmanagement="true">
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Entering Values</title>
</head>
<body>
    <h2>Entering key and value</h2>
    <form action="ques6.cfm" method="post">
        <label for="key">Enter any key:</label>
        <input type="text" name="key" required><br>
        <label for="value">Enter any value:</label>
        <input type="text" name="value" required><br>
        <input type="submit" name="submit" value="Submit"><br>
    </form>
    <!-- Debugging -->
    <cfif structKeyExists(form, "submit")>
        <cfinvoke component="ques6" method="getIdentify">
            <cfinvokeargument name="key" value="#form.key#">
            <cfinvokeargument name="value" value="#form.value#">
        </cfinvoke>
        <cfdump var="#session.struct#">
    </cfif>
</body>
</html>--->



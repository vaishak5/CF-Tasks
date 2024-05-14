<cfapplication name="myData" sessionmanagement="true">
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Email Message</title>
</head>
<body>
    <h2>Show Message</h2>
    <form action="ques20.cfm" method="post">
        <label for="captcha">Enter Captcha</label>
        <input type="text" name="captcha" required>
        <label for="email">Enter Email</label>
        <input type="text" name="email" required><br>
        <input type="submit" value="Submit">
    </form>
    <cfif structKeyExists(form, "captcha") and structKeyExists(form, "email") and structKeyExists(form, "submit")>
        <cfinvoke  component="component" method="getIdentify">
            <cfinvokeargument  name="captcha"  value="#form.captcha#">
            <cfinvokeargument  name="email"  value="#form.email#">
        </cfinvoke>
    </cfif>
         <cfset session.captchaInput = RandRange(0000, 9999)>
        <cfimage action="captcha"  text="#session.captchaInput#">
    
</body>
</html>
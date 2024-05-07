<!DOCTYPE HTML>
<html lang="en">
	<head>
		<link rel="stylesheet" href="./Style/style.css">
		<title>Divisibility Checking</title>
	</head>
	<body>
		<h3>Enter a number</h3>
		<form action="ques3.cfm" method="post" class="content">
			<input type="text" name="ratings" min="1" max="5" required class="txt">
			<input type="submit" value="submit" class="btn">
		</form>
		<cfif isDefined("form.ratings")>
		    <cfset numbers = form.ratings>
		    <cfset ques3 = createObject("component", "ques3")>
		    <cfset divisibleNumbers = ques3.findDivisibleByThree(numbers)>
		    <cfif divisibleNumbers EQ "NONE">
			    <p class="msgTxt">Number not divisible by 3 </p>
			    <cfelse>
			    <p class="msgTxt">Number divisible by 3</p>
		    </cfif>
		</cfif>
	</body>
</html>
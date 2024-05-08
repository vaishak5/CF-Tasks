<!DOCTYPE HTML>
<html lang="en">
<head>
    <title>Calendar</title>
</head>
<body>
    <h1>Calendar</h1>
    <cfset ques4 = createObject("component", "ques4")>
    <cfset local.ratings = ques4.getRating()>
    <h3>Today's date: <cfoutput>#local.ratings.todaysDate#</cfoutput></h3>
    <h3>Current Month in numeric: <cfoutput>#local.ratings.currentMonthNum#</cfoutput></h3>
    <h3>Current Month in word: <cfoutput>#local.ratings.currentMonthWord#</cfoutput><h3>
    <h3>Last Friday Date: <cfoutput>#local.ratings.lastFriday#</cfoutput><h3>
    <h3>Last day of month: <cfoutput>#local.ratings.lastDay#</cfoutput><h3>
    <h3>Last 5 days date and day:<h3>
     <cfoutput>
        <cfloop array="#local.ratings.lastFiveDays#" index="day">
            <h2 class="lastDay" style="color: #day.color#;">#day.date#<h2>
        </cfloop>
    </cfoutput>
</body>
</html>

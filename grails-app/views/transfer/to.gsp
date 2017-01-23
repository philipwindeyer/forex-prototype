<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="actionable">
    <g:form action="pleasewait" method="POST">
        <h3>Where to?</h3>

        <p>Enter the recipients mobile number here ('+61123456789' style).</p>

        <p>We'll SMS them and ask for their bank details. Then you can double check</p>

        <div class="form-group">
            <input type="number" class="form-control" id="recipient" placeholder="+###########">
        </div>

        <button type="submit" class="btn btn-default">Next</button>
    </g:form>
</div>
</body>
</html>

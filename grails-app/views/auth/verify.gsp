<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="actionable">
    <h1>We emailed you...</h1>

    <p>We ask Facebook for your email address so we can email you a one time PIN. That way, you are the only person who can see this PIN. Please check your email</p>

    <g:form action="complete" method="POST">
        <div class="form-group">
            <label for="pin">Email address</label>
            <input type="password" class="form-control" id="pin" placeholder="PIN from email">
        </div>
        <button type="submit" class="btn btn-default">Complete</button>
    </g:form>
    
    <div class="form-group">
        <a href="/" class="btn btn-default">Home</a>
    </div>
</div>
</body>
</html>

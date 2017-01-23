<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="actionable">
    <g:form action="amount" method="POST">
        <div class="form-group">
            <h3>From</h3>
            <g:select name="from" from="${currencies}" optionKey="id"
                      value="${currencies.find { it.code == 'AUD' }?.id}"/>
        </div>
        <br/>

        <div class="form-group">
            <h3>To</h3>
            <g:select name="to" from="${currencies}" optionKey="id"
                      value="${currencies.find { it.code == 'JPY' }?.id}"/>
        </div>
        <button type="submit" class="btn btn-default">Next</button>
    </g:form>
</div>

<div id="reg-popup" class="white-popup mfp-hide">
    <div class="actionable">
        <h1>You're in!</h1>

        <p>Let's get crackin'</p>

        <a href="#" class="btn btn-default" id="btn-reg-close">Start!</a>
    </div>
</div>
<span class="hidden">
    <a href="#reg-popup" class="btn-reg">&nbsp;</a>
</span>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div id="pleasewait-popup" class="white-popup mfp-hide">
    <div class="actionable">
        <h1>Please wait</h1>

        <p>We're waiting for the recipient to respond</p>

        <div class="fb-wrapper">
            <img src="/static/img/wait.gif">
        </div>
    </div>
</div>
<span class="hidden">
    <a href="#pleasewait-popup" class="btn-wait">&nbsp;</a>
    <g:link controller="transfer" action="accountconfirm" class="btn-redirect">&nbsp;</g:link>
</span>
</body>
</html>

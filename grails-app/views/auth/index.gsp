<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="actionable">
    <h1>Who are you?</h1>

    <p>Log in with Facebook</p>

    <a href="#fb-popup" class="ico-lg btn-fb"><i class="fa fa-facebook-official"></i></a>

    <div class="form-group">
        <a href="/" class="btn btn-default">Home</a>
    </div>
</div>

<div id="fb-popup" class="white-popup mfp-hide">
    <div class="fb-wrapper">
        <g:link controller="auth" action="login">
            <img src="/static/img/oauth.png">
        </g:link>
    </div>
</div>
</body>
</html>

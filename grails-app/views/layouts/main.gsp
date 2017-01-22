<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="translucent">
    <link rel="apple-touch-icon" href="/static/img/favicon.png">
    <link rel="apple-touch-startup-image" href="/static/img/launch.png">

    <title>
        <g:layoutTitle default="Dispatch"/>
    </title>

    <link href="/static/css/style.css" rel="stylesheet">
    <link rel="icon" href="/static/img/favicon.ico" type="image/x-ico"/>
    <g:layoutHead/>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
            <div class="btn-assist">
                <a id="btn-faq" href="#faq" class="btn-overlay">
                    <i class="fa fa-question-circle-o"></i>
                </a>
            </div>

            <g:layoutBody/>
        </div>
    </div>
</div>

<g:render template="/elements/overlay" model="[elementId: 'faq', templatePath: '/elements/info/faq']"/>
<g:render template="/elements/overlay" model="[elementId: 'what', templatePath: '/elements/info/what']"/>
<g:render template="/elements/overlay" model="[elementId: 'how', templatePath: '/elements/info/how']"/>
<g:render template="/elements/overlay" model="[elementId: 'help', templatePath: '/elements/info/help']"/>

<g:render template="/elements/footer"/>

<script type="text/javascript" src="/static/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="/static/js/jquery.magnific-popup.min.js"></script>
<script type="text/javascript" src="/static/js/app.js"></script>

</body>
</html>

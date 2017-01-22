<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <meta name="layout" content="main">
</head>

<body>
<div class="actionable">

    <h1>Something bad happened</h1>

    <h2>😷</h2>%{--UTF-32 Emoji here--}%
    <p>We're not quite sure what, but we're looking into it</p>

    <g:if env="development">
        <g:if test="${Throwable.isInstance(exception)}">
            <g:renderException exception="${exception}"/>
        </g:if>
        <g:elseif test="${request.getAttribute('javax.servlet.error.exception')}">
            <g:renderException exception="${request.getAttribute('javax.servlet.error.exception')}"/>
        </g:elseif>
        <g:else>
            <ul class="errors">
                <li>An error has occurred</li>
                <li>Exception: ${exception}</li>
                <li>Message: ${message}</li>
                <li>Path: ${path}</li>
            </ul>
        </g:else>
    </g:if>

    <div class="form-group">
        <a href="#" class="btn btn-danger">Message us</a>
    </div>

    <div class="form-group">
        <a href="/" class="btn btn-default">Home</a>
    </div>
</div>
</body>
</html>

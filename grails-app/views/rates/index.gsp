<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="actionable">
    <h1>Exchange Rates</h1>

    <p>Base Currency: ${base}</p>

    <p>As on: ${date}</p>

    <pre>Note: These rates include the standard "Dispatch" markup of ${session.configuration.markup * 100}%</pre>

    <table class="table table-bordered table-hover">
        <thead>
        <tr>
            <td>Country</td>
            <td>Currency</td>
            <td>Code</td>
            <td>Value</td>
        </tr>
        </thead>
        <tbody>
        <g:each in="${rates}">
            <tr>
                <td>${it.country}</td>
                <td>${it.name}</td>
                <td>${it.code}</td>
                <td>${it.value}</td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="form-group">
        <a href="/" class="btn btn-default">Home</a>
    </div>
</div>
</body>
</html>

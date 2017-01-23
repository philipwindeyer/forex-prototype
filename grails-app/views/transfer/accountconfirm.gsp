<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="actionable">
    <h1>The recipient sent us this</h1>

    <div class="form-group">
        <label for="name">Account Name</label>
        <input type="text" class="form-control" id="name" disabled="disabled" value="Walter White">
    </div>

    <div class="form-group">
        <label for="number">Account Number</label>
        <input type="number" class="form-control" id="number" disabled="disabled" value="029118290">
    </div>

    <div class="form-group">
        <label for="bsb">BSB</label>
        <input type="text" class="form-control" id="bsb" disabled="disabled" value="123-654">
    </div>

    <p>Does it look right?</p>

    <div class="btn-group btn-group-justified" role="group">
        <a href="/" class="btn btn-default">No</a>
        <g:link controller="transfer" action="confirm" class="btn btn-default">Yes</g:link>
    </div>
</div>
</body>
</html>

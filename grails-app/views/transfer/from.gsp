<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="actionable">
    <g:form action="to" method="POST">
        <h3>Where from?</h3>

        <div class="form-group">
            <label for="cardno">Card Number</label>
            <input type="number" class="form-control" id="cardno">
        </div>

        <div class="form-group">
            <label for="expiry">Expiry</label>
            <input type="number" class="form-control" id="expiry" placeholder="MMYY">
        </div>

        <div class="form-group">
            <label for="expiry">CVV2 (Number on back of card)</label>
            <input type="number" class="form-control" id="cvv" placeholder="CVV">
        </div>

        <button type="submit" class="btn btn-default">Next</button>
    </g:form>
</div>

</body>
</html>

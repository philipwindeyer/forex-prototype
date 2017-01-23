<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="actionable">
    <g:form action="from" method="POST">
        <div class="form-group">
            <h3>How much?</h3>
            <input type="number" class="form-control" id="amount">
        </div>

        <div class="form-group" role="group">
            <div class="btn-group btn-group-justified" role="group">
                <label class="btn btn-default">
                    <input type="radio" name="debitcurr" value="${from.id}"
                           data-rate="${from.value}" data-to-code="${to.code}" checked> ${from.code} (${from.name})
                </label>
                <label class="btn btn-default">
                    <input type="radio" name="debitcurr" value="${to.id}"
                           data-rate="${to.value}" data-to-code="${from.code}"> ${to.code} (${to.name})
                </label>
            </div>
        </div>

        <div class="form-group box-info">
            Will equal <strong><span id="cost-estimate">0 ${to.code}</span></strong>
        </div>
        <input type="hidden" id="cost">

        <p>Note: This includes Dispatch's ${configuration.markupAsPercent} surcharge.</p>

        <button type="submit" class="btn btn-default">Next</button>
    </g:form>
</div>
</body>
</html>

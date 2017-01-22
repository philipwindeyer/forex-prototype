<div class="footer">
    <div class="menu">
        <a href="#what" class="btn-overlay">What is this?</a>
        &nbsp;|&nbsp;
        <a href="#how" class="btn-overlay">How does it work?</a>
        &nbsp;|&nbsp;
        <a href="#help" class="btn-overlay">Help me!</a>
        &nbsp;|&nbsp;
        <g:if test="${session.user && session.user.verified}">
            <g:link controller="auth" action="logout">Sign out</g:link>
        </g:if>
        <g:else>
            <g:link controller="auth" action="index">I've been here before</g:link>
        </g:else>
    </div>
    <i class="fa fa-chevron-right more"></i>
</div>

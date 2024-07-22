<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mailbox Configuration Details</title>
</head>
<body>
<h1>Mailbox Configuration Details</h1>

<div class="config-item">
    <span class="config-label">Language:</span> ${config.language}
</div>

<div class="config-item">
    <span class="config-label">Page Size:</span> ${config.pageSize} emails per page
</div>

<div class="config-item">
    <span class="config-label">Spam Filter:</span> ${config.spamFilter ? 'Enabled' : 'Disabled'}
</div>

<div class="config-item">
    <span class="config-label">Signature:</span>
    <pre>${config.signature}</pre>
</div>

</body>
</html>

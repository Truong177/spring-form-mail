<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mailbox Configuration</title>


</head>
<body>
<h1>Mailbox Configuration</h1>

<form action="${pageContext.request.contextPath}/mailbox/update" method="post">
    <label for="language">Language:</label>
    <select id="language" name="language">
        <option value="English" ${config.language == 'English' ? 'selected' : ''}>English</option>
        <option value="Vietnamese" ${config.language == 'Vietnamese' ? 'selected' : ''}>Vietnamese</option>
        <option value="Japanese" ${config.language == 'Japanese' ? 'selected' : ''}>Japanese</option>
        <option value="Chinese" ${config.language == 'Chinese' ? 'selected' : ''}>Chinese</option>
    </select>

    <label for="pageSize">Page Size:</label>
    <select id="pageSize" name="pageSize">
        <option value="5" ${config.pageSize == 5 ? 'selected' : ''}>5</option>
        <option value="10" ${config.pageSize == 10 ? 'selected' : ''}>10</option>
        <option value="15" ${config.pageSize == 15 ? 'selected' : ''}>15</option>
        <option value="25" ${config.pageSize == 25 ? 'selected' : ''}>25</option>
        <option value="50" ${config.pageSize == 50 ? 'selected' : ''}>50</option>
        <option value="100" ${config.pageSize == 100 ? 'selected' : ''}>100</option>
    </select>

    <label for="spamFilter">Spam Filter:</label>
    <input type="checkbox" id="spamFilter" name="spamFilter" ${config.spamFilter ? 'checked' : ''}> Enable spams filter

    <label for="signature">Signature:</label>
    <textarea id="signature" name="signature">${config.signature}</textarea>

    <input type="hidden" name="id" value="${config.id}">
    <input type="submit" value="Update">
    <input type="button" value="Cancel" class="button-cancel" onclick="window.location.href='${pageContext.request.contextPath}/mailbox'">
</form>
</body>
</html>

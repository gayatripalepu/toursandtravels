<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cookie Example</title>
</head>
<body>
    <%-- Check if the user has visited the site before --%>
    <% 
        boolean isFirstTimeVisit = true;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("visited")) {
                    isFirstTimeVisit = false;
                    break;
                }
            }
        }

        if (isFirstTimeVisit) {
            // Create a new cookie and set its value
            Cookie visitedCookie = new Cookie("visited", "true");
            visitedCookie.setMaxAge(365 * 24 * 60 * 60); // Cookie will last for one year (in seconds)
            response.addCookie(visitedCookie);
			            		
    %>
            <h1>Welcome to our website!</h1>
            <p>It seems like you are visiting our site for the first time. Enjoy your stay!</p>
    <% } else { %>
            <h1>Welcome back!</h1>
            <p>Thank you for visiting our website again.</p>
    <% } %>
</body>
</html>

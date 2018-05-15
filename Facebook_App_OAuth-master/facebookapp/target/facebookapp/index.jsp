<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        .button {
            background-color: #4286f4;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
    <title>What is your IP Address?</title>
    <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#goButton").click(makeRequest);
        });
        function makeRequest() {
// Define properties
            var AUTH_ENDPOINT = "https://www.facebook.com/dialog/oauth";
            var RESPONSE_TYPE = "code";
            var CLIENT_ID = "163849990809167";
            var REDIRECT_URI = "http://localhost:8080/facebookapp/callback";
            var SCOPE = "publish_actions";
// Build authorization request endpoint
            var requestEndpoint = AUTH_ENDPOINT + "?" +
                    "response_type=" + encodeURIComponent(RESPONSE_TYPE) + "&" +
                    "client_id=" + encodeURIComponent(CLIENT_ID) + "&" +
                    "redirect_uri=" + encodeURIComponent(REDIRECT_URI) + "&" +
                    "scope=" + encodeURIComponent(SCOPE);
// Send to authorization request endpoint
            window.location.href = requestEndpoint;
        }
    </script>
</head>
<body background="images/background.jpg">
<h1> <font color="green"> What is your IP Address? </font> </h1>

<img src="images/ip.jpg" height="270" width="480"/>
<br/>
<br/>

<button id="goButton" type="button" class="button">Let me continue with Facebook</button>
<div id="results"></div>
</body>
</html>

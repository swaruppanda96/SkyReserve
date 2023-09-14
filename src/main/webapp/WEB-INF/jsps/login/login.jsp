<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        -webkit-font-smoothing: antialiased;
    }

    body {
    	background: #5bdbd0; /* Change to white background */
    	font-family: 'Rubik', sans-serif;
    	display: flex;
    	justify-content: center;
    	align-items: center;
    	height: 100vh;
    	
    	background-image: url('image/login-bg1.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

    .login-form {
        background: rgba(255, 255, 255, 0.9);
        width: 500px;
        display: flex;
        flex-direction: column;
        border-radius: 4px;
        box-shadow: 0 2px 25px rgba(0, 0, 0, 0.2);
    }

    .login-form h1 {
        padding: 35px 35px 0 35px;
        font-weight: 300;
    }

    .login-form .content {
        padding: 35px;
        text-align: center;
    }

    .login-form .input-field {
        padding: 12px 5px;
    }

    .login-form .input-field input {
        font-size: 16px;
        display: block;
        font-family: 'Rubik', sans-serif;
        width: 100%;
        padding: 10px 1px;
        border: 0;
        border-bottom: 1px solid #747474;
        outline: none;
        transition: all .2s;
    }

    .login-form .input-field input::-webkit-input-placeholder {
        text-transform: uppercase;
    }

    .login-form .input-field input::-moz-placeholder {
        text-transform: uppercase;
    }

    .login-form .input-field input:-ms-input-placeholder {
        text-transform: uppercase;
    }

    .login-form .input-field input::-ms-input-placeholder {
        text-transform: uppercase;
    }

    .login-form .input-field input::placeholder {
        text-transform: uppercase;
    }

    .login-form .input-field input:focus {
        border-color: #222;
    }

    .login-form a.link {
        text-decoration: none;
        color: #747474;
        letter-spacing: 0.2px;
        text-transform: uppercase;
        display: inline-block;
        margin-top: 20px;
    }

    .login-form .action {
        display: flex;
        flex-direction: row;
    }

    .login-form .action button {
        width: 100%;
        border: none;
        padding: 18px;
        font-family: 'Rubik', sans-serif;
        cursor: pointer;
        text-transform: uppercase;
        background: #29cb29;;
        color: black;
        border-bottom-left-radius: 4px;
        border-bottom-right-radius: 0;
        letter-spacing: 0.2px;
        outline: 0;
        transition: all .3s;
    }

    .login-form .action button:hover {
        background: #d8d8d8;
    }

    .login-form .action button:nth-child(2) {
        background: #f23;
        color: #fff;
        border-bottom-left-radius: 0;
        border-bottom-right-radius: 4px;
    }

    .login-form .action button:nth-child(2):hover {
        background: #3c4d6d;
    }
</style>
</head>
<body>
    <div class="login-form">
    <h1>Login Here</h1>
    <form action="verifyLogin" method="post" class="content">
        <c:if test="${not empty error}">
            <div class="error-message" style="color: red; font-size: 25px;">${error}</div>
        </c:if>
        <div class="input-field">
            Email Id <input type="text" name="emailId" />
        </div>
        <div class="input-field">
            Password <input type="password" name="password" />
        </div>
        <div class="action">
            <button type="submit">Login</button>
            <button type="button" onclick="window.location.href='index.html'">Cancel</button>
        </div>
    </form>
</div>
</body>
</html>

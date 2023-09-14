<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Flight</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        -webkit-font-smoothing: antialiased;
    }

    body {
        background:#501515;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        
        background-image: url('image/findFlights-bg.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

    .search-form {
        background: #fff;
        width: 400px;
        padding: 20px;
        border-radius: 4px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <div class="search-form">
        <h2>Find Flights</h2>
        <form action="findFlights" method="post">
            <div class="form-group">
                <label for="from">From:</label>
                <input type="text" id="from" name="from" placeholder="Enter departure location" />
            </div>
            <div class="form-group">
                <label for="to">To:</label>
                <input type="text" id="to" name="to" placeholder="Enter destination" />
            </div>
            <div class="form-group">
                <label for="departureDate">Departure Date:</label>
                <input type="text" id="departureDate" name="departureDate" placeholder="MM-DD-YYYY" />
            </div>
            <input type="submit" name="search" value="Search" />
        </form>
    </div>
</body>
</html>

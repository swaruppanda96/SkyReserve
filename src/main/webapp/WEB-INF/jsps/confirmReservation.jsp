<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        -webkit-font-smoothing: antialiased;
    }

    body {
        background: #f5f5f5;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        
        background-image: url('image/confirmReservation-bg.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

    .confirmation-message {
        background: #fff;
        width: 400px;
        padding: 20px;
        border-radius: 4px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
        text-align: center;
    }

    h2 {
        margin-bottom: 20px;
    }

    p {
        font-size: 18px;
    }

    .reservation-id {
        font-weight: bold;
        color: #007BFF;
        font-size: 24px;
    }

    .go-back-link {
        text-decoration: none;
        color: #007BFF;
        font-weight: bold;
        display: block;
        margin-top: 20px;
    }

    .go-back-link:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="confirmation-message">
        <h2>Confirmation</h2>
        <p>Your ticket is booked.</p>
        <p>Your Reservation ID is: <span class="reservation-id">${reservationId}</span></p>
        <p>Your ticket is saved in your System</p>
        <a href="index.html" class="go-back-link">Go Back to Home Page</a>
    </div>
</body>
</html>

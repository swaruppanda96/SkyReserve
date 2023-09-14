<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation Details</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        -webkit-font-smoothing: antialiased;
    }

    body {
        background:#826f6f;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 160vh;
        
        background-image: url('image/showReservation-bg.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

    .reservation-details {
        background:#b4b3b4c2;
   
        width: 400px;
        padding: 20px;
        border-radius: 4px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    label {
        font-weight: bold;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        margin-bottom: 10px;
        font-size: 16px;
    }

    input[type="hidden"] {
        display: none;
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
    <div class="reservation-details">
        <h2>Flight Details</h2>
        Flight Number: ${flight.flightNumber}</br>
        Operating Airlines: ${flight.operatingAirlines}</br>
        Departure City: ${flight.departureCity}</br>
        Arrival City: ${flight.arrivalCity}</br>
        Departure Date: ${flight.dateOfDeparture}</br>
        
        <h2>Enter Passenger Details</h2>
        <form action="confirmReservation" method="post">
            <label for="firstName">First Name:</label>
            <input type="text" name="firstName" required />

            <label for="middleName">Middle Name:</label>
            <input type="text" name="middleName" />

            <label for="lastName">Last Name:</label>
            <input type="text" name="lastName" required />

            <label for="email">Email:</label>
            <input type="text" name="email" required />

            <label for="phone">Phone:</label>
            <input type="text" name="phone" required />

            <input type="hidden" name="flightId" value="${flight.id}" />

            <h2>Enter Payment Details</h2>
            <label for="cardNumber">Card Number:</label>
            <input type="text" name="cardNumber" required />

            <label for="nameOnTheCard">Name on the Card:</label>
            <input type="text" name="nameOnTheCard" required />

            <label for="cvv">CVV:</label>
            <input type="text" name="cvv" required />

            <label for="expiryDate">Expiry Date:</label>
            <input type="text" name="expiryDate" required />

            <input type="submit" value="Complete Reservation" />
        </form>
    </div>
</body>
</html>

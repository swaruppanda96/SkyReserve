<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Flights</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        -webkit-font-smoothing: antialiased;
    }

    body {
        background:#aad;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        
        background-image: url('image/displayFlights-bg1.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

    .flight-results {
        background: #fff;
        width: 800px;
        padding: 20px;
        border-radius: 4px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    table, th, td {
        border: 1px solid #ccc;
    }

    th, td {
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #007BFF;
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    a {
        text-decoration: none;
        color: #007BFF;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="flight-results">
        <h2>Flight Search Results</h2>
        <table>
            <tr>
                <th>Airlines</th>
                <th>Departure City</th>
                <th>Arrival City</th>
                <th>Departure Time</th>
                <th>Select Flight</th>
            </tr>
            <c:forEach items="${findFlights}" var="flight">
                <tr>
                    <td>${flight.operatingAirlines}</td>
                    <td>${flight.departureCity}</td>
                    <td>${flight.arrivalCity}</td>
                    <td>${flight.estimatedDepartureTime}</td>
                    <td><a href="showCompleteReservation?flightId=${flight.id}">Select</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>

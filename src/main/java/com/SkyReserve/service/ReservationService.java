package com.SkyReserve.service;

import com.SkyReserve.dto.ReservationRequest;
import com.SkyReserve.entity.Reservation;

public interface ReservationService {
	Reservation bookFlight(ReservationRequest request);
}
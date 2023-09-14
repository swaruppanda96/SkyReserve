package com.SkyReserve.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SkyReserve.entity.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
package com.SkyReserve.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SkyReserve.entity.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}
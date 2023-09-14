package com.SkyReserve.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SkyReserve.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String emailId);


}
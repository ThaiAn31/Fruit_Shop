package com.web.fruitshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.web.fruitshop.entity.Role;

public interface RoleRepo extends JpaRepository<Role, String> {
	
}

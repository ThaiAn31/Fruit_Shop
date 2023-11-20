package com.web.fruitshop.implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.fruitshop.entity.Role;
import com.web.fruitshop.repository.RoleRepo;
import com.web.fruitshop.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
	@Autowired
	RoleRepo rdao;

	@Override
	public List<Role> findAll() {
		return rdao.findAll();
	}

}

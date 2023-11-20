package com.web.fruitshop.service;

import java.util.List;
import java.util.Optional;

import com.web.fruitshop.entity.Favorite;

public interface FavoriteService {
	
	void delete(Favorite entity);

	Optional<Favorite> findById(Long id);

	List<Favorite> findAll();

	<S extends Favorite> S save(S entity);
}

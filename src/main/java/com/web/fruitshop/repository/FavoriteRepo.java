package com.web.fruitshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.web.fruitshop.entity.Favorite;

@Repository
public interface FavoriteRepo extends JpaRepository<Favorite, Long> {


}

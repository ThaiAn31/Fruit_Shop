package com.web.fruitshop.service;

import java.util.List;
import org.springframework.stereotype.Service;

import com.web.fruitshop.entity.Statitics;
import com.web.fruitshop.model.StatisticalForMonthProjections;
import com.web.fruitshop.model.StatisticalForProductProjections;
import com.web.fruitshop.model.StatisticalForYearProjections;

@Service
public interface StatisticalService {

	Statitics SLOrder();

	List<StatisticalForProductProjections> statisticalForProduct();

	List<StatisticalForYearProjections> statisticalForYear();

	List<StatisticalForMonthProjections> statisticalForMonth();

}

package com.web.fruitshop.implement;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.fruitshop.entity.Statitics;
import com.web.fruitshop.model.StatisticalForMonthProjections;
import com.web.fruitshop.model.StatisticalForProductProjections;
import com.web.fruitshop.model.StatisticalForYearProjections;
import com.web.fruitshop.repository.StatiticRepo;
import com.web.fruitshop.service.StatisticalService;

@Service
public class StatisticalServiceImpl implements StatisticalService {

	@Autowired
	StatiticRepo sdao;

	@Override
	public Statitics SLOrder() {
		return sdao.SLOrder();
	}

	@Override
	public List<StatisticalForMonthProjections> statisticalForMonth() {
		return sdao.statisticalForMonth();
	}

	@Override
	public List<StatisticalForYearProjections> statisticalForYear() {
		return sdao.statisticalForYear();
	}

	@Override
	public List<StatisticalForProductProjections> statisticalForProduct() {
		return sdao.statisticalForProduct();
	}	
}

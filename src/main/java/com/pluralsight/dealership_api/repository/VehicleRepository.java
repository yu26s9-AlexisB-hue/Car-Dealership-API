package com.pluralsight.dealership_api.repository;

import com.pluralsight.dealership_api.model.Vehicle;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VehicleRepository extends JpaRepository<Vehicle, Integer> {

    List<Vehicle> findByPriceBetween(double minPrice, double maxPrice);
    List <Vehicle> findByMake(String make);
}

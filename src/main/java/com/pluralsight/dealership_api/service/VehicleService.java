package com.pluralsight.dealership_api.service;

import com.pluralsight.dealership_api.model.Vehicle;
import com.pluralsight.dealership_api.repository.VehicleRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class VehicleService {
    private final VehicleRepository vehicleRepository;

    public VehicleService(VehicleRepository vehicleRepository) {
        this.vehicleRepository = vehicleRepository;
    }

    public List<Vehicle> getAllVehicles(){
        return vehicleRepository.findAll();
    }

    public Optional<Vehicle> getVehicleByVin(int vin){
        return vehicleRepository.findById(vin);
    }

    public Vehicle createVehicle(Vehicle vehicle){
        return vehicleRepository.save(vehicle);
    }

    public Optional<Vehicle> updateVehicle(int vin, Vehicle updatedVehicle){
        return vehicleRepository.findById(vin).map(existing ->{
            existing.setYear(updatedVehicle.getYear());
            existing.setMake(updatedVehicle.getMake());
            existing.setModel(updatedVehicle.getModel());
            existing.setVehicleType(updatedVehicle.getVehicleType());
            existing.setColor(updatedVehicle.getColor());
            existing.setOdometer(updatedVehicle.getOdometer());
            existing.setPrice(updatedVehicle.getPrice());

            return vehicleRepository.save(existing);
        });
    }

    public boolean deleteVehicle(int vin){
        if (vehicleRepository.existsById(vin)){
            vehicleRepository.deleteById(vin);
            return true;
        }
        return false;
    }
}

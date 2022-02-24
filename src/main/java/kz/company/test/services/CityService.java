package kz.company.test.services;

import kz.company.test.entities.City;
import kz.company.test.repositories.CityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityService {

    public List<City> getCitiesByCountry(Long countryId){
        return cityRepository.getByCountryId(countryId);
    }

    @Autowired
    CityRepository cityRepository;
}

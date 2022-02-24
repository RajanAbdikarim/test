package kz.company.test.services;

import kz.company.test.entities.Country;
import kz.company.test.repositories.CountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryService {
    public List<Country> getAll(){
        return countryRepository.findAll();
    }

    @Autowired
    CountryRepository countryRepository;
}

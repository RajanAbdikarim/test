package kz.company.test.controllers;

import kz.company.test.services.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("cities")
public class CityController {
    @GetMapping
    public ResponseEntity<?> getByCountryId(@RequestParam Long countryId){
        return ResponseEntity.ok(cityService.getCitiesByCountry(countryId));
    }

    @Autowired
    CityService cityService;
}

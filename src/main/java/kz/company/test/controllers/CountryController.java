package kz.company.test.controllers;

import kz.company.test.services.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("countries")
public class CountryController {

    @GetMapping
    public ResponseEntity<?> getAll(){
        return ResponseEntity.ok(countryService.getAll());
    }

    @Autowired
    CountryService countryService;
}

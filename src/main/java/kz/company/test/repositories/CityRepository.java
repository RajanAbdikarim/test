package kz.company.test.repositories;

import kz.company.test.entities.City;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CityRepository extends JpaRepository<City, Long> {
    public List<City> getByCountryId(Long countryId);
}

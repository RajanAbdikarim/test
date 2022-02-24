package kz.company.test.services;

import kz.company.test.entities.Employee;
import kz.company.test.repositories.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {
    @Autowired
    EmployeeRepository employeeRepository;

    public List<Employee> getAll(){
        return employeeRepository.findAll();
    }

    public Employee save(Employee emp){
        return employeeRepository.save(emp);
    }

    public void delete(Employee emp){
        employeeRepository.delete(emp);
    }
}

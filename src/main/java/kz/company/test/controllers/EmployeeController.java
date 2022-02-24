package kz.company.test.controllers;

import kz.company.test.entities.Employee;
import kz.company.test.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequestMapping("employees")
public class EmployeeController {
    @Autowired
    EmployeeService employeeService;

    @GetMapping()
    public ResponseEntity<?> getAll(){
        return ResponseEntity.ok(employeeService.getAll());
    }

    @PostMapping
    public ResponseEntity<?> save(@RequestBody Employee emp){
        if(emp.getPhoneNumber().matches("[0-9]+")){
            return ResponseEntity.ok(employeeService.save(emp));
        }else{
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,"Номер телефона должен быть только цифры");
        }
    }

    @PutMapping
    public ResponseEntity<?> update(@RequestBody Employee emp){
        if(emp.getPhoneNumber().matches("[0-9]+")){
            return ResponseEntity.ok(employeeService.save(emp));
        }else{
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,"Номер телефона должен быть только цифры");
        }
    }

    @DeleteMapping
    public ResponseEntity<?> delete(@RequestBody Employee emp){
        employeeService.delete(emp);
        return ResponseEntity.ok("deleted");
    }
}

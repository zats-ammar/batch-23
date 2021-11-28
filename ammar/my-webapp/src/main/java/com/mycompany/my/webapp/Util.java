/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.my.webapp;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ammar
 */
public class Util {
    public static List<Person> getPersons() {
        // ArrayList vs Array
        // Array -> 1 issue that you have to specify a length
        
        // Array
        // Person[] persons = new Person[3];
        // persons[0] = new Person("123V", "John", "Smith");
        
        // ArrayList
        List<Person> persons = new ArrayList<>();
        persons.add(new Person("123V", "John", "Smith"));
        persons.add(new Person("456V", "Mohamed", "Ammar"));
        
        return persons;
    }
}

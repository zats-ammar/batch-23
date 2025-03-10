/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.my.webapp;

/**
 *
 * @author Ammar
 */
public class Person {
    public String nic;
    public String firstName;
    public String lastName;

    public Person() {
        this.nic = "";
        this.firstName = "";
        this.lastName = "";
    }
    
    public Person(String nic, String firstName, String lastName) {
        this.nic = nic;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String getFullName() {
        return this.firstName + " " + this.lastName;
    }
    
    
}

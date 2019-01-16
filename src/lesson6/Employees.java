package lesson6;

import java.awt.*;
import java.util.Date;

public class Employees {
    private String lastName;
    private String firstname;
    private String title;
    private String titleOfCourtesy;
    private Date birthDate;
    private Date hireDate;
    private String address;
    private String city;
    private String region;
    private int postalCode;
    private String country;
    private long homePhone;
    private String extension;
    private Image photo;
    private String notes;
    private String reportsTo;

    public Employees(String lastName, String firstname, String title, String titleOfCourtesy, Date birthDate,
                     Date hireDate, String address, String city, String region, int postalCode, String country,
                     long homePhone, String extension, Image photo, String notes, String reportsTo) {
        this.lastName = lastName;
        this.firstname = firstname;
        this.title = title;
        this.titleOfCourtesy = titleOfCourtesy;
        this.birthDate = birthDate;
        this.hireDate = hireDate;
        this.address = address;
        this.city = city;
        this.region = region;
        this.postalCode = postalCode;
        this.country = country;
        this.homePhone = homePhone;
        this.extension = extension;
        this.photo = photo;
        this.notes = notes;
        this.reportsTo = reportsTo;
    }
}

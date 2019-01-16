package lesson6;

public class Suppliers {
    private String companyName;
    private String contactName;
    private String adress;
    private String city;
    private String region;
    private int postalCode;
    private String country;
    private long phone;
    private long fax;
    private String homePage;

    public Suppliers(String companyName, String contactName, String adress, String city, String region, int postalCode,
                     String country, long phone, long fax, String homePage) {
        this.companyName = companyName;
        this.contactName = contactName;
        this.adress = adress;
        this.city = city;
        this.region = region;
        this.postalCode = postalCode;
        this.country = country;
        this.phone = phone;
        this.fax = fax;
        this.homePage = homePage;
    }
}

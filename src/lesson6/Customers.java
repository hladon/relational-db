package lesson6;

public class Customers {
    private String companyName;
    private String contactName;
    private String contactTitle;
    private String addres;
    private String city;
    private String region;
    private int postalCode;
    private String country;
    private long phone;
    private long fax;

    public Customers(String companyName, String contactName, String contactTitle, String addres, String city,
                     String region, int postalCode, String country, long phone, long fax) {
        this.companyName = companyName;
        this.contactName = contactName;
        this.contactTitle = contactTitle;
        this.addres = addres;
        this.city = city;
        this.region = region;
        this.postalCode = postalCode;
        this.country = country;
        this.phone = phone;
        this.fax = fax;
    }
}

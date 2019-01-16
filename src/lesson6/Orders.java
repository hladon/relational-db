package lesson6;

import java.util.Date;

public class Orders {
    private Customers customerID;
    private Employees employeeID;
    private Date orderDate;
    private Date requaredDate;
    private Date shippedDate;
    private Shippers shipVia;
    private double freight;
    private String shipName;
    private String shipAddress;
    private String shipCity;
    private String shipRegion;
    private long shipPostalCode;
    private String shipCountry;

    public Orders(Customers customerID, Employees employeeID, Date orderDate, Date requaredDate, Date shippedDate,
                  Shippers shipVia, double freight, String shipName, String shipAddress, String shipCity, String shipRegion, long shipPostalCode, String shipCountry) {
        this.customerID = customerID;
        this.employeeID = employeeID;
        this.orderDate = orderDate;
        this.requaredDate = requaredDate;
        this.shippedDate = shippedDate;
        this.shipVia = shipVia;
        this.freight = freight;
        this.shipName = shipName;
        this.shipAddress = shipAddress;
        this.shipCity = shipCity;
        this.shipRegion = shipRegion;
        this.shipPostalCode = shipPostalCode;
        this.shipCountry = shipCountry;
    }
}

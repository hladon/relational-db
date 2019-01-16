package lesson6;

public class Order {
    private Products productID;
    private double unitPrice;
    private int quantity;
    private int discount;

    public Order(Products productID, double unitPrice, int quantity, int discount) {
        this.productID = productID;
        this.unitPrice = unitPrice;
        this.quantity = quantity;
        this.discount = discount;
    }
}

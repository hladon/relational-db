package lesson6;

public class Products {
    private String productName;
    private Suppliers supplierId;
    private Categories categoryId;
    private int quantityPerUnit;
    private double unitPrice;
    private int unitsInStock;
    private int unitsOnOrder;
    private int reorderLevel;
    private boolean discontinued;

    public Products(String productName, Suppliers supplierId, Categories categoryId, int quantityPerUnit,
                    double unitPrice, int unitsInStock, int unitsOnOrder, int reorderLevel, boolean discontinued) {
        this.productName = productName;
        this.supplierId = supplierId;
        this.categoryId = categoryId;
        this.quantityPerUnit = quantityPerUnit;
        this.unitPrice = unitPrice;
        this.unitsInStock = unitsInStock;
        this.unitsOnOrder = unitsOnOrder;
        this.reorderLevel = reorderLevel;
        this.discontinued = discontinued;
    }
}

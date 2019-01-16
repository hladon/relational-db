package lesson61;

import java.util.Date;

public class ForumSubcategories {
    private ForumCategories idCategory;
    private String title;
    private String description;
    private Date date;
    private String ip;

    public ForumSubcategories(ForumCategories idCategory, String title, String description, Date date, String ip) {
        this.idCategory = idCategory;
        this.title = title;
        this.description = description;
        this.date = date;
        this.ip = ip;
    }
}

package lesson61;

import java.util.Date;

public class ForumCategories {
    private String title;
    private String descriptione;
    private Date date;
    private String ip;

    public ForumCategories(String title, String descriptione, Date date, String ip) {
        this.title = title;
        this.descriptione = descriptione;
        this.date = date;
        this.ip = ip;
    }
}

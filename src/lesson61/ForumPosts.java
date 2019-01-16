package lesson61;

import java.util.Date;

public class ForumPosts {
    private ForumSubcategories idSubcategory;
    private Users idUser;
    private ForumPollsOptions parentPost;
    private String title;
    private String content;
    private boolean isPoll;
    private Date date;
    private String ip;

    public ForumPosts(ForumSubcategories idSubcategory, Users idUser, ForumPollsOptions parentPost, String title,
                      String content, boolean isPoll, Date date, String ip) {
        this.idSubcategory = idSubcategory;
        this.idUser = idUser;
        this.parentPost = parentPost;
        this.title = title;
        this.content = content;
        this.isPoll = isPoll;
        this.date = date;
        this.ip = ip;
    }
}

package lesson61;

import java.util.Date;

public class ForumPollsOptions {
    private ForumPosts idPost;
    private String title;
    private Date date;

    public ForumPollsOptions(ForumPosts idPost, String title, Date date) {
        this.idPost = idPost;
        this.title = title;
        this.date = date;
    }
}

package lesson61;

import java.util.Date;

public class ForumPollsOptionsVotes {
    private ForumPollsOptions idPollOption;
    private Users idUser;
    private Date date;
    private String ip;

    public ForumPollsOptionsVotes(ForumPollsOptions idPollOption, Users idUser, Date date, String ip) {
        this.idPollOption = idPollOption;
        this.idUser = idUser;
        this.date = date;
        this.ip = ip;
    }
}

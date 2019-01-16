package lesson61;

import java.util.Date;

public class Users {
    private String nik;
    private String password;
    private String email;
    private Date date;
    private float karma;
    private String ip;

    public Users(String nik, String password, String email, Date date, float karma, String ip) {
        this.nik = nik;
        this.password = password;
        this.email = email;
        this.date = date;
        this.karma = karma;
        this.ip = ip;
    }
}

package personalblog.domain;

import java.util.Date;

/**
 * Created by yuxiao on 1/31/16.
 */
public class Blog {

    private int blog_id;
    private int blog_person_id;
    private String blog_tilte;
    private String blog_content;
    private Date blog_time;

    public int getBlog_id() {
        return blog_id;
    }

    public void setBlog_id(int blog_id) {
        this.blog_id = blog_id;
    }

    public int getBlog_person_id() {
        return blog_person_id;
    }

    public void setBlog_person_id(int blog_person_id) {
        this.blog_person_id = blog_person_id;
    }

    public String getBlog_tilte() {
        return blog_tilte;
    }

    public void setBlog_tilte(String blog_tilte) {
        this.blog_tilte = blog_tilte;
    }

    public String getBlog_content() {
        return blog_content;
    }

    public void setBlog_content(String blog_content) {
        this.blog_content = blog_content;
    }

    public Date getBlog_time() {
        return blog_time;
    }

    public void setBlog_time(Date blog_time) {
        this.blog_time = blog_time;
    }
}

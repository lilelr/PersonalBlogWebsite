package personalblog.domain;

import personalblog.abstractclass.Pagefooter;
import personalblog.abstractclass.Pageheader;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by yuxiao on 1/31/16.
 */
@Entity
@Table(name = "blog")
public class Blog {
    @Id @Column(name="blog_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int blog_id;
    private String blog_title;
    private String blog_content;
    @Temporal(TemporalType.DATE)
    private Date blog_time;
    private String blog_tag;

    @Transient
    private Pageheader pageheader;
    @Transient
    private Pagefooter pagefooter;

    @ManyToOne(targetEntity = BlogCatergory.class)
    @JoinColumn(name = "blog_catergoryid",referencedColumnName = "blog_catergory_id")
    private BlogCatergory blogCatergory;


    public int getBlog_id() {
        return blog_id;
    }

    public void setBlog_id(int blog_id) {
        this.blog_id = blog_id;
    }


    public String getBlog_title() {
        return blog_title;
    }

    public void setBlog_title(String blog_title) {
        this.blog_title = blog_title;
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

    public String getBlog_tag() {
        return blog_tag;
    }

    public void setBlog_tag(String blog_tag) {
        this.blog_tag = blog_tag;
    }

    public Pageheader getPageheader() {
        return pageheader;
    }

    public void setPageheader(Pageheader pageheader) {
        this.pageheader = pageheader;
    }

    public Pagefooter getPagefooter() {
        return pagefooter;
    }

    public void setPagefooter(Pagefooter pagefooter) {
        this.pagefooter = pagefooter;
    }

    public BlogCatergory getBlogCatergory() {
        return blogCatergory;
    }

    public void setBlogCatergory(BlogCatergory blogCatergory) {
        this.blogCatergory = blogCatergory;
    }
}

package personalblog.domain;

import javax.persistence.*;

/**
 * Created by yuxiao on 1/19/16.
 */
@Entity
@Table(name = "message")
public class Message {

    @Id
    @Column(name = "msg_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer msg_id;
    private String msg_content;
    private String msg_title;
    private String msg_ip;
    private String msg_datetime;

    @ManyToOne(targetEntity = Blog.class)
    @JoinColumn(name = "msg_blogId",referencedColumnName = "blog_id"
            , nullable = false)
    private Blog blog;

    @ManyToOne(targetEntity = Visitor.class)
    @JoinColumn(name = "msg_visitorId",referencedColumnName = "visitor_id"
                , nullable = false)
    private Visitor visitor;

    public Integer getMsg_id() {
        return msg_id;
    }

    public void setMsg_id(Integer msg_id) {
        this.msg_id = msg_id;
    }

    public String getMsg_content() {
        return msg_content;
    }

    public void setMsg_content(String msg_content) {
        this.msg_content = msg_content;
    }

    public String getMsg_title() {
        return msg_title;
    }

    public void setMsg_title(String msg_title) {
        this.msg_title = msg_title;
    }

    public String getMsg_ip() {
        return msg_ip;
    }

    public void setMsg_ip(String msg_ip) {
        this.msg_ip = msg_ip;
    }

    public String getMsg_datetime() {
        return msg_datetime;
    }

    public void setMsg_datetime(String msg_datetime) {
        this.msg_datetime = msg_datetime;
    }

    public Visitor getVisitor() {
        return visitor;
    }

    public void setVisitor(Visitor visitor) {
        this.visitor = visitor;
    }

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }
}

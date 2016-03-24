package personalblog.domain;

import javax.persistence.*;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

/**
 * Created by yuxiao on 1/19/16.
 */
@Entity
@Table(name = "visitor")
public class Visitor {
    @Id @Column(name = "visitor_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer visitor_id;
    private String visitor_name;
    private String visitor_Email;

    @OneToMany(targetEntity = Message.class,fetch = FetchType.EAGER,cascade = CascadeType.ALL,mappedBy = "visitor")
    private List<Message> messages=new LinkedList<Message>();

    public Integer getVisitor_id() {
        return visitor_id;
    }

    public void setVisitor_id(Integer visitor_id) {
        this.visitor_id = visitor_id;
    }

    public String getVisitor_name() {
        return visitor_name;
    }

    public void setVisitor_name(String visitor_name) {
        this.visitor_name = visitor_name;
    }

    public String getVisitor_Email() {
        return visitor_Email;
    }

    public void setVisitor_Email(String visitor_Email) {
        this.visitor_Email = visitor_Email;
    }

    public List<Message> getMessages() {

        return messages;
    }

    public void setMessages(List<Message> messages) {
        this.messages = messages;
    }
}

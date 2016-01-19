package personalblog.domain;

import javax.persistence.*;
import java.util.HashSet;
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
    @OneToMany(targetEntity = Message.class,mappedBy = "visitor")
    private Set<Message> messages=new HashSet<Message>();

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

    public Set<Message> getMessages() {
        return messages;
    }

    public void setMessages(Set<Message> messages) {
        this.messages = messages;
    }
}

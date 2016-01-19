package personalblog.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by yuxiao on 1/19/16.
 */
@Entity
@Table(name = "honor")
public class Honor {

    @Id
    @Column(name = "honor_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer honor_id;
    private String honor_content;
    @Temporal(TemporalType.DATE)
    private Date honor_date;
    @ManyToOne(targetEntity = Person.class)
    @JoinColumn(name = "honor_person_id",referencedColumnName = "person_id"
            , nullable = false)
    private Person person;

    public Integer getHonor_id() {
        return honor_id;
    }

    public void setHonor_id(Integer honor_id) {
        this.honor_id = honor_id;
    }

    public String getHonor_content() {
        return honor_content;
    }

    public void setHonor_content(String honor_content) {
        this.honor_content = honor_content;
    }

    public Date getHonor_date() {
        return honor_date;
    }

    public void setHonor_date(Date honor_date) {
        this.honor_date = honor_date;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }
}

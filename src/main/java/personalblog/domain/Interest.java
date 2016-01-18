package personalblog.domain;

import javax.persistence.*;

/**
 * Created by yuxiao on 1/18/16.
 */
@Entity
@Table(name = "interest")
public class Interest {
    @Id @Column(name = "interest_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer interest_id;
    private String interest_content;
    private String interest_name;

    public Integer getInterest_id() {
        return interest_id;
    }

    public void setInterest_id(Integer interest_id) {
        this.interest_id = interest_id;
    }

    public String getInterest_content() {
        return interest_content;
    }

    public void setInterest_content(String interest_content) {
        this.interest_content = interest_content;
    }

    public String getInterest_name() {
        return interest_name;
    }

    public void setInterest_name(String interest_name) {
        this.interest_name = interest_name;
    }
}

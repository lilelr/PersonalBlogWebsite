package personalblog.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by yuxiao on 1/19/16.
 * PO类，映射教育表
 */
@Entity
@Table(name = "edu")
public class Education {
    @Id
    @Column(name = "edu_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer edu_id;
    private String edu_school;
    private String edu_major;
    private String edu_content;
    @Temporal(TemporalType.DATE)
    private Date edu_time_begin;
    @Temporal(TemporalType.DATE)
    private Date edu_time_end;

    public Integer getEdu_id() {
        return edu_id;
    }

    public void setEdu_id(Integer edu_id) {
        this.edu_id = edu_id;
    }

    public String getEdu_school() {
        return edu_school;
    }

    public void setEdu_school(String edu_school) {
        this.edu_school = edu_school;
    }

    public String getEdu_major() {
        return edu_major;
    }

    public void setEdu_major(String edu_major) {
        this.edu_major = edu_major;
    }

    public String getEdu_content() {
        return edu_content;
    }

    public void setEdu_content(String edu_content) {
        this.edu_content = edu_content;
    }

    public Date getEdu_time_begin() {
        return edu_time_begin;
    }

    public void setEdu_time_begin(Date edu_time_begin) {
        this.edu_time_begin = edu_time_begin;
    }

    public Date getEdu_time_end() {
        return edu_time_end;
    }

    public void setEdu_time_end(Date edu_time_end) {
        this.edu_time_end = edu_time_end;
    }
}

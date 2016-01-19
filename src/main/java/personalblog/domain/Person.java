package personalblog.domain;


import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by yuxiao on 1/17/16.
 */
@Entity
@Table(name = "person")
public class Person {
    @Id @Column(name = "person_id")
    private Integer id;
    private String person_real_name;
    private String person_user_name;
    private String person_position;
    private String person_address;
    private String person_city;
    private String person_phone;
    private String person_Email;
    private String person_qq;
    private String person_wechat;
    private String person_website;
    private String person_portrayal_path;
    private String person_resume_path;
    private String person_company;
    private String person_enlighten;

    @OneToMany(targetEntity = Interest.class)
    @JoinColumn(name="interest_person_id", referencedColumnName = "person_id")
    private Set<Interest> interests=new HashSet<Interest>();

    @OneToMany(targetEntity = Education.class)
    @JoinColumn(name="edu_person_id", referencedColumnName = "person_id")
    private Set<Education> educations=new HashSet<Education>();

    @OneToMany(targetEntity = Visitor.class)
    @JoinColumn(name = "visitor_person_id",referencedColumnName = "person_id")
    private  Set<Visitor> visitors=new HashSet<Visitor>();

    public Set<Visitor> getVisitors() {
        return visitors;
    }

    public void setVisitors(Set<Visitor> visitors) {
        this.visitors = visitors;
    }

    public Set<Education> getEducations() {
        return educations;
    }

    public void setEducations(Set<Education> educations) {
        this.educations = educations;
    }

    public Set<Interest> getInterests() {
        return interests;
    }

    public void setInterests(Set<Interest> interests) {
        this.interests = interests;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPerson_real_name() {
        return person_real_name;
    }

    public void setPerson_real_name(String person_real_name) {
        this.person_real_name = person_real_name;
    }

    public String getPerson_user_name() {
        return person_user_name;
    }

    public void setPerson_user_name(String person_user_name) {
        this.person_user_name = person_user_name;
    }

    public String getPerson_position() {
        return person_position;
    }

    public void setPerson_position(String person_position) {
        this.person_position = person_position;
    }

    public String getPerson_address() {
        return person_address;
    }

    public void setPerson_address(String person_address) {
        this.person_address = person_address;
    }

    public String getPerson_city() {
        return person_city;
    }

    public void setPerson_city(String person_city) {
        this.person_city = person_city;
    }

    public String getPerson_phone() {
        return person_phone;
    }

    public void setPerson_phone(String person_phone) {
        this.person_phone = person_phone;
    }

    public String getPerson_Email() {
        return person_Email;
    }

    public void setPerson_Email(String person_Email) {
        this.person_Email = person_Email;
    }

    public String getPerson_qq() {
        return person_qq;
    }

    public void setPerson_qq(String person_qq) {
        this.person_qq = person_qq;
    }

    public String getPerson_wechat() {
        return person_wechat;
    }

    public void setPerson_wechat(String person_wechat) {
        this.person_wechat = person_wechat;
    }

    public String getPerson_website() {
        return person_website;
    }

    public void setPerson_website(String person_website) {
        this.person_website = person_website;
    }

    public String getPerson_portrayal_path() {
        return person_portrayal_path;
    }

    public void setPerson_portrayal_path(String person_portrayal_path) {
        this.person_portrayal_path = person_portrayal_path;
    }

    public String getPerson_resume_path() {
        return person_resume_path;
    }

    public void setPerson_resume_path(String person_resume_path) {
        this.person_resume_path = person_resume_path;
    }

    public String getPerson_company() {
        return person_company;
    }

    public void setPerson_company(String person_company) {
        this.person_company = person_company;
    }

    public String getPerson_enlighten() {
        return person_enlighten;
    }

    public void setPerson_enlighten(String person_enlighten) {
        this.person_enlighten = person_enlighten;
    }
}

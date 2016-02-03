package personalblog.domain;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;


/**
 * Created by yuxiao on 2/3/16.
 */
@Entity
@Table(name = "blogcatergory")
public class BlogCatergory {
    @Id @Column(name = "blog_catergory_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int blog_catergory_id;
    private String blog_catergory_title;
    @ManyToOne(targetEntity = Person.class)
    @JoinColumn(name="blog_person_id",referencedColumnName = "person_id",nullable = false)
    private Person person;

    @OneToMany(targetEntity = Blog.class,mappedBy ="blogCatergory")
    private Set<Blog> blogs=new HashSet<Blog>();

    public int getBlog_catergory_id() {
        return blog_catergory_id;
    }

    public void setBlog_catergory_id(int blog_catergory_id) {
        this.blog_catergory_id = blog_catergory_id;
    }

    public String getBlog_catergory_title() {
        return blog_catergory_title;
    }

    public void setBlog_catergory_title(String blog_catergory_title) {
        this.blog_catergory_title = blog_catergory_title;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }
}

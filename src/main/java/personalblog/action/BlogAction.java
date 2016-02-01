package personalblog.action;

import com.opensymphony.xwork2.ActionSupport;
import personalblog.domain.Blog;

/**
 * Created by yuxiao on 1/31/16.
 */
public class BlogAction extends ActionSupport{

    private String content;

    private Blog blog;

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String listpages() throws Exception{
        System.out.println(getContent());
        Blog tblog = new Blog();
        tblog.setBlog_content(getContent());
        this.setBlog(tblog);
        return SUCCESS;
    }

}

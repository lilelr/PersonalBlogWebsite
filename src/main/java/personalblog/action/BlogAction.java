package personalblog.action;

import com.opensymphony.xwork2.ActionSupport;
import personalblog.domain.Blog;

/**
 * Created by yuxiao on 1/31/16.
 */
public class BlogAction extends ActionSupport{

    private String editor1;

    private Blog blog;

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }

    public String getEditor1() {
        return editor1;
    }

    public void setEditor1(String editor1) {
        this.editor1 = editor1;
    }

    public String listpages() throws Exception{
        System.out.println(getEditor1());
        Blog tblog = new Blog();
        tblog.setBlog_content(getEditor1());
        this.setBlog(tblog);
        return SUCCESS;
    }

}

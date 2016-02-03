package personalblog.action;

import com.opensymphony.xwork2.ActionSupport;
import personalblog.domain.Blog;
import personalblog.domain.BlogCatergory;
import personalblog.factory.LiteratureBlogFactory;
import personalblog.service.BlogCatergoryService;
import personalblog.service.BlogService;

import java.util.Date;
import java.util.List;

/**
 * Created by yuxiao on 1/31/16.
 */
public class BlogAction extends ActionSupport{
    private BlogService blogService;
    private BlogCatergoryService blogCatergoryService;
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

    public void setBlogService(BlogService blogService) {
        this.blogService = blogService;
    }

    public void setBlogCatergoryService(BlogCatergoryService blogCatergoryService) {
        this.blogCatergoryService = blogCatergoryService;
    }

    public String listpages() throws Exception{
        System.out.println(getContent());
        LiteratureBlogFactory literatureBlogFactory=new LiteratureBlogFactory();
        Blog tblog=new Blog();
        tblog.setBlog_tag("杂感");
        tblog.setBlog_content(getContent());
        Blog endBlog = literatureBlogFactory.createBlog(tblog);
        endBlog.setBlog_tilte("天人合一");
        endBlog.setBlog_time(new Date());

        List<BlogCatergory> blogCatergories=blogCatergoryService.getblogcatergories();
        endBlog.setBlogCatergory(blogCatergories.get(0));
        blogService.save(endBlog);
//        this.setBlog(tblog);

        return SUCCESS;
    }

}

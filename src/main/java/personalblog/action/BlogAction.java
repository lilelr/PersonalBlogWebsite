package personalblog.action;

import com.opensymphony.xwork2.ActionContext;
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
public class BlogAction extends ActionSupport {
    private BlogService blogService;
    private BlogCatergoryService blogCatergoryService;
    private String content;
    private String title;
    private String tag;
    private String extract;

    private Blog blog;
    private int blog_id;

    private List<Blog> blogList;

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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getExtract() {
        return extract;
    }

    public void setExtract(String extract) {
        this.extract = extract;
    }

    public void setBlogService(BlogService blogService) {
        this.blogService = blogService;
    }

    public void setBlogCatergoryService(BlogCatergoryService blogCatergoryService) {
        this.blogCatergoryService = blogCatergoryService;
    }


    public List<Blog> getBlogList() {
        return blogList;
    }

    public void setBlogList(List<Blog> blogList) {
        this.blogList = blogList;
    }

    public int getBlog_id() {
        return blog_id;
    }

    public void setBlog_id(int blog_id) {
        this.blog_id = blog_id;
    }

    public String saveblog() throws Exception {
//        System.out.println(getContent());
//        LiteratureBlogFactory literatureBlogFactory=new LiteratureBlogFactory();
        Blog tblog = new Blog();
        tblog.setBlog_tag(getTag());
        tblog.setBlog_content(getContent());
        tblog.setExtract(getExtract());
//        System.out.println(getExtract());
//        Blog endBlog = literatureBlogFactory.createBlog(tblog);
//        endBlog.setBlog_title(getTitle());
//        endBlog.setBlog_time(new Date());
//
//        List<BlogCatergory> blogCatergories=blogCatergoryService.getblogcatergories();
//        endBlog.setBlogCatergory(blogCatergories.get(0));
        tblog.setBlog_title(getTitle());
        tblog.setBlog_time(new Date());
        Integer blog_id = blogService.save(tblog);
        System.out.println("主键是" + blog_id);
        Blog getBlog = blogService.getById(blog_id);
        this.setBlog(getBlog);
//        this.setBlog(tblog);

        return SUCCESS;
    }

    public String blogindex() throws Exception {

        this.setBlogList(this.blogService.getAllBlogs());
        for (Blog blog : blogList) {
            System.out.println(blog.getBlog_id());
        }
        return "success";
    }

    public String showblog() throws Exception {
        Blog getBlog = blogService.getById(blog_id);
        this.setBlog(getBlog);
        return "success";
    }

    public String deleteblog() throws Exception {
        blogService.deleteBlogById(blog_id);
        return "success";
    }

    public String showdeleteblog() {
        ActionContext ctx = ActionContext.getContext();
        String admin = (String) ctx.getSession().get("admin");
        if (admin == null || admin.isEmpty()) {
            return ERROR;
        }

        this.setBlogList(this.blogService.getAllBlogs());
        for (Blog blog : blogList) {
            System.out.println(blog.getBlog_id());
        }
        return "success";
    }
}

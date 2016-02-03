package personalblog.factory;

import personalblog.abstractclass.Pagefooter;
import personalblog.abstractclass.Pageheader;
import personalblog.domain.Blog;
import personalblog.domain.TechPageFooter;
import personalblog.domain.TechPageHeader;

/**
 * Created by yuxiao on 2/2/16.
 */
public class TechBlogFactory implements BlogFactory{
    public Pageheader createPageHeader() {
        TechPageHeader techPageHeader=new TechPageHeader();
        techPageHeader.setHeaderInfo("技术");
        return techPageHeader;
    }

    public Pagefooter createPageFooter() {
        TechPageFooter techPageFooter= new TechPageFooter();
        techPageFooter.setFooterinfo("寻找规律，驾驭规律");
        return techPageFooter;
    }

    public Blog createBlog(Blog blog) {
        blog.setPageheader(createPageHeader());
        blog.setPagefooter(createPageFooter());
        return blog;
    }

//    public Blog createBlog() {
//        Blog blog=new Blog();
//        blog.setPageheader(createPageHeader());
//        blog.setPagefooter(createPageFooter());
//        return blog;
//    }


}

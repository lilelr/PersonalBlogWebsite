package personalblog.factory;

import personalblog.abstractclass.Pagefooter;
import personalblog.abstractclass.Pageheader;
import personalblog.domain.Blog;
import personalblog.domain.LiteraturePageFooter;
import personalblog.domain.LiteraturePageHeader;

/**
 * Created by yuxiao on 2/2/16.
 */
public class LiteratureBlogFactory implements BlogFactory {
    public Pageheader createPageHeader() {
        LiteraturePageHeader literaturePageHeader= new LiteraturePageHeader();
        literaturePageHeader.setHeaderInfo("生活/文艺");
        return literaturePageHeader;
    }

    public Pagefooter createPageFooter() {
        LiteraturePageFooter literaturePageFooter= new LiteraturePageFooter();
        literaturePageFooter.setFooterinfo("追忆似水年华");
        return literaturePageFooter;
    }

    public Blog createBlog(Blog blog) {
//        blog.setPagefooter(createPageFooter());
//        blog.setPageheader(createPageHeader());
        return blog;

    }

//    public Blog createBlog(){
//        Blog blog=new Blog();
//        blog.setPagefooter(createPageFooter());
//        blog.setPageheader(createPageHeader());
//        return blog;
//    }
}

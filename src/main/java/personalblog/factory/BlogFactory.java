package personalblog.factory;

import personalblog.abstractclass.Pagefooter;
import personalblog.abstractclass.Pageheader;
import personalblog.domain.Blog;

/**
 * Created by yuxiao on 2/2/16.
 * 博客创建抽象工厂接口
 */
public interface BlogFactory {
     Pageheader createPageHeader();
     Pagefooter createPageFooter();
     Blog  createBlog(Blog blog);
}

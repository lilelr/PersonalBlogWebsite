package personalblog.service.impl;

import personalblog.dao.BlogDao;
import personalblog.domain.Blog;
import personalblog.service.BlogService;

/**
 * Created by yuxiao on 2/3/16.
 */
public class BlogServiceImp implements BlogService{

    private BlogDao blogDao;

    public void setBlogDao(BlogDao blogDao) {
        this.blogDao = blogDao;
    }

    public void save(Blog blog) {
        blogDao.save(blog);
    }
}

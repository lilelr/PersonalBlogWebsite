package personalblog.service.impl;

import personalblog.dao.BlogDao;
import personalblog.domain.Blog;
import personalblog.service.BlogService;

import java.io.Serializable;

/**
 * Created by yuxiao on 2/3/16.
 */
public class BlogServiceImp implements BlogService{

    private BlogDao blogDao;

    public void setBlogDao(BlogDao blogDao) {
        this.blogDao = blogDao;
    }

    public Integer save(Blog blog) {
        return (Integer)blogDao.save(blog);
    }

    public Blog getById(Integer id) {
        return blogDao.get(Blog.class,id);
    }
}

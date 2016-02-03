package personalblog.service.impl;

import personalblog.dao.BlogCatergoryDao;
import personalblog.domain.BlogCatergory;
import personalblog.service.BlogCatergoryService;

import java.util.List;

/**
 * Created by yuxiao on 2/3/16.
 */
public class BlogCatergoryServiceImp implements BlogCatergoryService{

    private BlogCatergoryDao blogCatergoryDao;

    public void setBlogCatergoryDao(BlogCatergoryDao blogCatergoryDao) {
        this.blogCatergoryDao = blogCatergoryDao;
    }

    public List<BlogCatergory> getblogcatergories() {
        return blogCatergoryDao.findAll(BlogCatergory.class);

    }
}

package personalblog.service;

import personalblog.domain.Blog;

import java.io.Serializable;
import java.util.List;

/**
 * Created by yuxiao on 2/3/16.
 */
public interface BlogService {
    Integer save(Blog blog);
    Blog getById(Integer id);
    List<Blog> getAllBlogs();
    void deleteBlogById(int id);
}

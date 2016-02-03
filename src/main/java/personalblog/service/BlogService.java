package personalblog.service;

import personalblog.domain.Blog;

import java.io.Serializable;

/**
 * Created by yuxiao on 2/3/16.
 */
public interface BlogService {
    Integer save(Blog blog);
    Blog getById(Integer id);
}

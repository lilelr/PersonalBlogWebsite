package personalblog.service;

import personalblog.domain.Message;

import java.util.List;

/**
 * Created by yuxiao on 1/19/16.
 */
public interface MessageService {
    void save(Message entity);
    List<Message> findMsgByBlogId(int blog_id);
}

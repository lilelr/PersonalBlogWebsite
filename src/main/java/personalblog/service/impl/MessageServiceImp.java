package personalblog.service.impl;

import personalblog.dao.MessageDao;
import personalblog.domain.Message;
import personalblog.service.MessageService;

import java.util.List;

/**
 * Created by yuxiao on 1/19/16.
 */
public class MessageServiceImp implements MessageService{
    private MessageDao messageDao;

    public void setMessageDao(MessageDao messageDao) {
        this.messageDao = messageDao;
    }

    public void save(Message entity) {
        messageDao.save(entity);

    }

    public List<Message> findMsgByBlogId(int blog_id){
        return messageDao.find("from Message as msg where msg.blog.blog_id = ?0",blog_id);
    }
}

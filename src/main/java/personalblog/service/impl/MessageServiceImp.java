package personalblog.service.impl;

import personalblog.dao.MessageDao;
import personalblog.domain.Message;
import personalblog.service.MessageService;

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
}

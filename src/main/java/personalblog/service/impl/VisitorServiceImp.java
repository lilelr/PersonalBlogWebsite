package personalblog.service.impl;

import personalblog.dao.VisitorDao;
import personalblog.domain.Visitor;
import personalblog.service.VisitorService;

/**
 * Created by yuxiao on 1/19/16.
 */
public class VisitorServiceImp implements VisitorService{

    private VisitorDao visitorDao;

    public void setVisitorDao(VisitorDao visitorDao) {
        this.visitorDao = visitorDao;
    }

    public void save(Visitor visitor) {
        visitorDao.save(visitor);

    }
}

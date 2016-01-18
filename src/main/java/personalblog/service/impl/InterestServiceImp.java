package personalblog.service.impl;

import personalblog.dao.InterestDao;
import personalblog.domain.Interest;
import personalblog.service.InterestService;

import java.util.List;

/**
 * Created by yuxiao on 1/18/16.
 */
public class InterestServiceImp implements InterestService{

    private InterestDao interestDao;

    public InterestDao getInterestDao() {
        return interestDao;
    }

    public void setInterestDao(InterestDao interestDao) {
        this.interestDao = interestDao;
    }

    public List<Interest> getinterests() {
        return interestDao.findAll(Interest.class);
    }
}

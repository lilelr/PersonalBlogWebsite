package personalblog.service.impl;

import personalblog.dao.HonorDao;
import personalblog.domain.Honor;
import personalblog.service.HonorService;

import java.util.List;

/**
 * Created by yuxiao on 1/19/16.
 */
public class HonorServiceImp implements HonorService{

    private HonorDao honorDao;

    public void setHonorDao(HonorDao honorDao) {
        this.honorDao = honorDao;
    }

    public List<Honor> getHonors() {
        return honorDao.findAll(Honor.class);
    }
}

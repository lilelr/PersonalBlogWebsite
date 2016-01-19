package personalblog.service.impl;

import personalblog.dao.EducationDao;
import personalblog.domain.Education;
import personalblog.service.EducationService;

import java.util.List;

/**
 * Created by yuxiao on 1/19/16.
 */
public class EducationServiceImp implements EducationService{
    private EducationDao educationDao;

    public void setEducationDao(EducationDao educationDao) {
        this.educationDao = educationDao;
    }

    public List<Education> geteducations() {
        return educationDao.findAll(Education.class);
    }
}

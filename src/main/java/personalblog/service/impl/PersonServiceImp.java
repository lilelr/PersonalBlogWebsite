package personalblog.service.impl;

import personalblog.dao.PersonDao;
import personalblog.dao.impl.PersonDaoImp;
import personalblog.domain.Person;
import personalblog.service.PersonService;

import java.util.List;

/**
 * Created by yuxiao on 1/17/16.
 */
public class PersonServiceImp implements PersonService{
    private PersonDao personDao;


    public List<Person> getPerson(){

               return personDao.findAll(Person.class);

    }

    public void setPersonDao(PersonDao personDao) {

        this.personDao = personDao;
    }

    public PersonDao getPersonDao() {
        return personDao;
    }
}

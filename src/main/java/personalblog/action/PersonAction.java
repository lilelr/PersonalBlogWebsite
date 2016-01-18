package personalblog.action;

import com.opensymphony.xwork2.ActionSupport;
import personalblog.domain.Person;
import personalblog.service.PersonService;
import personalblog.service.impl.PersonServiceImp;

import java.util.List;

/**
 * Created by yuxiao on 1/17/16.
 */
public class PersonAction extends ActionSupport{

    private PersonService personService;

    public PersonService getPersonService() {
        return personService;
    }

    public void setPersonService(PersonService personService) {

        this.personService = personService;
    }

    private List<Person> person;

    public List<Person> getPerson() {
        return person;
    }

    public void setPerson(List<Person> person) {

        this.person = person;
    }

    public String showperson(){
        if (personService != null){
            System.out.println("服务"+personService);
        }else{
            System.out.println("null");
        }

        setPerson(personService.getPerson());
        System.out.println(this.getPerson().get(0).getPerson_Email());
        return SUCCESS;
    }

}

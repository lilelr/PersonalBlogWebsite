package personalblog.action;

import com.opensymphony.xwork2.ActionSupport;
import personalblog.domain.Interest;
import personalblog.domain.Person;
import personalblog.service.InterestService;
import personalblog.service.PersonService;
import personalblog.service.impl.PersonServiceImp;

import java.util.List;

/**
 * Created by yuxiao on 1/17/16.
 */
public class PersonAction extends ActionSupport{

    private PersonService personService;
    private InterestService interestService;
    private List<Interest> interests;
    private Person person;

    public PersonService getPersonService() {
        return personService;
    }

    public void setPersonService(PersonService personService) {

        this.personService = personService;
    }


    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {

        this.person = person;
    }


    public InterestService getInterestService() {
        return interestService;
    }

    public void setInterestService(InterestService interestService) {
        this.interestService = interestService;
    }

    public List<Interest> getInterest() {
        return interests;
    }

    public void setInterest(List<Interest> interests) {
        this.interests = interests;
    }

    public String showperson(){
        if (personService != null){
            System.out.println("服务"+personService);
        }else{
            System.out.println("null");
        }

        setPerson(personService.getPerson().get(0));
        System.out.println(this.getPerson().getPerson_Email());
        showinterest();
        return SUCCESS;
    }

    public String showinterest(){
            setInterest(interestService.getinterests());
          return SUCCESS;
    }

}

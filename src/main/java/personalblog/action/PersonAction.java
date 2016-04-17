package personalblog.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import personalblog.domain.Education;
import personalblog.domain.Honor;
import personalblog.domain.Interest;
import personalblog.domain.Person;
import personalblog.service.EducationService;
import personalblog.service.HonorService;
import personalblog.service.InterestService;
import personalblog.service.PersonService;
import personalblog.service.impl.PersonServiceImp;

import java.util.List;

/**
 * Created by yuxiao on 1/17/16.
 */
public class PersonAction extends ActionSupport{

    private HonorService honorService;
    private EducationService educationService;
    private PersonService personService;
    private InterestService interestService;
    private List<Interest> interests;
    private List<Education> educations;
    private List<Honor> honors;
    private Person person;
    private String adminname;
    private String adminpassword;


    public void setHonorService(HonorService honorService) {
        this.honorService = honorService;
    }

    public List<Education> getEducations() {
        return educations;
    }

    public void setEducations(List<Education> educations) {
        this.educations = educations;
    }

    public void setEducationService(EducationService educationService) {
        this.educationService = educationService;
    }

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

    public List<Interest> getInterests() {
        return interests;
    }

    public void setInterests(List<Interest> interests) {
        this.interests = interests;
    }

    public List<Honor> getHonors() {
        return honors;
    }

    public void setHonors(List<Honor> honors) {
        this.honors = honors;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public String getAdminpassword() {
        return adminpassword;
    }

    public void setAdminpassword(String adminpassword) {
        this.adminpassword = adminpassword;
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
        showedu();
        showhonor();
        return SUCCESS;
    }

    public String showinterest(){
            setInterests(interestService.getinterests());
          return SUCCESS;
    }

    public String showedu(){
        setEducations(educationService.geteducations());
        return  SUCCESS;
    }

    public String showhonor(){
        setHonors(honorService.getHonors());
        return SUCCESS;
    }

    public String adminLogin(){
        ActionContext cxt = ActionContext.getContext();
        Person admin = personService.getPerson().get(0);
        if(admin.getPerson_user_name().equals(this.adminname)  && admin.getPerson_admin().equals(this.adminpassword)){
            cxt.getSession().put("admin","admin");
            return SUCCESS;
        } else{
            return ERROR;
        }

    }

    public String adminIndex(){
        return SUCCESS;
    }


}

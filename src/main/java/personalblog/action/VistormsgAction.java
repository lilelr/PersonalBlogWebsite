package personalblog.action;

import com.opensymphony.xwork2.ActionSupport;
import personalblog.domain.Message;
import personalblog.domain.Visitor;
import personalblog.service.VisitorService;

import java.util.HashSet;

/**
 * Created by yuxiao on 1/19/16.
 */
public class VistormsgAction extends ActionSupport{


    private VisitorService visitorService;


    private String visitorname;
    private String visitoremail;
    private String visitormsg;

    public String getVisitorname() {
        return visitorname;
    }

    public void setVisitorname(String visitorname) {
        this.visitorname = visitorname;
    }

    public String getVisitoremail() {
        return visitoremail;
    }

    public void setVisitoremail(String visitoremail) {
        this.visitoremail = visitoremail;
    }

    public String getVisitormsg() {
        return visitormsg;
    }

    public void setVisitormsg(String visitormsg) {
        this.visitormsg = visitormsg;
    }

    public void setVisitorService(VisitorService visitorService) {
        this.visitorService = visitorService;
    }

    public String sendmsg(){
        Visitor visitor=new Visitor();
        HashSet<Message> tempMessages=new HashSet<Message>();
        Message tempmsg=new Message();
        tempmsg.setMsg_content(visitormsg);
        tempMessages.add(tempmsg);
        visitor.setMessages(tempMessages);
        visitor.setVisitor_Email(visitoremail);
        visitor.setVisitor_name(visitorname);
        visitorService.save(visitor);
        return SUCCESS;
    }
}

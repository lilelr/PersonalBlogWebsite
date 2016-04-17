package personalblog.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.json.annotations.JSON;

import org.owasp.html.PolicyFactory;
import org.owasp.html.Sanitizers;

import personalblog.domain.Blog;
import personalblog.domain.Message;
import personalblog.domain.Visitor;
import personalblog.service.MessageService;
import personalblog.service.VisitorService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by yuxiao on 1/19/16.
 */
public class VistormsgAction extends ActionSupport {


    private VisitorService visitorService;
    private MessageService messageService;

    private int blog_id;
    private String visitorname;
    private String visitoremail;
    private String visitormsg;

    private List<Message> msgFromBlog;

    private Map<String, List<Message>> msgsOfResult;

//    private String succssmsg;
//
//    public String getSuccssmsg() {
//        return succssmsg;
//    }
//
//    public void setSuccssmsg(String succssmsg) {
//        this.succssmsg = succssmsg;
//    }


    public int getBlog_id() {
        return blog_id;
    }

    public void setBlog_id(int blog_id) {
        this.blog_id = blog_id;
    }

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


    public List<Message> getMsgFromBlog() {
        return msgFromBlog;
    }


    public void setMsgFromBlog(List<Message> msgFromBlog) {
        this.msgFromBlog = msgFromBlog;
    }

    @JSON(name = "msgsMap")
    public Map<String, List<Message>> getMsgsOfResult() {
        return msgsOfResult;
    }

    public void setMsgsOfResult(Map<String, List<Message>> msgsOfResult) {
        this.msgsOfResult = msgsOfResult;
    }

    public void setVisitorService(VisitorService visitorService) {
        this.visitorService = visitorService;
    }

    public void setMessageService(MessageService messageService) {
        this.messageService = messageService;
    }


    public String showMsgByBlogId() {
        this.setMsgFromBlog(this.messageService.findMsgByBlogId(this.blog_id));
        this.setMsgsOfResult(new HashMap<String, List<Message>>());
        this.msgsOfResult.put("msgs", this.getMsgFromBlog());
        return SUCCESS;
    }

    public String sendmsg() {
        Visitor visitor = new Visitor();
        Message tempmsg = new Message();
        this.visitormsg = this.sanitize(visitormsg);
        this.visitorname = this.sanitize(visitorname);
        this.visitoremail = this.sanitize(visitoremail);
        tempmsg.setMsg_content(visitormsg);
        visitor.setVisitor_Email(visitoremail);
        visitor.setVisitor_name(visitorname);
        visitorService.save(visitor);
        tempmsg.setVisitor(visitor);
        Blog tblog = new Blog();
        tblog.setBlog_id(this.getBlog_id());
        tempmsg.setBlog(tblog);
        messageService.save(tempmsg);
//        System.out.println(this.getBlog_id());
        return SUCCESS;
    }


    public String sanitize(String validateStr) {
        PolicyFactory policy = Sanitizers.FORMATTING.and(Sanitizers.LINKS);
        String safeHTML = policy.sanitize(validateStr);
        System.out.println(safeHTML);
        return safeHTML;
    }

}

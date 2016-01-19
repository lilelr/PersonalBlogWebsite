package personalblog.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by yuxiao on 1/19/16.
 */
public class VistormsgAction extends ActionSupport{

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

    public String sendmsg(){

        return SUCCESS;
    }
}

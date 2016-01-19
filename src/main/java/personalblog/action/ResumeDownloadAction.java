package personalblog.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.InputStream;

/**
 * Created by yuxiao on 1/19/16.
 * 获取简历action
 */
public class ResumeDownloadAction extends ActionSupport{

    private String resumePath;

    public void setResumePath(String resumePath) {
        this.resumePath = resumePath;
    }

    public InputStream getResume() throws Exception{
        return ServletActionContext.getServletContext().getResourceAsStream(resumePath);
    }

}

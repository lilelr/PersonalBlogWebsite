package personalblog.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletResponse;
import java.io.*;

/**
 * Created by yuxiao on 1/30/16.
 */
public class EditBlogAction extends ActionSupport{

    private File upload;
    private String uploadContentType;
    private String uploadFileName;

    public File getUpload() {
        return upload;
    }

    public void setUpload(File upload) {
        this.upload = upload;
    }

    public String getUploadContentType() {
        return uploadContentType;
    }

    public void setUploadContentType(String uploadContentType) {
        this.uploadContentType = uploadContentType;
    }

    public String getUploadFileName() {
        return uploadFileName;
    }

    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }

    public String editblog(){
        ActionContext ctx = ActionContext.getContext();
        String admin = (String)ctx.getSession().get("admin");
        if(admin == null || admin.isEmpty()){
            return ERROR;
        }
        return SUCCESS;
    }


}

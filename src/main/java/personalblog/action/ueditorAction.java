package personalblog.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import com.baidu.ueditor.ActionEnter;

/**
 * Created by yuxiao on 2/1/16.
 */
public class ueditorAction extends ActionSupport{

    public String first() throws Exception{
        ServletActionContext.getRequest().setCharacterEncoding("utf-8");
        ServletActionContext.getResponse().setHeader("Content-Type", "text/html");
        String rootPath=ServletActionContext.getServletContext().getRealPath("/");
        System.out.println(new ActionEnter(ServletActionContext.getRequest(), rootPath).exec());
        return null;
    }


}

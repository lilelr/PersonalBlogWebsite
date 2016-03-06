package personalblog.filter;

/**
 * Created by yuxiao on 2/1/16.
 */


import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class PhotoFilter extends StrutsPrepareAndExecuteFilter {

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request= (HttpServletRequest) req;
        String url=request.getRequestURI();
        if(url.contains("controller.jsp")|| url.contains("ueditor")){
            req.setCharacterEncoding("UTF-8");
            res.setCharacterEncoding("UTF-8");
            chain.doFilter(req,res);
        }else{
            super.doFilter(req, res, chain);

        }
    }
}

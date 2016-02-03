package personalblog.domain;

import personalblog.abstractclass.Pageheader;

/**
 * Created by yuxiao on 2/2/16.
 */
public class LiteraturePageHeader extends Pageheader{
    @Override
    public void setHeaderInfo(String info) {
        this.headerinfo=info;
    }

    @Override
    public String getHeaderinfo() {
        return this.headerinfo;
    }
}

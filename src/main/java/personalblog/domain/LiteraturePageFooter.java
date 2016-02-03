package personalblog.domain;

import personalblog.abstractclass.Pagefooter;

/**
 * Created by yuxiao on 2/2/16.
 */
public class LiteraturePageFooter extends Pagefooter{
    @Override
    public void setFooterinfo(String info) {
        this.footerinfo=info;
    }

    @Override
    public String getFooterinfo() {
        return this.footerinfo;
    }
}

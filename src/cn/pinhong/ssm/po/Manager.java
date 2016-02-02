package cn.pinhong.ssm.po;

import javax.validation.constraints.Size;

public class Manager {
    private Integer mid;

    @Size(min=2, max=20, message="{manager.name.length}")
    private String uname;

    @Size(min=6, max=20, message="{manager.password.length}")
    private String upwd;

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd == null ? null : upwd.trim();
    }
}
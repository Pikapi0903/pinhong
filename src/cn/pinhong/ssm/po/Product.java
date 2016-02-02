package cn.pinhong.ssm.po;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

public class Product {
    private Integer pid;

    @NotBlank(message="{product.name.isnull}")
    private String pname;

    @NotBlank(message="{product.brand.isnull}")
    private String pbrand;

    @NotBlank(message="{product.model.isnull}")
    private String pmodel;

    @NotNull(message="{product.price.isnull}")
    private Float pprice;

    private String ppicture;

    private String pdes;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public String getPbrand() {
        return pbrand;
    }

    public void setPbrand(String pbrand) {
        this.pbrand = pbrand == null ? null : pbrand.trim();
    }

    public String getPmodel() {
        return pmodel;
    }

    public void setPmodel(String pmodel) {
        this.pmodel = pmodel == null ? null : pmodel.trim();
    }

    public Float getPprice() {
        return pprice;
    }

    public void setPprice(Float pprice) {
        this.pprice = pprice;
    }

    public String getPpicture() {
        return ppicture;
    }

    public void setPpicture(String ppicture) {
        this.ppicture = ppicture == null ? null : ppicture.trim();
    }

    public String getPdes() {
        return pdes;
    }

    public void setPdes(String pdes) {
        this.pdes = pdes == null ? null : pdes.trim();
    }
}
package cn.wmyskxz.pojo;

public class ProductImage {
    private Integer id;              // integer 的默认值为NULL 前端不显示对应数值，int的默认值为0 前端显示

    private Integer product_id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }
}
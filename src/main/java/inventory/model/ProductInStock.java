package inventory.model;
// Generated Dec 26, 2018 6:59:18 PM by Hibernate Tools 5.1.10.Final

import java.math.BigDecimal;
import java.util.Date;

/**
 * ProductInStock generated by hbm2java
 */
public class ProductInStock implements java.io.Serializable {

	private Integer id;
	private ProductInfo productInfo;
	private int qty;
	private int activeFlag;
	private BigDecimal price;
	private Date createDate;
	private Date updateDate;

	public ProductInStock() {
	}

	public ProductInStock(ProductInfo productInfo, int qty, int activeFlag, Date createDate, Date updateDate) {
		this.productInfo = productInfo;
		this.qty = qty;
		this.activeFlag = activeFlag;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ProductInfo getProductInfo() {
		return this.productInfo;
	}

	public void setProductInfo(ProductInfo productInfo) {
		this.productInfo = productInfo;
	}

	public int getQty() {
		return this.qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public int getActiveFlag() {
		return this.activeFlag;
	}

	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

}

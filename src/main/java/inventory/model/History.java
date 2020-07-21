package inventory.model;
// Generated Jun 30, 2020 3:20:38 AM by Hibernate Tools 5.4.3.Final

import java.math.BigDecimal;
import java.util.Date;

/**
 * History generated by hbm2java
 */
public class History implements java.io.Serializable {

	private Integer id;
	private ProductInfo productInfo;
	private String actionName;
	private int type;
	private int qyt;
	private BigDecimal price;
	private int activeFlag;
	private Date createDAte;
	private Date updateDate;

	public History() {
	}

	public History(ProductInfo productInfo, String actionName, int type, int qyt, BigDecimal price, int activeFlag,
			Date createDAte, Date updateDate) {
		this.productInfo = productInfo;
		this.actionName = actionName;
		this.type = type;
		this.qyt = qyt;
		this.price = price;
		this.activeFlag = activeFlag;
		this.createDAte = createDAte;
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

	public String getActionName() {
		return this.actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	public int getType() {
		return this.type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getQyt() {
		return this.qyt;
	}

	public void setQyt(int qyt) {
		this.qyt = qyt;
	}

	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public int getActiveFlag() {
		return this.activeFlag;
	}

	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}

	public Date getCreateDAte() {
		return this.createDAte;
	}

	public void setCreateDAte(Date createDAte) {
		this.createDAte = createDAte;
	}

	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

}

package inventory.model;
// Generated Jun 30, 2020 3:20:38 AM by Hibernate Tools 5.4.3.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Category generated by hbm2java
 */
public class Category implements java.io.Serializable {

	private Integer id;
	private String name;
	private String code;
	private String description;
	private int activeFlag;
	private Date createDAte;
	private Date updateDate;
	private Set productInfos = new HashSet(0);

	public Category() {
	}

	public Category(String name, String code, int activeFlag, Date createDAte, Date updateDate) {
		this.name = name;
		this.code = code;
		this.activeFlag = activeFlag;
		this.createDAte = createDAte;
		this.updateDate = updateDate;
	}

	public Category(String name, String code, String description, int activeFlag, Date createDAte, Date updateDate,
			Set productInfos) {
		this.name = name;
		this.code = code;
		this.description = description;
		this.activeFlag = activeFlag;
		this.createDAte = createDAte;
		this.updateDate = updateDate;
		this.productInfos = productInfos;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public Set getProductInfos() {
		return this.productInfos;
	}

	public void setProductInfos(Set productInfos) {
		this.productInfos = productInfos;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Name ="+name+" Code= "+code+" description="+description;
	}

}

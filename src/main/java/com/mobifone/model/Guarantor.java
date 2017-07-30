package com.mobifone.model;
// Generated Jul 29, 2017 5:42:23 PM by Hibernate Tools 5.2.3.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * Guarantor generated by hbm2java
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "GUARANTOR", catalog = "mobifone_subsidy", uniqueConstraints = {
		@UniqueConstraint(columnNames = "identify_card"), @UniqueConstraint(columnNames = "tax_code") })
public class Guarantor implements java.io.Serializable {

	private Long id;
	private String name;
	private String identifyCard;
	private String taxCode;
	private Date birthday;
	private String address;
	private String company;
	private Double balance;
	private String cardType;
	private String postCode;
	private Date createdAt;
	private Date updatedAt;

	public Guarantor() {
	}

	public Guarantor(String identifyCard) {
		this.identifyCard = identifyCard;
	}

	public Guarantor(String name, String identifyCard, String taxCode, Date birthday, String address, String company,
			Double balance, String cardType, String postCode, Date createdAt, Date updatedAt) {
		this.name = name;
		this.identifyCard = identifyCard;
		this.taxCode = taxCode;
		this.birthday = birthday;
		this.address = address;
		this.company = company;
		this.balance = balance;
		this.cardType = cardType;
		this.postCode = postCode;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "name", length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "identify_card", unique = true, nullable = false, length = 45)
	public String getIdentifyCard() {
		return this.identifyCard;
	}

	public void setIdentifyCard(String identifyCard) {
		this.identifyCard = identifyCard;
	}

	@Column(name = "tax_code", unique = true, length = 45)
	public String getTaxCode() {
		return this.taxCode;
	}

	public void setTaxCode(String taxCode) {
		this.taxCode = taxCode;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "birthday", length = 10)
	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Column(name = "address", length = 125)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "company", length = 100)
	public String getCompany() {
		return this.company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	@Column(name = "balance", precision = 22, scale = 0)
	public Double getBalance() {
		return this.balance;
	}

	public void setBalance(Double balance) {
		this.balance = balance;
	}

	@Column(name = "card_type", length = 50)
	public String getCardType() {
		return this.cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	@Column(name = "post_code", length = 50)
	public String getPostCode() {
		return this.postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "created_at", length = 19)
	public Date getCreatedAt() {
		return this.createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updated_at", length = 19)
	public Date getUpdatedAt() {
		return this.updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

}
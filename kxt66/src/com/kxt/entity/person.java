package com.kxt.entity;

import java.text.Collator;
import java.util.Comparator;

public class person implements Comparable<person>{
private int id;
 private String name;
 private String organization;
 private String phonenumber;
 private String telephone;
 private String email;
 private String address;
 private String group;
 private String remark;



public person() {
	super();
	// TODO Auto-generated constructor stub
}



public person(int id, String name, String organization, String phonenumber,
		String telephone, String email, String address, String group,
		String remark) {
	super();
	this.id = id;
	this.name = name;
	this.organization = organization;
	this.phonenumber = phonenumber;
	this.telephone = telephone;
	this.email = email;
	this.address = address;
	this.group = group;
	this.remark = remark;
}



public int getId() {
	return id;
}



public void setId(int id) {
	this.id = id;
}



public String getName() {
	return name;
}



public void setName(String name) {
	this.name = name;
}



public String getOrganization() {
	return organization;
}



public void setOrganization(String organization) {
	this.organization = organization;
}



public String getPhonenumber() {
	return phonenumber;
}



public void setPhonenumber(String phonenumber) {
	this.phonenumber = phonenumber;
}



public String getTelephone() {
	return telephone;
}



public void setTelephone(String telephone) {
	this.telephone = telephone;
}



public String getEmail() {
	return email;
}



public void setEmail(String email) {
	this.email = email;
}



public String getAddress() {
	return address;
}



public void setAddress(String address) {
	this.address = address;
}



public String getGroup() {
	return group;
}



public void setGroup(String group) {
	this.group = group;
}



public String getRemark() {
	return remark;
}



public void setRemark(String remark) {
	this.remark = remark;
}



@Override
public int compareTo(person o) {
	// TODO Auto-generated method stub
	  Comparator cmp = Collator.getInstance(java.util.Locale.CHINA); 
	return cmp.compare(this.name, o.name)>0?1:(cmp.compare(this.name, o.name)==0?0:-1);
}
 
}

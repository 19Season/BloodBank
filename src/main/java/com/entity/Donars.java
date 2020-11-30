package com.entity;

public class Donars {
private String name;
private String address;
private String bloodgroup;
private String contact;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}

public String getBloodgroup() {
	return bloodgroup;
}
public void setBloodgroup(String bloodgroup) {
	this.bloodgroup = bloodgroup;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public Donars(String name, String address, String bloodGroup, String contact) {
	super();
	this.name = name;
	this.address = address;
	this.bloodgroup = bloodGroup;
	this.contact = contact;
}
public Donars() {
	super();
	// TODO Auto-generated constructor stub
}



}

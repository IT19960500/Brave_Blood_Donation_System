package com.braveBloodDonation.entities;

public class Appointment {
	
	private String name, NIC, bloodgrp, date;

	public Appointment() {
		super();
	}

	public Appointment(String name, String nIC, String bloodgrp, String date) {
		super();
		this.name = name;
		NIC = nIC;
		this.bloodgrp = bloodgrp;
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNIC() {
		return NIC;
	}

	public void setNIC(String nIC) {
		NIC = nIC;
	}

	public String getBloodgrp() {
		return bloodgrp;
	}

	public void setBloodgrp(String bloodgrp) {
		this.bloodgrp = bloodgrp;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
}

package com.braveBloodDonation.entities;

public class Appointment {
	
	private int appointmentId;
	private String nic,name, bloodgrp, date,status;
	public Appointment() {
		super();
	}
	public Appointment(int appointmentId, String nic, String name, String bloodgrp, String date, String status) {
		super();
		this.appointmentId = appointmentId;
		this.nic = nic;
		this.name = name;
		this.bloodgrp = bloodgrp;
		this.date = date;
		this.status = status;
	}
	public int getAppointmentId() {
		return appointmentId;
	}
	public void setAppointmentId(int appointmentId) {
		this.appointmentId = appointmentId;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	
	
}
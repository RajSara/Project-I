package com.music.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class ShippingAddress {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@NotEmpty(message="Appartment Number is Required")
	private String ApartmentNumber;
	
	@NotEmpty(message="Street Name is Required")
	private String StreetName;
	
	@NotEmpty(message="City Name is Required")
	private String City;
	
	@NotEmpty(message="Province is Required")
	private String Province;
	
	@NotEmpty(message="This country requires you to choose a State")
	private String State;
	
	@NotEmpty(message="Country Name is Required")
	private String Country;
	
	@NotEmpty(message="The Zip/Postal code you've entered is invalid. It must follow this format: 000000")
    private String Zipcode;
	
	                                     /*Generating Getter and Setter Methods*/
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getApartmentNumber() {
		return ApartmentNumber;
	}
	public void setApartmentNumber(String apartmentNumber) {
		ApartmentNumber = apartmentNumber;
	}
	public String getStreetName() {
		return StreetName;
	}
	public void setStreetName(String streetName) {
		StreetName = streetName;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	
	public String getProvince() {
		return Province;
	}
	public void setProvince(String province) {
		Province = province;
	}
	
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getZipcode() {
		return Zipcode;
	}
	public void setZipcode(String zipcode) {
		Zipcode = zipcode;
	}
	
	
}

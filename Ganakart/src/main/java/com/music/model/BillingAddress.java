package com.music.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class BillingAddress implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@NotEmpty(message="Appartment Number should not be Empty")
	private String ApartmentNumber;
	
	@NotEmpty(message="StreetName should not be Empty")
	private String StreetName;
	
	@NotEmpty(message="CityName should not be Empty")
	private String City;
	
	@NotEmpty(message="Province is Required")
	private String Province;
	
	@NotEmpty(message="CountryName should not be Empty")
	private String Country;
	
	@NotEmpty(message="Zipcode should not be Empty")
	private String Zipcode;
	
	                                        /* Generating Getter and Setter Methods*/
	
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

package ee.itcollege.borderproject.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import ee.itcollege.borderproject.common.BaseEntity;

@Entity
@Table(name = ("Piirivalvur"))
@NamedQueries({ 
	 @NamedQuery(name = "Guard.findAll", 
	    query = "SELECT g FROM Guard g")})
public class Guard extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue( strategy = GenerationType.TABLE ) 
	private int id;
	
	@Column(name = "aadress")
	private String address;
	
	@Column(name = "eesnimi")
	private String firstName;
	
	@Column(name = "perekonnanimi")
	private String lastName;
	
	private String email;
	
	@Column(name = "isikukood")
	private String socialSecurityNumber;
	
	@Column(name = "sodurikood")
	private String soldiersCode;
	
	@Column(name = "sugu")
	private int gender;
	
	@Column(name = "telefon")
	private String phoneNumber;
	
	public int getId() {
		return id;
	}

	public String getAddress() {
		return address;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getEmail() {
		return email;
	}

	public String getSocialSecurityNumber() {
		return socialSecurityNumber;
	}

	public String getSoldiersCode() {
		return soldiersCode;
	}

	public int getGender() {
		return gender;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setSocialSecurityNumber(String socialSecurityNumber) {
		this.socialSecurityNumber = socialSecurityNumber;
	}

	public void setSoldiersCode(String soldiersCode) {
		this.soldiersCode = soldiersCode;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
}

package ee.itcollege.borderproject.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Piiripunkt")
public class BorderStation {
	
	@Column(name = "GpsLaiuskraad")
	private double latitude;
	
	@Column(name = "GpsPikkuskraad")
	private double longitude;
	
	@Column(name = "Korgusmerepinnast")
	private double elevation;
	
	@Column(name = "Kood")
	private String code;
	
	@Column(name = "Nimetus")
	private String name;
	
	@OneToMany(mappedBy = "borderStation")
	private List<OccupationInBorderStation> occupationInBorderStation;

	public double getLatitude() {
		return latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public double getElevation() {
		return elevation;
	}

	public String getCode() {
		return code;
	}

	public String getName() {
		return name;
	}
	
	public List<OccupationInBorderStation> getOccupationInBorderStation() {
		return occupationInBorderStation;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public void setElevation(double elevation) {
		this.elevation = elevation;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public void setOccupationInBorderStation(
			List<OccupationInBorderStation> occupationInBorderStation) {
		this.occupationInBorderStation = occupationInBorderStation;
	}
}

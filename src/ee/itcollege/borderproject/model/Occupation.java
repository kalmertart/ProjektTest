package ee.itcollege.borderproject.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Amet")
public class Occupation {
	
	@Column(name = "IscoKood")
	private String iscoCode;
	
	@Column(name = "Nimetus")
	private String name;
	
	@OneToMany(mappedBy = "occupation")
	private List<OccupationInBorderStation> occupationInBorderStation;

	public String getIscoCode() {
		return iscoCode;
	}

	public String getName() {
		return name;
	}
	
	public List<OccupationInBorderStation> getOccupationInBorderStation() {
		return occupationInBorderStation;
	}

	public void setIscoCode(String iscoCode) {
		this.iscoCode = iscoCode;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public void setOccupationInBorderStation(
			List<OccupationInBorderStation> occupationInBorderStation) {
		this.occupationInBorderStation = occupationInBorderStation;
	}
}

package ee.itcollege.borderproject.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "AmetPiiripunktis")
public class OccupationInBorderStation {
	
	@Column(name = "Alates")
	private Date start;
	
	@Column(name = "Kuni")
	private Date end;
	
	@ManyToOne
	@JoinColumn(name = "Amet_Id")
	private Occupation occupation;
	
	@ManyToOne
	@JoinColumn(name = "Piiripunkt_Id")
	private BorderStation borderStation;
	
	public Date getStart() {
		return start;
	}
	
	public Date getEnd() {
		return end;
	}
	
	public Occupation getOccupation() {
		return occupation;
	}
	
	public BorderStation getBorderStation() {
		return borderStation;
	}
	
	public void setStart(Date start) {
		this.start = start;
	}
	
	public void setEnd(Date end) {
		this.end = end;
	}
	
	public void setOccupation(Occupation occupation) {
		this.occupation = occupation;
	}
	
	public void setBorderStation(BorderStation borderStation) {
		this.borderStation = borderStation;
	}
}

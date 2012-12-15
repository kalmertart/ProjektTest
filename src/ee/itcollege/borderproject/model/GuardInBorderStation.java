package ee.itcollege.borderproject.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Piirivalvurpiiripunktis")
public class GuardInBorderStation {

	@Column(name = "Alates")
	private Date start;
	
	@Column(name = "Kuni")
	private Date end;
	
	@Column(name = "Koormus")
	private double workTime;
	
	@ManyToMany
	@JoinColumn(name = "Piirivalvur_Id")
	private List<Guard> guard;

	public Date getStart() {
		return start;
	}

	public Date getEnd() {
		return end;
	}
	
	public double getWorkTime() {
		return workTime;
	}
	
	public List<Guard> getGuard() {
		return guard;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public void setEnd(Date end) {
		this.end = end;
	}
	
	public void setWorkTime(double workTime) {
		this.workTime = workTime;
	}
	
	public void setGuard(List<Guard> guard) {
		this.guard = guard;
	}
}

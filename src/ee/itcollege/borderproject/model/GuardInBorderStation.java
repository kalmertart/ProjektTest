package ee.itcollege.borderproject.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import ee.itcollege.borderproject.common.BaseJoinEntity;

@Entity
@Table(name = "Piirivalvurpiiripunktis")
@NamedQueries({
	@NamedQuery(name = "GuardInBorderStation.findAll", query = "SELECT g FROM GuardInBorderStation g")
})
public class GuardInBorderStation extends BaseJoinEntity implements Serializable {
	
	private static final long serialVersionUID = 5376653039415829163L;
	
	@Column(name = "Koormus")
	private double workTime;
	
	@ManyToMany
	@JoinColumn(name = "Piirivalvur_Id")
	private List<Guard> guard;
	
	public double getWorkTime() {
		return workTime;
	}
	
	public List<Guard> getGuard() {
		return guard;
	}
	
	public void setWorkTime(double workTime) {
		this.workTime = workTime;
	}
	
	public void setGuard(List<Guard> guard) {
		this.guard = guard;
	}
}

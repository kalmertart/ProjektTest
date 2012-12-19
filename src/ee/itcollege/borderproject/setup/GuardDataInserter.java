package ee.itcollege.borderproject.setup;
import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import ee.itcollege.borderproject.dao.GuardDao;
import ee.itcollege.borderproject.model.Guard;

@Component
public class GuardDataInserter {
	
	@Resource
	GuardDao guardDao;
	
	@PostConstruct
	public void init(){
		guardDao.save(testGuard1());
	}
	
	private Guard testGuard1(){
		Guard guard = new Guard();
		guard.setAddress("Metsa 13, Kullikajaka linn, Ida-Virumaa, Eesti");
		guard.setEmail("peoloom33@hot.ee");
		guard.setFirstName("Jürno");
		guard.setGender(0);
		guard.setLastName("Gustavson");
		guard.setPhoneNumber("57575755");
		guard.setSocialSecurityNumber("39108023344");
		
		return guard;
	}
	
}

package ee.itcollege.borderproject.setup;
import java.util.List;

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
	public void tere(){
		System.out.println(hasTestDataBeenInserted());
		if (!hasTestDataBeenInserted()) {
			guardDao.save(testGuard1());
		}
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
		guard.setSoldiersCode("PV123");
		
		return guard;
	}
	
	private boolean hasTestDataBeenInserted() {
		for (Guard guard : guardDao.getAll()) {
			if ("system".equals(guard.getCreator()))
				return true;
		}
		
		return false;
			
	}
	
}

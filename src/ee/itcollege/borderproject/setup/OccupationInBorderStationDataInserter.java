package ee.itcollege.borderproject.setup;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import ee.itcollege.borderproject.dao.BorderStationDao;
import ee.itcollege.borderproject.dao.OccupationDao;
import ee.itcollege.borderproject.dao.OccupationInBorderStationDao;
import ee.itcollege.borderproject.model.BorderStation;
import ee.itcollege.borderproject.model.Guard;
import ee.itcollege.borderproject.model.GuardInBorderStation;
import ee.itcollege.borderproject.model.Occupation;
import ee.itcollege.borderproject.model.OccupationInBorderStation;

@Component
public class OccupationInBorderStationDataInserter {
	
	public static final String SYSTEM_USER = "system";
	
	@Resource
	OccupationDao occupationDao;
	
	@Resource
	BorderStationDao borderStationDao;
	
	@Resource
	OccupationInBorderStationDao occupationInBorderStationDao;

	public void insertOccupationsInBorderStations() {
		if (!hasTestDataBeenInserted()) {
			Occupation occupation = getFirstOccupation();
			BorderStation borderStation = getFirstBorderStation();
		}
	}
	
	private Occupation getFirstOccupation() {
		return occupationDao.getAll().get(0);
	}
	
	private BorderStation getFirstBorderStation() {
		return borderStationDao.getAll().get(0);
	}
	
	private boolean hasTestDataBeenInserted() {
		for (OccupationInBorderStation occupationInBorderStation : occupationInBorderStationDao.getAll()) {
			if (SYSTEM_USER.equals(occupationInBorderStation.getCreator()))
				return true;
		}
		
		return false;
	}

}

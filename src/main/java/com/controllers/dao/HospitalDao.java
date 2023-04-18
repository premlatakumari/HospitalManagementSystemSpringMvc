package com.controllers.dao;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import com.controllers.model.Hospital;


	@Component
	public class HospitalDao {
		
		@Autowired
		private HibernateTemplate hibernateTemplate;
		
		//creating new patient
		@Transactional
		public void createPatient(Hospital hospital) {
			this.hibernateTemplate.saveOrUpdate( hospital);
		}
		
		// get all project
		public List< Hospital> getPatient(){
			List< Hospital>  patients=this.hibernateTemplate.loadAll( Hospital.class);
			return patients;
		}
		
		// delete the single patient
		@Transactional
		public void deletePatient(int id) {
			 Hospital p=this.hibernateTemplate.load( Hospital.class, id);
			this.hibernateTemplate.delete(p);
		}
		
		// get the single patient
		public  Hospital getPatient(int sid) {
			return this.hibernateTemplate.get(Hospital.class, sid);
		}
	}
package iryna.bozhyk.service.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import iryna.bozhyk.service.entity.MyService;

@Repository("myServiceDAOImpl")
public class MyServiceDAOImpl implements MyServiceDAO {
   
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<MyService> getMyServices() {
		Session session = sessionFactory.getCurrentSession();
		List <MyService> records = session.createQuery("from MyService", MyService.class).getResultList();
		return records;
	}

}

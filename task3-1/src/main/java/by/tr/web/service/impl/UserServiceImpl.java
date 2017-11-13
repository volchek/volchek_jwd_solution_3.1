package by.tr.web.service.impl;

import java.util.List;
import java.util.Map;

import by.tr.web.entity.User;
import by.tr.web.dao.UserDao;
import by.tr.web.dao.Factory.DaoFactory;
import by.tr.web.dao.exceptions.DaoException;
import by.tr.web.service.UserService;
import by.tr.web.service.exceptions.ServiceException;


public class UserServiceImpl implements UserService {

	
	public List<User> getUserInfo(Map<String, String> userData) throws ServiceException {
				
		DaoFactory daoInstance = DaoFactory.getInstance();
		
		UserDao dao = daoInstance.getUserDao();

		List<User> result = null;
		try {
			result = dao.getUserInfo(userData);
		}
		catch(DaoException ex){
			throw new ServiceException(ex);
		}

		return result;
	}

}

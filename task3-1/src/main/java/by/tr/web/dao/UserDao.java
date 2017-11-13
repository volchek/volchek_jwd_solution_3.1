package by.tr.web.dao;

import java.util.List;
import java.util.Map;
import by.tr.web.dao.exceptions.DaoException;
import by.tr.web.entity.User;


public interface UserDao {

	List<User> getUserInfo(Map<String, String> userInfo) throws DaoException;

}

package by.tr.web.service;

import java.util.List;
import java.util.Map;

import by.tr.web.entity.User;
import by.tr.web.service.exceptions.ServiceException;


public interface UserService {

	List<User> getUserInfo(Map<String, String> userInfo) throws ServiceException;
}

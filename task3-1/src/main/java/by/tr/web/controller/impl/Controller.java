package by.tr.web.controller.impl;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import by.tr.web.entity.User;
import by.tr.web.service.UserService;
import by.tr.web.service.Factory.ServiceFactory;
import by.tr.web.service.exceptions.ServiceException;
import by.tr.web.controller.exceptions.ControllerException;


public class Controller extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static final String RESULT_PAGE = "/WEB-INF/information.jsp";
	private static final String FOUND_ATTR = "user";
	private static final String NOT_FOUND_ATTR = "error";
	private static final String ERROR_MESSAGE = "User not found";
	
	public Controller() {
		super();
	}

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Map<String, String> inputData = extractInputData(request);
		
		ServiceFactory serviceObject = ServiceFactory.getInstance();
		UserService userObject = serviceObject.getUserService();
		
		RequestDispatcher d = null;
		
		try {
			List<User> res = userObject.getUserInfo(inputData);
			
			if (res != null && !res.isEmpty()){
				request.setAttribute(FOUND_ATTR, res);
			}
			else { throw new ControllerException(ERROR_MESSAGE); }
		}
		catch(ServiceException ex){			// Don't use mylticatch to support java 1.5
			request.setAttribute(NOT_FOUND_ATTR, ex.getMessage());
		}
		catch(ControllerException ex){
			request.setAttribute(NOT_FOUND_ATTR, ex.getMessage());
		}
		
		d = request.getRequestDispatcher(RESULT_PAGE);
		d.forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	
	private Map<String, String> extractInputData(HttpServletRequest request){
		String surnameKey = User.Fields.SURNAME.getValue();
		String nameKey = User.Fields.NAME.getValue();
		
		String surnameValue = request.getParameter(surnameKey);
		String nameValue = request.getParameter(nameKey);
		
		Map<String, String> startUserData = new HashMap<String, String>();
		startUserData.put(surnameKey, surnameValue);
		startUserData.put(nameKey, nameValue);
		
		return startUserData;
	}
		
}

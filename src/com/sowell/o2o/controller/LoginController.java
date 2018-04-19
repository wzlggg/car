package com.sowell.o2o.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.sowell.o2o.model.Store;
import com.sowell.o2o.model.StoreUser;
import com.sowell.o2o.service.IStoreService;
import com.sowell.o2o.service.IStoreUserService;
import com.sowell.o2o.service.impl.StoreServiceImpl;
import com.sowell.o2o.service.impl.StoreUserServiceImpl;

/**
 * 处理用户首页输入手机号码和密码登录逻辑
 *
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 6144803508498234822L;
	private IStoreUserService storeUserService = new StoreUserServiceImpl();
	private IStoreService storeService = new StoreServiceImpl();
	private static Logger logger = Logger.getLogger(LoginController.class);

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String phone = req.getParameter("phone");//18251893790
		String password = req.getParameter("password");//111
		StoreUser user = storeUserService.validate(phone, password);
		if (null != user) {			
			logger.info(user.getPhone() + "login system at time: " + System.currentTimeMillis() );
			
			//Session对象表示会话
			HttpSession session = req.getSession();
			session.setAttribute("userInfo", user);
			
			//TODO To be continued.
			/*Store store = storeService.queryByUserId(user.getId());
			session.setAttribute("storeInfo", store);*/
			RequestDispatcher dispatcher = req.getRequestDispatcher("dashboard.jsp");
			dispatcher.forward(req, resp);
		} else {
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, resp);
		}
	}
}

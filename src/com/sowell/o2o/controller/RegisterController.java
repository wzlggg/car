package com.sowell.o2o.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.sowell.o2o.dao.IStoreDao;
import com.sowell.o2o.dao.IStoreUserDao;
import com.sowell.o2o.model.StoreUser;
import com.sowell.o2o.service.IStoreService;
import com.sowell.o2o.service.IStoreUserService;
import com.sowell.o2o.service.registerUserService;
import com.sowell.o2o.service.impl.StoreServiceImpl;
import com.sowell.o2o.service.impl.StoreUserServiceImpl;

public class RegisterController extends HttpServlet {


	private static final long serialVersionUID = 1L;
	public RegisterController(){
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse respect) throws ServletException, IOException {

	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse respect) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		String phone = req.getParameter("phone");
		String code = req.getParameter("code");
		String telbak = req.getParameter("telbak");
		String password = req.getParameter("password");
		String re_password = req.getParameter("re_password");
		String sweb = req.getParameter("serve_web");
		String web_area = req.getParameter("web_area");
		String mname = req.getParameter("mname");
		String nid = req.getParameter("nid");
		
		System.out.println("用户输入的信息：");
		System.out.println("电话号码："+phone);
		System.out.println("验证码："+code);
		System.out.println("备用号码："+telbak);
		System.out.println("密码："+password);
		System.out.println("确认密码："+re_password);
		System.out.println("服务网点："+sweb);
		System.out.println("网点位置："+web_area);
		System.out.println("负责人："+mname);
		System.out.println("身份证信息："+nid);
		
		
		StoreUser user = new StoreUser();
		user.setPhone(phone);
		user.setUserName(phone);
		user.setSparePhone(telbak);
		user.setPassword(password);
		user.setCreateTime(System.currentTimeMillis());
		
		 IStoreUserService userService = new StoreUserServiceImpl();
		 userService.register(user);
		
		 respect.sendRedirect("login.jsp");

	}

	}


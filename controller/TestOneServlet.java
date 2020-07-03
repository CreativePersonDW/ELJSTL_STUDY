package com.kh.el.model.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class TestOneServlet
 */
@WebServlet("/test1")
public class TestOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("name", "김유저");
		request.setAttribute("age", 20);
		request.setAttribute("phone", "010-1234-5678");
		request.setAttribute("email", "user@naver.com");
		
		ArrayList items = new ArrayList();
		items.add("apple");
		items.add("banana");
		items.add("melon");
		
		request.setAttribute("items", items);
		
		
		HttpSession session = request.getSession();
		session.setAttribute("name", "장보고");
		
		
		RequestDispatcher view = request.getRequestDispatcher("views/el/testEl1.jsp");
		view.forward(request, response);
	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

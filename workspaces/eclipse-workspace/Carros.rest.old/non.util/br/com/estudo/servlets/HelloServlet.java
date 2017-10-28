package br.com.estudo.servlets;

import java.io.IOException;
//import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet{
	private static final long serialVersionUID = 1L ;
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		String nome, sobrenome;
		nome = req.getParameter("nome");
		sobrenome = req.getParameter("sobrenome");
		resp.getWriter().print("Olá mundo Servlets");
		resp.getWriter().print("nome: "+nome+" Sobrenome: "+ sobrenome);
	};
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		String nome, sobrenome;
		nome = req.getParameter("nome");
		sobrenome = req.getParameter("sobrenome");
		resp.getWriter().print("Olá mundo Servlets");
		resp.getWriter().print("nome: "+nome+" Sobrenome: "+ sobrenome);
	};
	@Override
	protected void doPut(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		resp.getWriter().print("olá put");
	};@Override
	protected void doDelete(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		resp.getWriter().print("Olá Delete");
	};

}

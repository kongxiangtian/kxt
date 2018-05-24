package com.kxt.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kxt.dao.exe;

public class Servlet extends HttpServlet {

	public Servlet() {
		super();
	}
	

	public void destroy() {
		super.destroy(); 
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		String action = request.getParameter("op");
		if ("add".equals(action)) {
			add(request, response);
		}
		if ("delete".equals(action)) {
			delete(request, response);
		}
		if ("correct".equals(action)) {
			correct(request, response);
		}
		if ("search".equals(action)) {
			search(request, response);
		}
		if("newgroup".equals(action)){
			newgroup(request,response);
			
		}
		if("groupcorrect".equals(action)){
			groupcorrect(request,response);
		}
			if("cbcorrect".equals(action))
				cbcorrect(request, response);
	}
	
	protected void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String organization = request.getParameter("organization");
		String phonenumber = request.getParameter("phonenumber");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String group = request.getParameter("select");
		String remark = request.getParameter("remark");
		if (name == null || organization == null || phonenumber == null
				|| telephone == null || email == null || address == null
				|| group == null )
			out.print("�������Ҫ����Ϣ");
		else {
			
			int i = exe.add(name, organization, phonenumber, telephone, email,
					address, group, remark);
			if (i > 0)
				out.print("�½���ϵ�˳ɹ�");
			else if (i == 0)
				out.print("����ʧ��");
		}

	}

	protected void delete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		if (name == null)
			out.print("��������Ҫɾ������ϵ����Ϣ ");
		else {
			int i = exe.delete(name);
			if (i > 0)
				out.print("ɾ���ɹ�");
			else if (i == 0)
				out.print("û�д���ϵ��");
		}
	}

	protected void correct(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String op = request.getParameter("select");
		String rs = request.getParameter("result");
		if (rs == null)
			out.print("��������Ҫ�޸ĵ���ϵ�˵���Ϣ ");
		if (name == null)
			out.print("��������Ҫ�޸ĵ���ϵ�˵����� ");
		else {
			int i = exe.correct(name, op, rs);
			if (i > 0)
				out.print("�޸ĳɹ�");
			else if (i == 0)
				out.print("û�д���ϵ��");
		}
	}
	protected void search(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		RequestDispatcher dispatcher = request.getRequestDispatcher("show.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void newgroup(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		String name = request.getParameter("name");
		PrintWriter out = response.getWriter();
		if(name==null){
			out.print("�������������");
		}
		else{
			exe.addgroup(name);
			response.sendRedirect("group.jsp");
		}
	}
	
	protected void groupcorrect(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		String value = request.getParameter("submit");
		PrintWriter out = response.getWriter();
		
		if("correct".equals(value)){
			String sid = request.getParameter("abc");
			int id = Integer.parseInt(sid);
			String name = request.getParameter("name1");
			int i = exe.groupcorrect(name, id);
			if(i==1)
				out.print("�޸ĳɹ�");
			else
				out.print("�޸�ʧ��");
		}
		else if("delete".equals(value)){
			String sid = request.getParameter("abc");
			int id = Integer.parseInt(sid);
			String name = request.getParameter("name1");
			int i = exe.groupdelete(name, id);
			if(i==1)
				out.print("ɾ���ɹ�");
			else
				out.print("ɾ��ʧ��");
		}
	
	}
	
	
	protected void cbcorrect(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setCharacterEncoding("gb2312");
		String value = request.getParameter("submit");	
	    PrintWriter out = response.getWriter();
		
		if("correct".equals(value)){
			String sid = request.getParameter("abc");
			int id = Integer.parseInt(sid);
			String name = request.getParameter("name");
			String og = request.getParameter("organization");
			String pn = request.getParameter("phonenumber");
			String tp = request.getParameter("telephone");
			String em = request.getParameter("email");
			String ad = request.getParameter("address");
			String gp = request.getParameter("group1");
			String rm = request.getParameter("remark");
			int i = exe.cbcorrect(id, name,og,pn,tp,em,ad,gp,rm);
			if(i==1)
				out.print("�޸ĳɹ�");
			else
				out.print("�޸�ʧ��");
		}
		else if("delete".equals(value)){
			String sid = request.getParameter("abc");
			int id = Integer.parseInt(sid);
			
			int i = exe.deletecb(id);
			if(i==1)
				out.print("ɾ���ɹ�");
			else
				out.print("ɾ��ʧ��");
		}
	
	}

}

package myservlet.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.http.*;

public class example5_1_Servlet extends HttpServlet {
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("gb2312");
		String str= request.getParameter("moon");
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		String sevletNameString = getServletName();
		out.println("<html> <body bgcolor=#eeddff>");
		out.println("<b>�����servlet��������"+sevletNameString+"<br>");
		out.println("<b>servlet��web����зǳ���Ҫ<br></b>");
		if(str!= null && str.length() >=1)
			out.println("<br><h2>"+str+"</h2>");
		out.println("</body></html>");
		
	}
}

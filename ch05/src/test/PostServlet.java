package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PostServlet
 */
@WebServlet("/test/PostServlet")
public class PostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pwd");
		String email = request.getParameter("email");
		
		response.setContentType("text/html; charset=EUC-KR;");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>Post Servlet 요청에 대한 응답</h1>");
		out.print("<h3>id : " + id + "</h3>");
		out.print("<h3>pw : " + pw + "</h3>");
		out.print("<h3>email : " + email + "</h3>");
		out.print("</body>");
		out.print("</html>");
	}

}

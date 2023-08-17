package board;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/board/boardUpdate")
public class BoardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		response.setContentType("text/html; charset=EUC-KR");
		
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		BoardMgr bMgr = new BoardMgr();
		BoardBean bean = (BoardBean)session.getAttribute("bean");
		String nowPage = request.getParameter("nowPage");
		
		// read.jsp에서 넣은 값 얻어오기
		BoardBean upBean = new BoardBean();
		upBean.setNum(Integer.parseInt(request.getParameter("num")));
		upBean.setName(request.getParameter("name"));
		upBean.setSubject(request.getParameter("subject"));
		upBean.setContent(request.getParameter("content"));
		upBean.setPass(request.getParameter("pass"));
		upBean.setIp(request.getParameter("ip"));
		
		String upPass = upBean.getPass();
		String inPass = bean.getPass();
		
		if(upPass.equals(inPass)) {
			bMgr.updateBoard(upBean);
			String url = "read.jsp?num=" + upBean.getNum() + "&nowPage=" + nowPage;
			response.sendRedirect(url);
		} else {
			out.print("<script>");
			out.print("alert('비밀번호가 맞지 않습니다');");
			out.print("history.back();");
			out.print("</script>");
		}
		
	}

}









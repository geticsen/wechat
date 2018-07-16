package cn;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONException;
import org.json.JSONObject;
import ulti.Sql;

public class Login extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/plain;charset=utf-8");
		String username = request.getParameter("user");
		String password = request.getParameter("password");
		System.out.println("username:" + username + "  password:" + password);
		
		JSONObject object;
		try {
			new Sql();
			////////////
			// do something
			////////////
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			JSONObject obj = new JSONObject();
			
			obj.put("code", "success");
			obj.put("user", username);
			
			System.out.println(obj.toString());
			out.print(obj.toString());
			out.flush();
			out.close();
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {

	}

}

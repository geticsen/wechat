package cn;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import ulti.DBConnection;

public class Search extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/plain;charset=utf-8");
		String student_id = request.getParameter("id");
		System.out.println("id:" + student_id);
		
		try {
			////////////
			// do something
			////////////
			DBConnection db = new DBConnection();
			ResultSet rs = db.executeQuery("select * from student where id = '" + student_id +"'");
			
			int id = 0;
			String name = "";
			int  age = 0;
			String dept = "";
			String address = "";
			
			while(rs.next()){
				id=rs.getInt("id");
				name=rs.getString("name");
				age=rs.getInt("age");
				dept=rs.getString("dept");
				address=rs.getString("address");
			}
			db.close();
			
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			JSONObject obj = new JSONObject();
			
			obj.put("result", "ok");
			obj.put("id", student_id);
			obj.put("name", name);
			obj.put("age", age);
			obj.put("dept", dept);
			obj.put("address", address);
			
			System.out.println(obj.toString());
			out.print(obj.toString());
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void doSearch(String student_id) {
		try {
			
			DBConnection db = new DBConnection();
			ResultSet rs = db.executeQuery("select * from student where id = '" + student_id +"'");
			
			String id = "";
			String name = "";
			String age = "";
			String dept = "";
			String address = "";
			
			while(rs.next()){
				name=rs.getString("name");
				age=rs.getString("age");
				dept=rs.getString("dept");
				address=rs.getString("address");
			}
			db.close();
			
			JSONObject obj = new JSONObject();
			
			obj.put("result", "ok");
			obj.put("id", id);
			obj.put("name", name);
			obj.put("age", age);
			obj.put("dept", dept);
			obj.put("address", address);
			
			System.out.println(obj.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		doSearch("1000");
	}

}

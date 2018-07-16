package cn;

import java.io.IOException;
import java.io.PrintWriter;
//import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import ulti.DBConnection;
import ulti.Sql;

public class DBTest extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		response.setContentType("text/plain;charset=utf-8");
		String type = request.getParameter("type");
		String score = request.getParameter("score");
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		if(type.equals("1000")){
			reback(response);
		}else if(type.equals("1001")){
			saveScore(score,userid);
		}else if(type.equals("1002")){
			isUser(userid,password,response);
		}else if(type.equals("1003")){
			saveUser(userid,password,response);
		}
	}
	public  void saveScore(String score,String userid){
		System.out.println(score+"  "+userid);
		DBConnection b = new DBConnection();
		// String sql =
		// "insert into student(id,name,age,dept,address) values('1507','Tom',20,'')";
		// b.execute(sql);
		 Date currentTime = new Date();
		 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String dateString = formatter.format(currentTime);
		 String sqlString="insert into uscore(score,userid,time) values('"+score+"','"+userid+"','"+dateString+"')";
	     b.execute(sqlString);
	}
	public  void saveUser(String userid,String password,HttpServletResponse response){
		 System.out.println(userid+"  "+password);
		 DBConnection b = new DBConnection();
		 Date currentTime = new Date();
		 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String dateString = formatter.format(currentTime);
		 String sqlString="insert into ansuser(userid,password,time) values('"+userid+"','"+password+"','"+dateString+"')";
	     b.execute(sqlString);
	       response.setCharacterEncoding("utf-8");
			PrintWriter out;
			try {
				JSONObject obj = new JSONObject();
				out = response.getWriter();
				obj.put("code", "ok");
				System.out.println(obj.toString());
				out.print(obj.toString());
				out.flush();
				out.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
	     b.close();
	}
	public  void isUser(String userid,String password,HttpServletResponse response){
		    System.out.println(userid+"  "+password);
		    int res=0;
		    String pass=null;
		    DBConnection b = new DBConnection();
		    ResultSet rs = b.executeQuery("select * from ansuser where userid='"+userid+"'");
			try {
				if(rs!=null){
					while (rs.next()) {
						pass=rs.getString("password");
						if(pass.equals(password)){
							response.setCharacterEncoding("utf-8");
							PrintWriter out = response.getWriter();
							JSONObject obj = new JSONObject();
							obj.put("code", "ok");
							System.out.println(obj.toString());
							out.print(obj.toString());
							out.flush();
							out.close();  
						}else{
							PrintWriter out = response.getWriter();
							JSONObject obj = new JSONObject();
							obj.put("code", "faild");
							System.out.println(obj.toString());
							out.print(obj.toString());
							out.flush();
							out.close();  
						}
					}
				}else{
					PrintWriter out = response.getWriter();
					JSONObject obj = new JSONObject();
					obj.put("code", "faild");
					System.out.println(obj.toString());
					out.print(obj.toString());
					out.flush();
					out.close(); 
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	     b.close();
	}
    public  void reback(HttpServletResponse response) {
    	try {
			DBConnection b = new DBConnection();
			// String sql =
			// "insert into student(id,name,age,dept,address) values('1507','Tom',20,'')";
			// b.execute(sql);
			ResultSet rs = b.executeQuery("select * from qs");

			ArrayList<Question> list = new ArrayList();
			while (rs.next()) {
				//int tid, String A, String B, String C, String D,String C
				int tid = rs.getInt("tid");
				String question = rs.getString("question");
				String A = rs.getString("A");
				String B = rs.getString("B");
				String C = rs.getString("C");
				String D = rs.getString("D");
				String anwser = rs.getString("anwser");
				Question t = new Question(tid,question,A, B, C, D,anwser);
				list.add(t);
			}
			b.close();
			
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			JSONObject obj = new JSONObject();
			Random r = new Random();
			int j = 0;
			int[] ques = { -1, -1, -1, -1 };
			Random r1 = new Random();
			while (j< 4) {
				int randnumber = r.nextInt(list.size());
				if (!checkInIt(ques,randnumber)) {
					ques[j] = randnumber;
					j++;
					System.out.println(randnumber);
				}
			}
			for(int i=0;i<4;i++){
				Question s = list.get(ques[i]);
				JSONObject qusetion = new JSONObject();
				qusetion.put("tid", s.tid);
				qusetion.put("question", s.question);
				qusetion.put("A", s.A);
				qusetion.put("B", s.B);
				qusetion.put("C", s.C);
				qusetion.put("D", s.D);
				qusetion.put("anwser", s.anwser);
				obj.put(String.valueOf(i+1),qusetion);
			}
			System.out.println(obj.toString());
			out.print(obj.toString());
			out.flush();
			out.close();  
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
    public static  void  main(String args[]) {
    	Date currentTime = new Date(1);
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateString = formatter.format(currentTime);
		System.out.print(dateString);
	}
    public static boolean  checkInIt(int a[],int b) {
    	boolean re=false;
    	for (int i = 0; i < a.length; i++) {
			if (b==a[i]){
				re=true;
			 }
		 }
		return re;
	}
}

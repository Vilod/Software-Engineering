package Dev;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;


public class DevEditSave extends ActionSupport{
	private String inputAccount;
	private String inputName;
	private String inputID;
	private String inputGraduate;
	private String inputSex;
	
	public String edit() throws Exception{
		try {
		      Class.forName("com.mysql.jdbc.Driver");     //����MYSQL JDBC��������   
		     System.out.println("Success loading Mysql Driver!");
		    }
		    catch (Exception e) {
		      System.out.print("Error loading Mysql Driver!");
		      e.printStackTrace();
		    }
		try {
		      Connection connect = DriverManager.getConnection(
		          "jdbc:mysql://localhost:3306/JOB","root","wcp19970221");
		      System.out.println("Success connect Mysql server!");
		      Statement stmt = connect.createStatement();
		      ResultSet rs = stmt.executeQuery("select * from Developer where Account='"+inputAccount+"'");
		      if(rs.next()){
		    	  stmt.executeUpdate("update Developer set Graduate='"+inputGraduate+"' where Account='"+inputAccount+"'");
		    	  stmt.executeUpdate("update Developer set Sex='"+inputSex+"' where Account='"+inputAccount+"'");
		      }  
		} 
		catch (Exception e) {
		      System.out.print("get data error!");
		      e.printStackTrace();
		    }
		return "SUCCESS";
	}

	public String getInputAccount() {
		return inputAccount;
	}

	public void setInputAccount(String inputAccount) {
		this.inputAccount = inputAccount;
	}

	public String getInputName() {
		return inputName;
	}

	public void setInputName(String inputName) {
		this.inputName = inputName;
	}

	public String getInputID() {
		return inputID;
	}

	public void setInputID(String inputID) {
		this.inputID = inputID;
	}

	public String getInputGraduate() {
		return inputGraduate;
	}

	public void setInputGraduate(String inputGraduate) {
		this.inputGraduate = inputGraduate;
	}

	public String getInputSex() {
		return inputSex;
	}

	public void setInputSex(String inputSex) {
		this.inputSex = inputSex;
	}
	
	
}

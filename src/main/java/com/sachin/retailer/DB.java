package com.sachin.retailer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DB {
	Connection con;
	public void createDB() {
		try {
//			String url = "jdbc:mysql://mysql.cgnehgfj1odk.us-west-2.rds.amazonaws.com:3306/retailer";
			//String url = "jdbc:mysql://localhost:3306/retailer";
			String url = "jdbc:mysql://localhost:3306/new_schema";
			//String user = "sachinsri";
			String user = "root";
			//String password = "Sach25sach";
			String password = "Sach#2582";
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			con = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<RetailerDetail> getData() {
		
		createDB();
		Statement st1 = null;
		ResultSet rs1 = null;
		ArrayList<RetailerDetail> rlist= new ArrayList<RetailerDetail>();
		RetailerDetail rd=null;
	
		
		try {	
		st1 = con.createStatement();
		} catch (NullPointerException ne) {
			// TODO Auto-generated catch block
			ne.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try
		{
			rs1=st1.executeQuery("select * from mnretailers limit 10;");
		} catch (NullPointerException ne) {
		// TODO Auto-generated catch block
			ne.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
//		insertPst.close();
			try {
				while (rs1.next())
				{
					rd= new RetailerDetail(rs1.getString(1),rs1.getString(2),rs1.getString(3),rs1.getString(4)); 
					rlist.add(rd);
				}
//					System.out.println( rs1.getString(1) );
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	return rlist;

	}
	
	protected void finalize()
	{
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			super.finalize();
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}


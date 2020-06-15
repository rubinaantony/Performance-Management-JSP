package com.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.java.beans.LoginBean;
import  com.java.dao.DBDAO;
public class LoginDAO {
	static Connection con=null;
	static PreparedStatement pst=null;
	static ResultSet rs=null;
	static boolean flag=false;


	//----------get-database-connection---------//
	/**
	*
	* @author : Rubina Brijith Antony
	* @date   :15.06.2020
	* @see    :nothing
	* @version:1.0
	* @param  :loginBean
	* @throws :SQLException
	* @return :Connection
	*/

	public static Connection getDbConnection()throws SQLException{


		try	  {
				DBDAO.connect();
				con=DBDAO.getDbCon();
		   
	}	catch(ClassNotFoundException  ex)		   {
			 ex.printStackTrace();
		}catch(SQLException e)		{
			e.printStackTrace();
		}
		return con;
	}
	//---------------END--------------------
	
	//----------checking user ---------//
	/**
	*
	* @author : Rubina Brijith Antony
	* @date   :15.06.2020
	* @purpose:check user validity
	* @see    :nothing
	* @version:1.0
	* @param  :loginBean
	* @throws :SQLException
	* @return :int
	*/
	public static int check(LoginBean loginBean)throws SQLException{
		
		int i=0;
	    try{
	        
	        con=getDbConnection();
	    pst=con.prepareStatement("select * from tbl_feedbacklogin where l_username=? and l_password=?");
	    pst.setString(1, loginBean.getUsername());
	    pst.setString(2, loginBean.getPassword()); 
	   
	    
	   rs=pst.executeQuery();
	  
	    while(rs.next()){
	    	String role=rs.getString(4);
	        if(role.equalsIgnoreCase("admin")) {
	          i=1;
	           
	        }
	        else if(role.equalsIgnoreCase("employee")){
	        	
	        	i=2;
	        }
	       
	    	
	    }
	    
	} catch(Exception e){
	    e.printStackTrace();
	}
	return i;
	}
	//-------------END-----------------
	
	//-------------Updating Login Details-----------------
		/**
		*
		* @author :AURUM
		* @purpose:update
		* @date   :12.11.2019
		* @see    :nothing
		* @version:1.0
		* @param  :loginBean
		* @throws :SQLException
		* @return :boolean
		*/
	   
	public static boolean update(LoginBean loginBean) throws SQLException{
    	flag=false;
try{
            
        con=getDbConnection();
        pst=con.prepareStatement("update tbl_feedbacklogin set l_password=? where l_username=?");
        pst.setString(1, loginBean.getPassword()); 
        pst.setString(2, loginBean.getUsername()); 
        pst.executeUpdate();
        flag=true;
    } catch(Exception e){
        e.printStackTrace();
    }
    return flag;
    }


	}

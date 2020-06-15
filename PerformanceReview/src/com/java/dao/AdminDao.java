package com.java.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.java.dao.DBDAO;
import com.java.beans.AdminBean;
import com.java.beans.EmployeeBean;



public class AdminDao {

		static Connection con=null;
	    static PreparedStatement pst=null;
	    static ResultSet rs=null;
		  static boolean flag=false;
		//----------get-database-connection---------//
		  /**
			 *
			 * @author : Rubina Brijith Antony 
			 * @date   : 15/06/2020
			 * @version: 1.0
			 * @purpose: set connection
			 * @param  : Connection
			 * @return : connection
			 
			 */
		  public static Connection getDbConnection()throws SQLException{
		      
			    
				try	  {
						DBDAO.connect();
						con=DBDAO.getDbCon();
				   
			  }	catch(ClassNotFoundException  ex){
					 ex.printStackTrace();
				}catch(SQLException e)		{
					e.printStackTrace();
				}
				return con;
		    }
		  
		  //------------------------------END-----------------------//
		  
		  
		  
		  //-------------------------get users-----------------------//
		  
		  /**
			 *
			 * @author : Rubina Brijith Antony 
			 * @date   : 15/06/2020
			 * @version: 1.0
			 * @purpose: get list of employees
			 * @param  : -
			 * @return : Resultset
			 
			 */
		  
		  public static ResultSet getUname() throws SQLException{
			  	
			  	
			      try{
			          
			          con=getDbConnection();
			      pst=con.prepareStatement("select l_username from tbl_feedbacklogin where l_role='employee'");
			     rs=pst.executeQuery();
			      
			  			      
			  }
			      catch(SQLException e)		{
						e.printStackTrace();
					}
			      return rs;

		  }	   
		  //----------------------End-----------------------//
		  
		  //---------------------Insert Feedback---------------------//
		  
		  /**
			 *
			 * @author : Rubina Brijith Antony 
			 * @date   : 15/06/2020
			 * @version: 1.0
			 * @purpose: To insert feedback
			 * @param  : AdminBean
			 * @return : boolean
			 
			 */
		  public static boolean insertReview(AdminBean adminBean) throws SQLException{
		      
		      try{
		          
		          con=getDbConnection();
		      pst=con.prepareStatement("insert into review_emp(reviewedperson,reviewingperson,feedback,review)values(?,?,?,?)");
		      pst.setString(1, adminBean.getReviewedPerson()); 
		      pst.setString(2,adminBean.getReviewingPerson());
		      pst.setString(3,adminBean.getFeedback());
		      pst.setString(4,adminBean.getReview());
		      pst.executeUpdate();
		      flag=true;
		  } catch(Exception e){
		      e.printStackTrace();
		  }
		  return flag;
		      
		  }
//---------------------------End---------------------------//
		  
//--------------------------Get feedback details---------------------//
		  /**
			 *
			 * @author : Rubina Brijith Antony 
			 * @date   : 15/06/2020
			 * @version: 1.0
			 * @purpose: To get feedbacks of each employee
			 * @param  : String
			 * @return : ResultSet
			 
			 */	  
public static ResultSet getFeedbackDetails(String uname) throws SQLException{
  	
  	
    try{
        
        con=getDbConnection();
    pst=con.prepareStatement("select r_id,reviewedperson,reviewingperson,review from review_emp where reviewingperson=?");
    pst.setString(1, uname);
   rs=pst.executeQuery();
    
			      
}
    catch(SQLException e)		{
			e.printStackTrace();
		}
    return rs;

}	   
//----------------------End-----------------------//

//--------------------------Get feedback details---------------------//

/**
*
* @author : Rubina Brijith Antony 
* @date   : 15/06/2020
* @version: 1.0
* @purpose: To fetch details of performance review
* @param  : -
* @return : ResultSet

*/
public static ResultSet getReviewDetails() throws SQLException{
	
	
  try{
      
      con=getDbConnection();
  pst=con.prepareStatement("select r_id,reviewedperson,reviewingperson,review from review_emp");
 rs=pst.executeQuery();
  
			      
}
  catch(SQLException e)		{
			e.printStackTrace();
		}
  return rs;

}	   

//--------------------------Get feedback details---------------------//

/**
*
* @author : Rubina Brijith Antony 
* @date   : 15/06/2020
* @version: 1.0
* @purpose: To update performance review details
* @param  : AdminBean
* @return : boolean

*/
public static boolean updateReview(AdminBean adminBean) throws SQLException {

	try {

		con = getDbConnection();
		pst = con.prepareStatement(
				"update review_emp set reviewedperson=?,reviewingperson=?,review=? where r_id=?");

		pst.setString(1, adminBean.getReviewedPerson());
		pst.setString(2, adminBean.getReviewingPerson());
		pst.setString(3, adminBean.getReview());
		pst.setInt(4, adminBean.getId());
		pst.executeUpdate();
		flag = true;
	} catch (Exception e) {
		e.printStackTrace();
	}
	return flag;

}
// ------------------------------END----------------------------

//------------------------------View Reviews ----------------------------

/**
 * @author : Rubina Brijith Antony
 * @purpose: view Review Details
 * @date: 15-06-2020
 * @param: AdminBean
 * @throws:SQLException
 * @return:Arraylist
 */

public static ArrayList<AdminBean> viewReview() throws SQLException {

	ArrayList<AdminBean> eb = new ArrayList<AdminBean>();
	try {

		con = getDbConnection();
		pst = con.prepareStatement("select * from review_emp");
		rs = pst.executeQuery();
		while (rs.next()) {
			AdminBean adminBean = new AdminBean();
			adminBean.setId(rs.getInt(1));
			adminBean.setReviewedPerson(rs.getString(2));
			adminBean.setReviewingPerson(rs.getString(3));
			adminBean.setReview(rs.getString(5));
		

			eb.add(adminBean);
		}

	} catch (Exception e) {
		e.printStackTrace();
	}
	return eb;

}

// --------------------------END--------------------

//------------------------------Add Feedback ----------------------------

/**
* @author : Rubina Brijith Antony
* @purpose: view Review Details
* @date	  : 15-06-2020
* @param  : AdminBean
* @throws : SQLException
* @return : Arraylist
*/

public static boolean updatefeedback(AdminBean adminBean) throws SQLException {

	try {

		con = getDbConnection();
		pst = con.prepareStatement(
				"update review_emp set feedback=? where r_id=?");

		pst.setString(1, adminBean.getFeedback());
		pst.setInt(2, adminBean.getId());
		pst.executeUpdate();
		flag = true;
	} catch (Exception e) {
		e.printStackTrace();
	}
	return flag;

}
// ---------------------------------END-------------------------
	
}

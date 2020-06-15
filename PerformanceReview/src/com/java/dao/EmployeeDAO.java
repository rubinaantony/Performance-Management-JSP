package com.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.java.beans.EmployeeBean;

public class EmployeeDAO {

	static Connection con = null;
	static PreparedStatement pst = null;
	static ResultSet rs = null;
	static boolean flag = false;
	
	//----------get-database-connection---------//
	/**
	 * @author : Rubina Brijith Antony
	 * @date   : 15/06/2020
	 * @purpose: connection
	 * @see: nothing
	 * @version:1.0
	 * @param:EmployeeBean
	 * @throws:SQLException
	 * @return:Connection
	 */

	public static Connection getDbConnection() throws SQLException {

		try {
			DBDAO.connect();
			con = DBDAO.getDbCon();

		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	// -------------

	/**
	 * @author : Rubina Brijith Antony
	 * @date   : 15/06/2020
	 * @purpose: Insertion Employee Details
	 * @see: nothing
	 * @version:1.0
	 * @param:EmployeeBean
	 * @throws:SQLException
	 * @return:Boolean
	 */

	public static boolean insertEmployee(EmployeeBean employeeBean) throws SQLException {

		try {

			con = getDbConnection();
			pst = con.prepareStatement(
					"insert into TBL_EMPLOYEEREVIEW(e_number,e_name,e_username,e_password,e_address,e_mobile,e_email,e_role)values(?,?,?,?,?,?,?,?)");
			pst.setInt(1, employeeBean.getEno());
			pst.setString(2, employeeBean.getEname());
			pst.setString(3, employeeBean.getEusername());
			pst.setString(4, employeeBean.getEpassword());
			pst.setString(5, employeeBean.getEaddress());
			pst.setString(6, employeeBean.getEmobile());
			pst.setString(7, employeeBean.getEemail());
			pst.setString(8, employeeBean.getErole());
			pst.executeUpdate();
			flag = true;
			if (flag == true) {
				pst = con.prepareStatement("insert into TBL_FEEDBACKLOGIN(l_username,l_password,l_role)values(?,?,?)");
				pst.setString(1, employeeBean.getEusername());
				pst.setString(2, employeeBean.getEpassword());
				pst.setString(3, employeeBean.getErole());
				pst.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;

	}
	// --------------------------------END------------
	
	
//---------------------------------View Employee Details--------------
	/**
	 * @author : Rubina Brijith Antony
	 * @date   : 15/06/2020
	 * @purpose: view Employee Details
	 * @see: nothing
	 * @version:1.0
	 * @param:EmployeeBean
	 * @throws:SQLException
	 * @return:Arraylist
	 */

	public static ArrayList<EmployeeBean> viewEmployee() throws SQLException {

		ArrayList<EmployeeBean> eb = new ArrayList<EmployeeBean>();
		try {

			con = getDbConnection();
			pst = con.prepareStatement("select * from TBL_EMPLOYEEREVIEW");
			rs = pst.executeQuery();
			while (rs.next()) {
				EmployeeBean employeeBean = new EmployeeBean();
				employeeBean.setEno(rs.getInt(2));
				employeeBean.setEname(rs.getString(3));
				employeeBean.setEusername(rs.getString(4));
				employeeBean.setEpassword(rs.getString(5));
				employeeBean.setEaddress(rs.getString(6));
				employeeBean.setEmobile(rs.getString(7));
				employeeBean.setEemail(rs.getString(8));
				employeeBean.setErole(rs.getString(9));

				eb.add(employeeBean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return eb;

	}

	// ----------------------------------------------
	/**
	 * @author : Rubina Brijith Antony
	 * @date   : 15/06/2020
	 * @purpose: update Employee details
	 * @see: nothing
	 * @version:1.0
	 * @param:EmployeeBean
	 * @throws:SQLException
	 * @return:boolean
	 */

	public static boolean updateEmployee(EmployeeBean employeeBean) throws SQLException {

		try {

			con = getDbConnection();
			pst = con.prepareStatement(
					"update TBL_EMPLOYEEREVIEW set e_name=?,e_username=?,e_password=?,e_address=?,e_mobile=?,e_email=?,e_role=? where e_number=?");

			pst.setString(1, employeeBean.getEname());
			pst.setString(2, employeeBean.getEusername());
			pst.setString(3, employeeBean.getEpassword());
			pst.setString(4, employeeBean.getEaddress());
			pst.setString(5, employeeBean.getEmobile());
			pst.setString(6, employeeBean.getEemail());
			pst.setString(7, employeeBean.getErole());
			pst.setInt(8, employeeBean.getEno());
			pst.executeUpdate();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;

	}
	// ------------------------------END----------------------------
	
	//-------------------------DeleteEmployee--------------

	/**
	 * @author : Rubina Brijith Antony
	 * @date   : 15/06/2020
	 * @purpose: delete Employee details
	 * @see: nothing
	 * @version:1.0
	 * @param:EmployeeBean
	 * @throws:SQLException
	 * @return: boolean
	 */
	public static boolean deleteEmployee(EmployeeBean employeeBean) throws SQLException {

		try {

			con = getDbConnection();
			pst = con.prepareStatement("delete from TBL_EMPLOYEEREVIEW where e_number=?");
			pst.setInt(1, employeeBean.getEno());
			pst.executeUpdate();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;

	}

	// ----------------------------END------------------

}

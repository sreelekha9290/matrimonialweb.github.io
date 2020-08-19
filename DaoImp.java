import inf.DaoInf;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import pojo.Pay;
import pojo.User;
import pojo.Users;

public class DaoImp implements DaoInf {
	DaoUtil daoUtil = DaoUtil.getObject();

	@Override
	public boolean addUser(User user) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println(Class.forName("com.mysql.jdbc.Driver"));
			/* DriverManager.registerDriver("com.mysql.jdbc.Driver"); */
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/matrimonial", "root", "root");
			System.out.println("connection established");
			/*
			 * con = daoUtil.getConnection(); System.out.println(con);
			 */
			pstmt = con
					.prepareStatement("INSERT INTO user(id,profile,name,gender,age,religion,language,country,email,password,mobile,securityQus,answer,sign) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

			pstmt.setInt(1, user.getId());
			pstmt.setString(2, user.getProfile());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getGender());
			pstmt.setInt(5, user.getAge());
			pstmt.setString(6, user.getReligion());
			pstmt.setString(7, user.getLanguage());
			pstmt.setString(8, user.getCountry());
			pstmt.setString(9, user.getEmail());
			pstmt.setString(10, user.getPassword());
			pstmt.setString(11, user.getMobile());
			pstmt.setString(12, user.getQuestion());
			pstmt.setString(13, user.getAnswer());
			pstmt.setString(14, user.getSign());
			/* System.out.println(pstmt); */
			int i = pstmt.executeUpdate();
			if (i > 0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			daoUtil.closeConnectionCP(con, pstmt);
		}

		return false;
	}

	@Override
	public User validateUser(String email, String password) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = null;
		try {
			/*[
			 * Class.forName("com.mysql.jdbc.Driver");
			 * System.out.println(Class.forName("com.mysql.jdbc.Driver")); con =
			 * DriverManager
			 * .getConnection("jdbc:mysql://localhost:3306/matrimonial", "root",
			 * "root"); System.out.println("connection established");
			 */
			con = daoUtil.getConnection();
			pstmt = con
					.prepareStatement("SELECT * FROM user WHERE email=? AND password=?");
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setProfile(rs.getString("profile"));
				user.setName(rs.getString("name"));
				user.setGender(rs.getString("gender"));
				user.setAge(rs.getInt("age"));
				user.setReligion(rs.getString("religion"));
				user.setLanguage(rs.getString("language"));
				user.setCountry(rs.getString("country"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setMobile(rs.getString("mobile"));
				user.setQuestion(rs.getString("securityqus"));
				user.setAnswer(rs.getString("answer"));
				user.setSign(rs.getString("sign"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			daoUtil.closeConnectionCPR(con, pstmt, rs);
		}
		return user;
	}

	@SuppressWarnings("null")
	@Override
	public User getUser(String email) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = null;
		try {
			daoUtil.getConnection();
			pstmt = con.prepareStatement("SELECT * FROM user WHERE email=?");
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setProfile(rs.getString("profile"));
				user.setName(rs.getString("name"));
				user.setGender(rs.getString("gender"));
				user.setAge(rs.getInt("age"));
				user.setReligion(rs.getString("religion"));
				user.setLanguage(rs.getString("language"));
				user.setCountry(rs.getString("country"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setMobile(rs.getString("mobile"));
				user.setSign(rs.getString("sign"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			daoUtil.closeConnectionCPR(con, pstmt, rs);
		}

		return user;
	}

	@Override
	public List<User> viewAllUsers() {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		User user = null;
		List<User> list = new ArrayList<User>();
		try {
			con = daoUtil.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery("SELECT * FROM user");
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setGender(rs.getString("gender"));
				user.setAge(rs.getInt("age"));
				user.setReligion(rs.getString("religion"));
				user.setCountry(rs.getString("country"));
				user.setSign(rs.getString("sign"));
				list.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			daoUtil.closeConnectionCSR(con, stmt, rs);
		}
		return list;
	}

	@Override
	public List<Users> getUserByAge(int age) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Users users = null;
		List<Users> ulist = new ArrayList<Users>();
		try {
			con = daoUtil.getConnection();
			pstmt = con.prepareStatement("SELECT * FROM users WHERE age=?");
			pstmt.setInt(1, age);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				users = new Users();
				users.setId(rs.getInt("id"));
				users.setProfile(rs.getString("profile"));
				users.setName(rs.getString("name"));
				users.setGender(rs.getString("gender"));
				users.setAge(rs.getInt("age"));
				users.setReligion(rs.getString("religion"));
				users.setLanguage(rs.getString("language"));
				users.setCountry(rs.getString("country"));
				users.setEmail(rs.getString("email"));
				users.setPassword(rs.getString("password"));
				users.setMobile(rs.getString("mobile"));
				users.setQuestion(rs.getString("securityqus"));
				users.setAnswer(rs.getString("answer"));
				users.setSign(rs.getString("sign"));
				ulist.add(users);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			daoUtil.closeConnectionCPR(con, pstmt, rs);
		}
		return ulist;

	}

	@Override
	public List<Users> getUserBySign(String sign) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Users users = null;
		List<Users> ulist = new ArrayList<Users>();
		try {
			con = daoUtil.getConnection();
			pstmt = con.prepareStatement("SELECT * FROM users WHERE sign=?");
			pstmt.setString(1, sign);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				users = new Users();
				/*String gen=rs.getString("gender");
				System.out.println(gen);
				String gen1=users.getGender();
				System.out.println(gen1);
				if(gen1.equalsIgnoreCase(gen)){*/
				users.setId(rs.getInt("id"));
				users.setProfile(rs.getString("profile"));
				users.setName(rs.getString("name"));
				users.setGender(rs.getString("gender"));
				users.setAge(rs.getInt("age"));
				users.setReligion(rs.getString("religion"));
				users.setLanguage(rs.getString("language"));
				users.setCountry(rs.getString("country"));
				users.setEmail(rs.getString("email"));
				users.setPassword(rs.getString("password"));
				users.setMobile(rs.getString("mobile"));
				users.setQuestion(rs.getString("securityqus"));
				users.setAnswer(rs.getString("answer"));
				users.setSign(rs.getString("sign"));
				ulist.add(users);
				System.out.println(ulist);
			}
			/*}*/
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			daoUtil.closeConnectionCPR(con, pstmt, rs);
		}
		return ulist;

	}

	@Override
	public String forgotPass(String email, String answer, String pass) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = daoUtil.getConnection();
			pstmt = con
					.prepareStatement("SELECT password FROM user WHERE email=? and answer=?");
			pstmt.setString(1, email);
			pstmt.setString(2, answer);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				pass = rs.getString("password");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			daoUtil.closeConnectionCPR(con, pstmt, rs);
		}
		return pass;
	}

	@Override
	public int changePass(User u, String sql) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int i = 0;
		String email = u.getEmail();
		try {
			con = daoUtil.getConnection();
			/*
			 * pstmt =
			 * con.prepareStatement("SELECT password FROM user WHERE email=?");
			 * pstmt.setString(1, email);
			 */
			/*
			 * rs = pstmt.executeQuery(); while (rs.next()) { user = new User();
			 * user.setEmail(rs.getString("password")); }
			 */
			/*
			 * pstmt=con.prepareStatement(sql);
			 * pstmt.setString(1,u.getPassword());
			 * pstmt.setString(2,u.getEmail()); i = pstmt.executeUpdate();
			 */
			pstmt = con
					.prepareStatement("SELECT password FROM user WHERE email=?");
			pstmt.setString(1, email);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			daoUtil.closeConnectionCPR(con, pstmt, rs);
		}
		return i;
	}

	@Override
	public String getPass(String email) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet pass = null;
		/*
		 * try { con = daoUtil.getConnection(); pstmt = con
		 * .prepareStatement("SELECT password FROM user WHERE email=?");
		 * pstmt.setString(1, email); pass = pstmt.executeQuery(); String
		 * sqlpass = pass.getString("password"); } catch (Exception e) {
		 * e.printStackTrace(); }
		 */
		return email;
	}

	@Override
	public boolean deleteAcc(String email, String mobile) {
		Connection con = null;
		PreparedStatement pstmt = null;
	
		try {
			con = daoUtil.getConnection();
			pstmt = con
					.prepareStatement("DELETE FROM user WHERE email=? and mobile=?");
			pstmt.setString(1, email);
			pstmt.setString(2, mobile);
			int i = pstmt.executeUpdate();
			if (i > 0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			daoUtil.closeConnectionCP(con, pstmt);
		}

		return false;
	}
	@Override
	public String paid(String email, String mobile,String status) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = daoUtil.getConnection();
			pstmt = con
					.prepareStatement("SELECT status FROM paid WHERE email=? and mobile=?");
			pstmt.setString(1, email);
			pstmt.setString(2, mobile);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				status = rs.getString("status");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			daoUtil.closeConnectionCPR(con, pstmt, rs);
		}

		return status;
	}
	public boolean addPay(Pay pay) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println(Class.forName("com.mysql.jdbc.Driver"));
			/* DriverManager.registerDriver("com.mysql.jdbc.Driver"); */
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/matrimonial", "root", "root");
			System.out.println("connection established");
			/*
			 * con = daoUtil.getConnection(); System.out.println(con);
			 */
			pstmt = con
					.prepareStatement("INSERT INTO paid(pay_mode,email,mobile,status) VALUES(?,?,?,?)");

			pstmt.setString(1, pay.getPaymode());
			pstmt.setString(2, pay.getEmail());
			pstmt.setString(3, pay.getMobile());
			pstmt.setString(4,pay.getStatus());
			/* System.out.println(pstmt); */
			int i = pstmt.executeUpdate();
			if (i > 0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			daoUtil.closeConnectionCP(con, pstmt);
		}
		return false;
	}
	
	@Override
	public boolean addUsers(Users users) {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println(Class.forName("com.mysql.jdbc.Driver"));
			/* DriverManager.registerDriver("com.mysql.jdbc.Driver"); */
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/matrimonial", "root", "root");
			System.out.println("connection established");
			/*
			 * con = daoUtil.getConnection(); System.out.println(con);
			 */
			pstmt = con
					.prepareStatement("INSERT INTO users(id,profile,name,gender,age,religion,language,country,email,password,mobile,securityQus,answer,sign) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

			pstmt.setInt(1, users.getId());
			pstmt.setString(2, users.getProfile());
			pstmt.setString(3, users.getName());
			pstmt.setString(4, users.getGender());
			pstmt.setInt(5, users.getAge());
			pstmt.setString(6, users.getReligion());
			pstmt.setString(7, users.getLanguage());
			pstmt.setString(8, users.getCountry());
			pstmt.setString(9, users.getEmail());
			pstmt.setString(10, users.getPassword());
			pstmt.setString(11, users.getMobile());
			pstmt.setString(12, users.getQuestion());
			pstmt.setString(13, users.getAnswer());
			pstmt.setString(14, users.getSign());
			/* System.out.println(pstmt); */
			int i = pstmt.executeUpdate();
			if (i > 0)
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			daoUtil.closeConnectionCP(con, pstmt);
		}
		return false;
	}
}

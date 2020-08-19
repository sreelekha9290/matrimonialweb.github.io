import java.util.List;

import pojo.Pay;
import pojo.User;
import pojo.Users;
import inf.DaoInf;
import inf.serviceInf;


public class ServiceImp implements serviceInf {
	private DaoInf daoInf;

	
	public ServiceImp() {
		
		daoInf = new DaoImp();

		}


	@Override
	public boolean addUser(User user) {
		return daoInf.addUser(user);
	}


	@Override
	public User validateUser(String email, String password) {
		return daoInf.validateUser(email, password);
	}


	@Override
	public User getUser(String email) {
		return daoInf.getUser(email);
	}


	@Override
	public List<User> viewAllUsers() {
		return daoInf.viewAllUsers();
	}


	@Override
	public List<Users> getUserByAge(int age) {
		return daoInf.getUserByAge(age);
	}


	@Override
	public List<Users> getUserBySign(String sign) {
		return daoInf.getUserBySign(sign);
	}





	@Override
	public String forgotPass(String email, String answer,String pass) {
		
		return daoInf.forgotPass(email, answer,pass);
	}


	@Override
	public int changePass(User u, String sql) {
		
		return daoInf.changePass(u, sql);
	}


	@Override
	public String getPass(String email) {

		return daoInf.getPass(email);
	}


	@Override
	public boolean deleteAcc(String email, String mobile) {
		
		return daoInf.deleteAcc(email, mobile);
	}


	@Override
	public boolean addUsers(Users users) {
		
		return daoInf.addUsers(users);
	}


	@Override
	public String paid(String email, String mobile, String status) {
		
		return daoInf.paid(email, mobile, status);
	}


	@Override
	public boolean addPay(Pay pay) {
		return daoInf.addPay(pay);
	}

		
}

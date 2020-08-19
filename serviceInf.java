package inf;

import java.util.List;

import pojo.Pay;
import pojo.User;
import pojo.Users;

public interface serviceInf {

	boolean addUser(User user);

	User validateUser(String email, String password);

	User getUser(String email);

	List<User> viewAllUsers();

	List<Users> getUserBySign(String sign);

	List<Users> getUserByAge(int age);

	String forgotPass(String email, String answer, String pass);

	boolean deleteAcc(String email, String mobile);

	int changePass(User u, String sql);

	String getPass(String email);

	boolean addUsers(Users users);
	String paid(String email, String mobile,String status);
	boolean addPay(Pay pay);

}

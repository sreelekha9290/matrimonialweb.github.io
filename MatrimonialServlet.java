import inf.serviceInf;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Pay;
import pojo.User;
import pojo.Users;

/**
 * Servlet implementation class MatrimonialServlet
 */
@WebServlet("*.do")
public class MatrimonialServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private serviceInf serviceInf;

	public MatrimonialServlet() {
		super();
		serviceInf = new ServiceImp();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		String uri = req.getRequestURI();
		List<Users> ulist = null;
		System.out.println(ulist);
		
		Users users = null;
		/*session.setAttribute("user", user);*/
		/* session.setAttribute("users",users); */
		if (uri.endsWith("validateuser.do")) {
			User user = new User();
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			user = serviceInf.validateUser(email, password);
			if (user != null) {
				session.setAttribute("user", user);
				req.getRequestDispatcher("home.jsp").forward(req, resp);

			} else {
				req.setAttribute("email", email);
				req.setAttribute("ERROR", "Username or Password is incorrect");
				req.getRequestDispatcher("login.jsp").include(req, resp);

			}
		}else if(uri.endsWith("paid.do")){
			String email=req.getParameter("email");
			String mob=req.getParameter("mobile");
			String status=(String)req.getAttribute("status");
			String sta=serviceInf.paid(email, mob, status);
			if (sta != null) {
				req.getRequestDispatcher("search.jsp").forward(req, resp);
			} else {
				req.setAttribute("ERROR", "You have to pay first");
				req.getRequestDispatcher("pay.jsp").forward(req, resp);

			}
		}else if(uri.endsWith("pay.do")){
			Pay pay=new Pay();
			pay.setPaymode(req.getParameter("pay_mode"));
			pay.setUid(Integer.parseInt(req.getParameter("uid")));
			pay.setEmail(req.getParameter("email"));
			pay.setMobile(req.getParameter("mobile"));
			pay.setStatus(req.getParameter("status"));
			if(serviceInf.addPay(pay)){
				System.out.println("paid successfully");
				req.setAttribute("SUCCESS", "User paid Successfully");
				req.getRequestDispatcher("search.jsp").forward(req, resp);

			} else {
				System.out.println("not paid");
				req.setAttribute("ERROR", "User Not Paid");
				req.getRequestDispatcher("payment.jsp").include(req, resp);

			}
		} else if (uri.endsWith("adduser.do")) {
			req.getRequestDispatcher("signup.jsp").forward(req, resp);
		} else if (uri.endsWith("adduser.do")) {
			User user = new User();
			users = new Users();
			user.setId(Integer.parseInt(req.getParameter("id")));
			user.setName(req.getParameter("name"));
			user.setProfile(req.getParameter("profile"));
			user.setGender(req.getParameter("gender"));
			user.setAge(Integer.parseInt(req.getParameter("age")));
			user.setReligion(req.getParameter("religion"));
			user.setLanguage(req.getParameter("language"));
			user.setCountry(req.getParameter("country"));
			user.setEmail(req.getParameter("email"));
			user.setPassword(req.getParameter("password"));
			user.setMobile(req.getParameter("mobile"));
			user.setQuestion(req.getParameter("securityqus"));
			user.setAnswer(req.getParameter("answer"));
			user.setSign(req.getParameter("sign"));

			users.setId(Integer.parseInt(req.getParameter("id")));
			users.setName(req.getParameter("name"));
			users.setProfile(req.getParameter("profile"));
			users.setGender(req.getParameter("gender"));
			users.setAge(Integer.parseInt(req.getParameter("age")));
			users.setReligion(req.getParameter("religion"));
			users.setLanguage(req.getParameter("language"));
			users.setCountry(req.getParameter("country"));
			users.setEmail(req.getParameter("email"));
			users.setPassword(req.getParameter("password"));
			users.setMobile(req.getParameter("mobile"));
			users.setQuestion(req.getParameter("securityqus"));
			users.setAnswer(req.getParameter("answer"));
			users.setSign(req.getParameter("sign"));

			if (serviceInf.addUser(user) && serviceInf.addUsers(users)) {
				System.out.println("added successfully");
				req.setAttribute("ADDED", "User Added Successfully");
				req.getRequestDispatcher("home.jsp").forward(req, resp);

			} else {
				System.out.println("not added");
				req.setAttribute("ERROR", "User Not Added");
				req.getRequestDispatcher("home.jsp").include(req, resp);

			}
		} else if (uri.endsWith("signup.do")) {
			User user = new User();
			users = new Users();
			user.setId(Integer.parseInt(req.getParameter("id")));
			user.setName(req.getParameter("name"));
			user.setProfile(req.getParameter("profile"));
			user.setGender(req.getParameter("gender"));
			user.setAge(Integer.parseInt(req.getParameter("age")));
			user.setReligion(req.getParameter("religion"));
			user.setLanguage(req.getParameter("language"));
			user.setCountry(req.getParameter("country"));
			user.setEmail(req.getParameter("email"));
			user.setPassword(req.getParameter("password"));
			user.setMobile(req.getParameter("mobile"));
			user.setQuestion(req.getParameter("securityqus"));
			user.setAnswer(req.getParameter("answer"));
			user.setSign(req.getParameter("sign"));

			users.setId(Integer.parseInt(req.getParameter("id")));
			users.setName(req.getParameter("name"));
			users.setProfile(req.getParameter("profile"));
			users.setGender(req.getParameter("gender"));
			users.setAge(Integer.parseInt(req.getParameter("age")));
			users.setReligion(req.getParameter("religion"));
			users.setLanguage(req.getParameter("language"));
			users.setCountry(req.getParameter("country"));
			users.setEmail(req.getParameter("email"));
			users.setPassword(req.getParameter("password"));
			users.setMobile(req.getParameter("mobile"));
			users.setQuestion(req.getParameter("securityqus"));
			users.setAnswer(req.getParameter("answer"));
			users.setSign(req.getParameter("sign"));

			if (serviceInf.addUser(user) && serviceInf.addUsers(users)) {
				req.setAttribute("SUCCESS",
						"Signup done Successfully. Please Login here.");
				req.getRequestDispatcher("login.jsp").forward(req, resp);

			} else {
				req.setAttribute("ERROR", "Signup Failed");
				req.getRequestDispatcher("signup.jsp").include(req, resp);

			}
		} else if (uri.endsWith("forgot.do")) {
			User user = new User();
			String uemail = req.getParameter("email");
			System.out.println(uemail);
			String ans = req.getParameter("answer");
			System.out.println(ans);
			String password = (String) req.getAttribute("password");
			System.out.println(password);
			String data = serviceInf.forgotPass(uemail, ans, password);
			/* System.out.println(data); */
			if (data != null) {
				req.setAttribute("SUCCESS", "Your Password is '" + data + "'");
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			} else {
				System.out.println("error");
				req.setAttribute("ERROR",
						"Please check your Email or Security answer");
				req.getRequestDispatcher("forgotpass.jsp").forward(req, resp);

			}
		} else if (uri.endsWith("del.do")) {
			String uemail = req.getParameter("email");
			String mob = req.getParameter("mobile");
			System.out.println(uemail);
			System.out.println(mob);
			if (serviceInf.deleteAcc(uemail, mob)) {
				System.out.println("deleted successfully");
				req.setAttribute("SUCCESS", "User Deleted Successfully");
				req.getRequestDispatcher("login.jsp").forward(req, resp);

			} else {
				System.out.println("not deleted");
				req.setAttribute("ERROR", "User Not Deleted");
				req.getRequestDispatcher("viewuser.jsp").include(req, resp);

			}
		} else if (uri.endsWith("searchbyage.do")) {

			int age = Integer.parseInt(req.getParameter("s"));

			System.out.println(age);
			ulist = serviceInf.getUserByAge(age);

			System.out.println(ulist);
			if (ulist != null) {

				req.setAttribute("users", ulist);
				req.getRequestDispatcher("age.jsp").forward(req, resp);
			} else {
				System.out.println("error");
				req.setAttribute("ERROR", "No Users are Available");
				req.getRequestDispatcher("home.jsp").forward(req, resp);

			}
		} else if (uri.endsWith("searchbysign.do")) {
			String zodiac = req.getParameter("searchsign");
			System.out.println(zodiac);
			ulist = serviceInf.getUserBySign(zodiac);
			System.out.println(ulist);
			if (ulist != null) {
				req.setAttribute("users", ulist);
				req.getRequestDispatcher("sign.jsp").forward(req, resp);
			} else {
				System.out.println("error");
				req.setAttribute("ERROR", "No Users are Available");
				req.getRequestDispatcher("home.jsp").forward(req, resp);

			}
		} else if (uri.endsWith("logout.do")) {
			session.invalidate();
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
	}
}
package usuario;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Login usuario = new Login();
		usuario.setEmail(request.getParameter("email").isEmpty() ? "" : request.getParameter("email"));
		usuario.setSenha(request.getParameter("password").isEmpty() ? "" : request.getParameter("password"));
		LoginModel loginModel = new LoginModel();
		usuario = loginModel.validate(usuario);

		JSONObject jsonObject = new JSONObject();
		if (usuario != null) {
			HttpSession session = request.getSession();
			session.setAttribute("login", usuario.getId());
			jsonObject.put("status", true);
			jsonObject.put("id", usuario.getId());
			jsonObject.put("username", usuario.getNome());
		} else {
			jsonObject.put("status", false);
		}
		response.getWriter().append(jsonObject.toString());
	}

}

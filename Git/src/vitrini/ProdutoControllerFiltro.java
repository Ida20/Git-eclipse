package vitrini;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

@WebServlet("/ProdutoControllerFiltro")
public class ProdutoControllerFiltro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProdutoControllerFiltro() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json;charset=UTF-8");
		String search = request.getParameter("search");
		ProdutoModelFiltro p = new ProdutoModelFiltro();
		List<Produto> produtos = p.select(search);
		JSONArray jsonArray = new JSONArray();
		for (Produto produto : produtos) {
			JSONObject jsonObject = new JSONObject(produto);
			jsonArray.put(jsonObject);
		}
		JSONObject data = new JSONObject();
		data.put("data", jsonArray);
		response.getWriter().append(data.toString());
	}
}
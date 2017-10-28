package br.com.estudo.servlets;

import java.io.IOException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import br.com.estudo.domain.ListaCarros;
import br.com.estudo.domain.Response;
import br.com.estudo.domain.Carro;
import br.com.estudo.domain.CarroService;
import br.com.estudo.util.JAXBUtil;
import br.com.estudo.util.ServletUtil;

@WebServlet("/carros/*")
public class CarrosServlet extends HttpServlet {
	private static final long serialVersion = 1L;
	private CarroService carroService = new CarroService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// sem rest
		// List<Carro> carros= carroService.getCarros();
		// ListaCarros lista = new ListaCarros();
		// em formato texto
		// String carrosString = carros.toString();
		// resp.getWriter().write(carrosString);
		// em XML
		// lista.setCarros(carros);
		// String xml = JAXBUtil.toXML(lista);
		// ServletUtil.writeXML(resp, xml);
		// em Json
		// lista.setCarros(carros);
		// String json = JAXBUtil.toJSON(lista);
		// ServletUtil.writeJSON(resp, json);
		// em gson
		// lista.setCarros(carros);
		// Gson gson = new GsonBuilder().setPrettyPrinting().create();
		// String json = gson.toJson(lista);
		// ServletUtil.writeJSON(resp, json);
		// em gson inverso
		// Gson gson = new Gson();
		// List<Carro> lista =(List<Carro>) gson.fromJson(json, ListaCarros.class);

		// com rest
		String requestUri = req.getRequestURI();
		Long id = RegexUtil.matchId(requestUri);
		if (id != null) {
			Carro carro = carroService.getCarro(id);
			if (carro != null) {
				Gson gson = new GsonBuilder().setPrettyPrinting().create();
				String json = gson.toJson(carro);
				ServletUtil.writeJSON(resp, json);
			} else {
				resp.sendError(404, "PUTA MERDA BEROY!!!! ALGO DEU ERRADO Carro não encontrado");
			}
		} else {
			List<Carro> carros = carroService.getCarros();
			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			String json = gson.toJson(carros);
			ServletUtil.writeJSON(resp, json);
		}
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Carro carro = getCarroFromRequest(req);
		carroService.save(carro);
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json = gson.toJson(carro);
		ServletUtil.writeJSON(resp, json);
	}

	private Carro getCarroFromRequest(HttpServletRequest req) {
		Carro c = new Carro();
		String id = req.getParameter("id");
		if (id != null) {
			c = carroService.getCarro(Long.parseLong(id));
		}
		c.setNome(req.getParameter("nome"));
		c.setDesc(req.getParameter("descricao"));
		c.setUrlFoto(req.getParameter("url_foto"));
		c.setUrlVideo(req.getParameter("url_video"));
		c.setLatitude(req.getParameter("latitude"));
		c.setLongitude(req.getParameter("longtide"));
		c.setTipo(req.getParameter("tipo"));
		return c;
	}
	 protected void doDelete(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
		String requestUri =  req.getRequestURI();
		Long id = RegexUtil.matchId(requestUri);
		if(id != null) {
			carroService.delete(id);
			Response r = Response.Ok("Que carro? nunca ouvi falar");
			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			String json = gson.toJson(r);
			ServletUtil.writeJSON(resp, json);
		}else {
			resp.sendError(404, "Url invalida");
		}
	}
}

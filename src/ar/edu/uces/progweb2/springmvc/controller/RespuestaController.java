package ar.edu.uces.progweb2.springmvc.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ar.edu.uces.progweb2.springmvc.dao.RespuestaDao;
import ar.edu.uces.progweb2.springmvc.dao.TemaDao;
import ar.edu.uces.progweb2.springmvc.model.Respuesta;
import ar.edu.uces.progweb2.springmvc.model.Tema;
import ar.edu.uces.progweb2.springmvc.model.Usuario;


@Controller
public class RespuestaController {
	
	private TemaDao temaDao;
	private RespuestaDao respuestaDao;
	
	@Autowired
	public void setTemaDao(TemaDao temaDao) {
		this.temaDao = temaDao;
	}
	@Autowired
	public void setRespuestaDao(RespuestaDao respuestaDao){
		this.respuestaDao = respuestaDao;
	}
	
	@RequestMapping(value = "/listarRespuestas/{id}", method = RequestMethod.GET)
	public String listarRespuestas(@PathVariable Long id, ModelMap model){
		Tema tema = this.temaDao.get(id);
		List<Respuesta> respuestas = this.respuestaDao.listarRespuestas(tema);
		ObjectMapper mapper = new ObjectMapper();
		String json="";
		try {
			json = mapper.writeValueAsString(respuestas);
			model.addAttribute("respuestas", json);
			System.out.println(json);
		} catch (JsonGenerationException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}	
		return "/views/tema.jsp";
	}
	
	@RequestMapping(value = "/cargarRespuesta/{id}", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	public @ResponseBody Map<String, Object> cargarRespuesta(@PathVariable Long id, @RequestBody String texto, ModelMap model){
		Tema tema = this.temaDao.get(id);
		this.crearRespueta(tema, texto);
		List<Respuesta> respuestas = this.respuestaDao.listarRespuestas(tema);
		Map<String, Object> out= new HashMap<String, Object>();
		out.put("respuestas", respuestas);
		return out;
	}
	
	private void crearRespueta(Tema tema, String texto ){
		Respuesta respuesta = new Respuesta();
		respuesta.setDenuncia(0);
		respuesta.setFecha(new Date());
		respuesta.setMeGusta(0);
		respuesta.setSender(new Usuario("pepe",(long) 1));
		respuesta.setTema(tema);
		respuesta.setTexto(texto);
		this.respuestaDao.save(respuesta);
	}
	
	
}

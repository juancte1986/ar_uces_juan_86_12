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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.uces.progweb2.springmvc.dao.RespuestaDao;
import ar.edu.uces.progweb2.springmvc.dao.TemaDao;
import ar.edu.uces.progweb2.springmvc.model.EstadoTema;
import ar.edu.uces.progweb2.springmvc.model.Genero;
import ar.edu.uces.progweb2.springmvc.model.Respuesta;
import ar.edu.uces.progweb2.springmvc.model.Tema;
import ar.edu.uces.progweb2.springmvc.model.Usuario;

@Controller
public class TemaController {

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
	
	@RequestMapping(value = "/menuBoot", method = RequestMethod.GET)
	public String  crearTema(){
		
		return "/views/menuBoot.jsp";
	}


	@RequestMapping(value = "/listarTemas", method = RequestMethod.GET)
	public String listarTemas(ModelMap model){
		System.out.println("Listar tema");
		List<Tema> temas = this.temaDao.listarTemas(new Genero("Java",(long) 1));
		ObjectMapper mapper = new ObjectMapper();
		try {
			String json;
			if(temas.size() == 0){
				json = mapper.writeValueAsString(new Integer(0));
			}
			else{
				json = mapper.writeValueAsString(temas);
			}
			System.out.println(json);
			model.addAttribute("temas", json);
		} catch (JsonGenerationException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}	
		return "/views/temas.jsp";
	}

	@RequestMapping(value = "/newTema", method = RequestMethod.POST)
	public @ResponseBody Map<String, List<Tema>> crearTema(@RequestBody Tema tema ){
		System.out.println("Nene:"+tema);
		tema.setOwner(new Usuario("pepe",(long) 1));
		tema.setEstado(new EstadoTema("Abierto",(long) 1));
		tema.setPuntuacion(0);
		tema.setGenero(new Genero("Java", (long)1));
		tema.setFecha(new Date());
		tema.setPuntuacion(0);
		this.temaDao.save(tema);
		this.crearRespueta(tema);
		System.out.println(tema.toString());
		List<Tema> temas = this.temaDao.listarTemas(new Genero("Java",(long) 1));
		HashMap<String, List<Tema>> out = new HashMap<String,List<Tema>>();
		out.put("temas", temas);
		return out;
	}

	private void crearRespueta(Tema tema){
		Respuesta respuesta = new Respuesta();
		respuesta.setDenuncia(0);
		respuesta.setFecha(tema.getFecha());
		respuesta.setMeGusta(0);
		respuesta.setSender(tema.getOwner());
		respuesta.setTema(tema);
		respuesta.setTexto(tema.getTexto());
		this.respuestaDao.save(respuesta);
	}
}

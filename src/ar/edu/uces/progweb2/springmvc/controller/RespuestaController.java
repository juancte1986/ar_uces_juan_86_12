package ar.edu.uces.progweb2.springmvc.controller;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import ar.edu.uces.progweb2.springmvc.dao.RespuestaDao;
import ar.edu.uces.progweb2.springmvc.dao.TemaDao;
import ar.edu.uces.progweb2.springmvc.model.Respuesta;
import ar.edu.uces.progweb2.springmvc.model.Tema;

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
	public ModelAndView listarRespuestas(@PathVariable Long id){
		Tema tema = this.temaDao.get(id);
		List<Respuesta> respuestas = this.respuestaDao.listarRespuestas(tema);
		ObjectMapper mapper = new ObjectMapper();
		String json="";
		try {
			json = mapper.writeValueAsString(respuestas);
			System.out.println(json);
		} catch (JsonGenerationException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}	
		return new ModelAndView("/views/tema.jsp","respuestas",json);
	}
}

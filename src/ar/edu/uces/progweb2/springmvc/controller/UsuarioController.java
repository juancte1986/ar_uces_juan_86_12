package ar.edu.uces.progweb2.springmvc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import ar.edu.uces.progweb2.springmvc.dao.UsuarioDao;
import ar.edu.uces.progweb2.springmvc.model.JsonResponse;
import ar.edu.uces.progweb2.springmvc.model.Usuario;
import ar.edu.uces.progweb2.springmvc.validator.UsuarioValidator;

@SessionAttributes({"usuarioSession"})
@Controller
public class UsuarioController {

	@Autowired
	private UsuarioDao usuarioDao;
	@Autowired
	private UsuarioValidator usuarioValidator;

	@RequestMapping(value="/negro", method = RequestMethod.POST)
	public @ResponseBody JsonResponse buscarUsuario(@RequestBody Usuario usuario, BindingResult result){
		System.out.println("Buscar usuario");
		JsonResponse jsonResponse = new JsonResponse();
		this.usuarioValidator.validate(usuario,result);
		if (result.hasErrors()) {
			jsonResponse.setStatus("FAIL");
			jsonResponse.setResult(result.getAllErrors());
		}else{
			Usuario usuarioSession = this.usuarioDao.getUsuario(usuario);
			if(usuarioSession == null){
				result.rejectValue("usuarioDesconocido","Usuario/Contraseña incorrecto/a");
			}else{
				jsonResponse.setStatus("SUCCES");
				jsonResponse.setResult(usuarioSession);
			}
		}
		return jsonResponse;
	}
	
	public void setUsuarioValidator(UsuarioValidator usuarioValidator) {
		this.usuarioValidator = usuarioValidator;
	}

	public void setUsuarioDao(UsuarioDao usuarioDao) {
		this.usuarioDao = usuarioDao;
	}

}

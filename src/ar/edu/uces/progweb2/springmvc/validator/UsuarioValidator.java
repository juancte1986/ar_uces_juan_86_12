package ar.edu.uces.progweb2.springmvc.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ar.edu.uces.progweb2.springmvc.model.Usuario;

@Component
public class UsuarioValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return Usuario.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object object , Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"user","Campo no puede estar vacio");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"pass","Campo no puede estar vacio");
	}

}

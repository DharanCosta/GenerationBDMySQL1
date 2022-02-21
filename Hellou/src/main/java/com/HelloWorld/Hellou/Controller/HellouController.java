package com.HelloWorld.Hellou.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Hellou")
public class HellouController {
	
	@GetMapping
	public String hello() {
		return "Hellou World, nessa atividade utilizei minhas habilidade de persistência e mentalidade de crescimento!" + 
	"\n Para as próximas semanas, vou precisar trabalhar muito minha habilidade de atenção aos detalhes, para diminuir meus erros";
	}
	
}

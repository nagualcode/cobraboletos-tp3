package br.com.infnet.cobraboletostp3.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.infnet.cobraboletostp3.model.negocio.Cliente;
import br.com.infnet.cobraboletostp3.model.service.ClienteService;

@Controller
public class ClienteController {

	@Autowired private ClienteService clientesService;
	
	@RequestMapping(value = "/clientes", method = RequestMethod.GET)
	public String home(
				Model model
			) {
		
		model.addAttribute("listaClientes", clientesService.obterLista());
		
		return "clientes";
	}
	


	@RequestMapping(value = "/clientes/add", method = RequestMethod.POST)
	public String incluir(
				Model model,
				Cliente cliente
			) {

		
		clientesService.incluir(cliente);
		
		model.addAttribute("listaClientes", clientesService.obterLista());
		
		return "clientes";
	}
	
	@RequestMapping(value = "/clientes/del/{id}", method = RequestMethod.GET)
	public String excluir(
			Model model,
			@PathVariable Integer id
			) {
		
		
		clientesService.excluir(id);
		
		model.addAttribute("listaClientes", clientesService.obterLista());

		return "clientes";
	}
	
}
	



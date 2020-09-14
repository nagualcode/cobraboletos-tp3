package br.com.infnet.cobraboletostp3.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import br.com.infnet.cobraboletostp3.model.negocio.Boleto;
import br.com.infnet.cobraboletostp3.model.negocio.Cliente;
import br.com.infnet.cobraboletostp3.model.service.BoletoService;
import br.com.infnet.cobraboletostp3.model.service.ClienteService;

@Controller
public class BoletoController {

	@Autowired private BoletoService boletoService;
	
	@Autowired private ClienteService clienteService;
	
	@RequestMapping(value = "/boletos", method = RequestMethod.GET)
	public String home(
				Model model
			) {
		
		model.addAttribute("listaboletos", boletoService.obterLista());
		
		return "boletos";
	}
	
	@RequestMapping(value = "/boletos/new/{idcliente}", method = RequestMethod.GET)
	public String novoboleto(
			Model model,
			@PathVariable Integer idcliente
			) {
		
		model.addAttribute("idcliente", idcliente);

		return "boleto";
	}
	

	@RequestMapping(value = "/boletos/add/{idcliente}", method = RequestMethod.POST)
	public String incluir(
				Model model,
				Boleto boleto,
				@PathVariable Integer idcliente
			) {

		
		Cliente cliente = clienteService.obterPorId(idcliente);
		
		boleto.setCliente(cliente);
		
		
		
		boletoService.incluir(boleto);
		
		model.addAttribute("listaboletos", boletoService.obterLista());
		
		return "boletos";
		
	}
	
	@RequestMapping(value = "/boletos/del/{id}", method = RequestMethod.GET)
	public String excluir(
			Model model,
			@PathVariable Integer id
			) {
		
		
		boletoService.excluir(id);
		model.addAttribute("listaboletos", boletoService.obterLista());
		
		return "boletos";
	}
	




}
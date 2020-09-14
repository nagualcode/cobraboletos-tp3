package br.com.infnet.cobraboletostp3.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import br.com.infnet.cobraboletostp3.model.negocio.Cliente;
import br.com.infnet.cobraboletostp3.model.repository.IClienteRepository;

@Service
public class ClienteService {

	@Autowired private IClienteRepository clientesRepository;
	
	public void incluir(Cliente lancamento) {
		clientesRepository.save(lancamento);
	}
	
	
	public void excluir(Integer id) {
		clientesRepository.deleteById(id);
	}
	
	public List<Cliente> obterLista(){
		return clientesRepository.findAll(Sort.by(Sort.Direction.DESC, "nome"));
	}

	public List<Cliente> obterListaPorNome(String nome) {
		return clientesRepository.obterListaPorNome(nome);
	}
	
	public Cliente obterPorId(Integer id) {
		return clientesRepository.findById(id).orElse(null);
	}
}
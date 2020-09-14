package br.com.infnet.cobraboletostp3.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import br.com.infnet.cobraboletostp3.model.negocio.Boleto;
import br.com.infnet.cobraboletostp3.model.repository.IBoletoRepository;

@Service
public class BoletoService {

	@Autowired private IBoletoRepository lancamentoRepository;
	
	public void incluir(Boleto lancamento) {
		lancamentoRepository.save(lancamento);
	}
	

	
	public void excluir(Integer id) {
		lancamentoRepository.deleteById(id);
	}
	
	public List<Boleto> obterLista(){
		return lancamentoRepository.findAll(Sort.by(Sort.Direction.DESC, "data"));
	}

	public Boleto obterPorId(Integer id) {
		return lancamentoRepository.findById(id).orElse(null);
	}
}
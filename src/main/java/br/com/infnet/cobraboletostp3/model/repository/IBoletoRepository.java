package br.com.infnet.cobraboletostp3.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.infnet.cobraboletostp3.model.negocio.Boleto;

@Repository
public interface IBoletoRepository extends CrudRepository<Boleto, Integer> {
	
	List<Boleto> findAll(Sort by);
}
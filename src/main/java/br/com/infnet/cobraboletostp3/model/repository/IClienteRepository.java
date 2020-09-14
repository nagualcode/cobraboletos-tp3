package br.com.infnet.cobraboletostp3.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.infnet.cobraboletostp3.model.negocio.Cliente;

@Repository
public interface IClienteRepository extends CrudRepository<Cliente, Integer> {
	
	@Query("from Cliente c order by c.nome DESC")
	List<Cliente> obterListaPorNome(String nome);

	List<Cliente> findAll(Sort by);
}
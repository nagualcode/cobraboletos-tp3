package br.com.infnet.cobraboletostp3.model.negocio;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "TLancamento")
public class Boleto {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name = "idClienteEmissor")
	private Cliente cliente;
	
	private String descricao;
	private Float valor;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate data;

	
	public Boleto() {
		
	}
	
	
	
	public Cliente getCliente() {
		return cliente;
	}



	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}


	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Float getValor() {
		return valor;
	}
	public void setValor(Float valor) {
		this.valor = valor;
	}

	public LocalDate getData() {
		return data;
	}
	public void setData(LocalDate data) {
		this.data = data;
	}
}
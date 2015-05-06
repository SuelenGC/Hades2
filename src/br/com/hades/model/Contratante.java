package br.com.hades.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(uniqueConstraints=@UniqueConstraint(columnNames = {"cpf"}))
public class Contratante {

	public Contratante() {
	}
	
	public Contratante(Long id, String nomeCompleto, String cpf, String rg,
			String profissao, String grauParentesco, String telResidencial,
			String telCelular, String email, String nomeMae,
			Localizacao localizacao, String nomeEmpresarial, String cnpj) {
		super();
		this.id = id;
		this.nomeCompleto = nomeCompleto;
		this.cpf = cpf;
		this.rg = rg;
		this.profissao = profissao;
		this.grauParentesco = grauParentesco;
		this.telResidencial = telResidencial;
		this.telCelular = telCelular;
		this.email = email;
		this.nomeMae = nomeMae;
		this.localizacao = localizacao;
		this.nomeEmpresarial = nomeEmpresarial;
		this.cnpj = cnpj;
	}
	
	@Id
	@GeneratedValue
	private Long id;

	@NotEmpty(message="{contratante.formulario.nomecompleto.empty}")
	@Size(min=3, max=50, message="{contratante.formulario.nomecompleto.tamanho}")
	private String nomeCompleto;
	
	@NotEmpty(message="{contratante.formulario.cpf.empty}")
	private String cpf;
	
	@Pattern(regexp="[0-9]+", message="contratante.formulario.rg.justnumbers")
	@NotEmpty(message="{contratante.formulario.rg.empty}")
	private String rg;
	
	@Size(min=2, max=50, message="{contratante.formulario.profissao.tamanho}")
	private String profissao;
	
	private String grauParentesco;
	
	private String telResidencial;
	
	private String telCelular;
	
	private String email;
	
	@NotEmpty(message="{contratante.formulario.nomemae.empty}")
	@Size(min=3, max=50, message="{contratante.formulario.nomemae.tamanho}")
	private String nomeMae;
	
	@OneToOne(cascade=CascadeType.PERSIST)
	private Localizacao localizacao;

	private String nomeEmpresarial;
	private String cnpj;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNomeCompleto() {
		return nomeCompleto;
	}
	public void setNomeCompleto(String nomeCompleto) {
		this.nomeCompleto = nomeCompleto;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getRg() {
		return rg;
	}
	public void setRg(String rg) {
		this.rg = rg;
	}
	public String getProfissao() {
		return profissao;
	}
	public void setProfissao(String profissao) {
		this.profissao = profissao;
	}
	public String getGrauParentesco() {
		return grauParentesco;
	}
	public void setGrauParentesco(String grauParentesco) {
		this.grauParentesco = grauParentesco;
	}
	public String getTelResidencial() {
		return telResidencial;
	}
	public void setTelResidencial(String telResidencial) {
		this.telResidencial = telResidencial;
	}
	public String getTelCelular() {
		return telCelular;
	}
	public void setTelCelular(String telCelular) {
		this.telCelular = telCelular;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNomeMae() {
		return nomeMae;
	}
	public void setNomeMae(String nomeMae) {
		this.nomeMae = nomeMae;
	}
	
	//@Embedded
	public Localizacao getLocalizacao() {
		return localizacao;
	}
	public void setLocalizacao(Localizacao localizacao) {
		this.localizacao = localizacao;
	}
	public String getNomeEmpresarial() {
		return nomeEmpresarial;
	}
	public void setNomeEmpresarial(String nomeEmpresarial) {
		this.nomeEmpresarial = nomeEmpresarial;
	}
	public String getCnpj() {
		return cnpj;
	}
	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}
	
	public static Contratante getFake() {
		Localizacao localizacao = Localizacao.getFake();
		return new Contratante(1L, "Suelen Goularte Carvalho", "342.111.848.37", "40536681-5", "Mobile Leader", "Filha", "(11) 8888-8888", "(11) 95020-0060", "suelengcarvalho@gmail.com", "Sonia Goularte", localizacao, "sem nome", "");
	}
}

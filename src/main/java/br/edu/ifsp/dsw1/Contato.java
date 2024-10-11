package br.edu.ifsp.dsw1;

public class Contato {
	private static Long ultimoId = 1L;
		
	private Long id;
	private String nome;
	private String telefone;
	private String email;
	
	public Contato() {
		ultimoId+=1;
		this.id = ultimoId;
	}
	
	public Contato(String nome, String telefone, String email) {
		this();
		this.nome = nome;
		this.telefone = telefone;
		this.email = email;
	}

	public Contato(Long id, String nome, String telefone, String email) {
		this.id = id;
		this.nome = nome;
		this.telefone = telefone;
		this.email = email;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}

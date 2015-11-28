package org.disksol

class LocalDoacao {

	String nome
	String logradouro
	String numero
	String complemento
	String cep
	String bairro
	
	static belongsTo = [evento: Evento]
	
    static constraints = {
    }
	
	@Override
	public String toString() {
		return nome;
	}
}

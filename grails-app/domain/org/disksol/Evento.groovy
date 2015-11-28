package org.disksol

class Evento {

	String nome;
	Date dataInicio;
	Date dataTermino;
	String descricao;
	
	static belongsTo = [author: Instituicao]
	static hasMany = [locais: LocalDoacao]
	
	static constraints = {
		nome blank: false
	}
	
	@Override
	public String toString() {
		return nome;
	}
}

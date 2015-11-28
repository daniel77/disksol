package org.disksol

class Evento {

	String nome;
	Date dataInicio;
	Date dataTermino;
	String descricao;
	
	static belongsTo = [author: Instituicao]
	static hasMany = [locais: LocalDoacao, necessidades: ItemNecessidade]
	
	static constraints = {
		nome blank: false
	}
	
	@Override
	public String toString() {
		return nome;
	}
}

package org.disksol

class ItemNecessidade {

	String nome;
	String descricao;
	Integer quantidade;
	
	static belongsTo = [evento: Evento ,status: StatusNecessidade]
	
    static constraints = {
    }
	
	@Override
	public String toString() {
		return nome;
	}
}

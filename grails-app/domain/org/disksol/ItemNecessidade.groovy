package org.disksol

class ItemNecessidade {

	String nome;
	String descricao;
	Integer quantidade;
	
	static belongsTo = [status: StatusNecessidade]
	
    static constraints = {
    }
	
	@Override
	public String toString() {
		return nome;
	}
}

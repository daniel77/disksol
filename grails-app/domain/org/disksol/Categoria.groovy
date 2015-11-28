package org.disksol

class Categoria {

	String nome;
	String descricao;
	
    static constraints = {
    }
	
	@Override
	public String toString() {
		return nome;
	}
}

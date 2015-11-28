package org.disksol

import groovy.transform.ToString;

class Doacao {
	
	String nome;
	Date date;
	Integer quantidade;
	
	static belongsTo = [categoria: Categoria, doador: Doador]

    static constraints = {
    }
	
	@Override
	public String toString() {
		return nome;
	}
}

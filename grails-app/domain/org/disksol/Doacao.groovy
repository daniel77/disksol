package org.disksol

import groovy.transform.ToString;

class Doacao {
	
	String nome;
	Date date;
	Integer quantidade;
	
	byte[] avatar1
	byte[] avatar2
	byte[] avatar3
	
	static belongsTo = [categoria: Categoria, doador: Doador]

    static constraints = {
		avatar1 blank: true
		avatar2 blank: true
		avatar3 blank: true
    }
	
	@Override
	public String toString() {
		return nome;
	}
}

package org.disksol

class Doacao {
	
	String nome;
	Date date;
	Integer quantidade;
	
	static belongsTo = [categoria: Categoria]

    static constraints = {
    }
}

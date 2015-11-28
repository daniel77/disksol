package org.disksol

class Doador {
	
	String nome;
	String telefone;
	String cidade;
	String test;
	
	static hasMany = [doacoes: Doacao];

    static constraints = {
    }
}

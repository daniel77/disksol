package org.disksol

class Doador {
	
	String nome;
	String telefone;
	String cidade;
	
	static hasMany = [doacoes: Doacao];

    static constraints = {
    }
}

package org.disksol

class Instituicao {
	
	String nome
	String cnpj
	String telefone
	String descricao
	
    static constraints = {
		nome blank: false, unique:true 
    }
}

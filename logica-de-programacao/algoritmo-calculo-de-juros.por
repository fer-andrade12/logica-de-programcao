programa {
    // Sistema aplica multa no atrazo na duplicata.
    inclua biblioteca Matematica --> mat
    
	funcao inicio() {
		
		real valor, taxa, total
		inteiro I, mes
		
		escreva("Digite o valor da duplicata: ")
		leia(valor)
		
		escreva("Digite a porcentagem da multa:")
		leia(taxa)
		
		escreva("Digite o mês de atrazado:  ")
		leia(mes)
		
		limpa()
		
		escreva("Meses    Valor    porcentagem multa \n ")
    	    
        para (I=1; I<=mes; I++) {
    	escreva("R$ ",valor,"   mêss ", I, "   multa: ", taxa, "\n")
    	valor=mat.arredondar((valor+taxa*((valor+taxa) / 100)), 2)
    	
        }
    }

}
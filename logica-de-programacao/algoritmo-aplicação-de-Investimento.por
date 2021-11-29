programa {
    
    inclua biblioteca Matematica --> mat
    
	funcao inicio() {
		
		real valor, deposito, taxa 
		inteiro I
		caracter pergunta
		
		pergunta = 's'
		
		escreva("Digite o valor do investimento: ")
		leia(valor)
		
		escreva("Digite o valor de depósito mensal:  ")
		leia(deposito)
		
		escreva("Digite a taxa de investimnto aplicada:  ")
		leia(taxa)
		
		escreva("VALOR    DEPOSITO    TAXA \n ")
		
    	enquanto (pergunta == 's') {
    	    
    	    para (I=0; I<=12; I++) {
    		escreva(I,"  R$ ", valor, "  R$ ", deposito, "  taxa: ", taxa, "\n")
    		valor=mat.arredondar((valor+deposito+((valor+deposito) * taxa )), 2)
    		
    	    }
    	    
    	    escreva("deseja continuar aplicando ? s ou n ?? ")
    		leia(pergunta)
    	    limpa()
		}
		
		   escreva("fim de execução!! \n")
	}
}

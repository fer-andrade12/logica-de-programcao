programa {
    
	funcao inicio() {
		 
    cadeia produto, resposta 
    real preco, total
    inteiro quantidade
    
    // receber os valores e samar o total de produtos..
    resposta = "s"
    total = 0.0

     enquanto (resposta != "n�o") 
     {
        escreva("Digite o produto: ")
        leia (produto)
        
        escreva("Digite o pre�o: ")
        leia (preco)
        
        escreva("Digite a quantidade: ")
        leia (quantidade)
      
        total= total +(preco*quantidade)   
        
        escreva(" Deseja continuar, sim ou n�o ? ")
        leia(resposta)
        
            se (resposta == "sim")
            {
                escreva(" ----------------------------- \n ")   
            }
            senao 
            {
                escreva("Resultado do pedido: ", total) 
            }
        }
	}
}

programa {
    
	funcao inicio() {
		 
    cadeia produto, resposta 
    real preco, total
    inteiro quantidade
    
    // receber os valores e samar o total de produtos..
    resposta = "s"
    total = 0.0

     enquanto (resposta != "não") 
     {
        escreva("Digite o produto: ")
        leia (produto)
        
        escreva("Digite o preço: ")
        leia (preco)
        
        escreva("Digite a quantidade: ")
        leia (quantidade)
      
        total= total +(preco*quantidade)   
        
        escreva(" Deseja continuar, sim ou não ? ")
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

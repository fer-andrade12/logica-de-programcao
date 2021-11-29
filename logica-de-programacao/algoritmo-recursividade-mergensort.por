programa {
    
	funcao inicio() {
	    
	}
	
	funcao inteiro MergeSort(inteiro direito, inteiro esquerdo ) // Recursividade
    {
    
        inteiro meio
        
        se (direito < esquerdo) {
          meio = (direito + esquerdo) / 2
          MERGESORT (direito, meio)    // elemento chama a si mesmo
          MERGESORT (meio+1, esquerdo)
          MERGE (direito, meio, esquerdo) 
        }

}  // fim recursividade


funcao inteiro MERGE (inteiro direito, inteiro meio, inteiro  esquerdo ) // Procedimento recebe por parâmetro
{
    
 inteiro h , i , j ,aux
 inteiro vetorcopia []   // "i" controla o endereço do vertorcopia
 
   h = direito
   i = direito
   j = meio + 1

   enquanto (h<=meio e j<=esquerdo) 
   {
        se (vetormergesort[h] <= vetormergesort[j])
        {
            vetorcopia[i] = vetormergesort[h]
            h = h + 1
        }
         
        senao
        {
            vetorcopia[i] = vetormergesort[j]
            j = j + 1
        }
        
        i = i + 1 
    }   


   // se h do meio até o fim, copiar para o vetorcopia
   se (h > meio )

    {
        para (aux = j ;j < esquerdo; j++) // k é contador
        {
        vetorcopia[i] = vetormergesort[aux]
         i = i + 1
        }
           
    }
   senao
   {
       
        para (aux=h;h<meio; h++)
        
            {
            vetorcopia[i] = vetormergesort[aux]
            
            }
            
            i=i + 1
        }

        para (aux = direito; aux < esquerdo; aux++)
        {
            vetormergesort[aux] = vetorcopia[aux] 
        }
}


   inteiro vetorMergesort [1..10]
   inteiro I, direito, esquerdo

   escreval("Escreva 10 valores a serem organizados abaixo: ")

   para (I=1;I<10;I++)
    {
     (vetorMergesort[I])   
    }

   direito=1 // vetor inicia com 1
   esquerdo=10  // vertor termina com 10

  MERGESORT (direito,esquerdo)  // recebe valores da direito e esquerdo

   escreval("--------------------")
   escreval("Valores organizados: ")

   para (I=1;I<10;I++)

    {
     escreva(vetorMergesort[I])   
    }

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1647; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 */
Algoritmo "Fila"


// Descrição   : Estrutura de dados Implementação de Fila! First-In-First-Out o primeiro que entra é o primeiro a sair.
// Autor(a)    : Fernando Andrade
// Data atual  : 18/03/2021

// Adicionar (insere um elemento no final da fila);
// Remover (remove e retorna o elemento do início da fila);
// Limpar (remove todos os elementos da fila na ordem correta);
// Listar (lista todos os elementos existentes na fila);
// Vazia (retorna verdade se a fila estiver vazia, e falso caso contrário).

Var // declaração das variáveis
fila :vetor[1..25] de inteiro
topo,i :inteiro
elemento :inteiro
Op :inteiro
aux,valor:inteiro
Inicio


procedimento Inicializar():inteiro     // inicializando topo com 1

      inicio
      topo:=1


fimprocedimento

funcao FilaVazia: logico    // fila vazia

inicio

   se topo=0 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse

fimfuncao


funcao FilaCheia: logico     // Fila cheia
inicio

   se topo=25 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse

fimfuncao

funcao Vazia():logico   // verificar lista em outro método
var
pergunta logico
inicio

resposta:=verdadeiro

      para i de 1 ate topo faca
              se nao (fila[0]) entao
                resposta:= falso
              
      fimpara
      
      retorne resposta
      
fimfuncao

procedimento Adicionar(elemento: inteiro) // Adicionar
inicio

      se resposta=falso) entao

        fila[topo]:=elemento
        topo:=topo+1

       senao
       escreval("não há espaço na fila)

fimprocedimento


funcao Remover():inteiro  // remover
var
mudar:inteiro
i:inteiro
inicio
    
       mudar:=fila[1]
       fila[1]:=0
       topo:=topo-1
       
       para i de 1 ate topo faca
            fila[i]:=fila[i+1]
       fimpara
       
       retorne mudar
    fimse

fimfuncao


procedimento Limpar () // limpar
var
i:inteiro
inicio

      para i de 1 ate topo faca

           fila[1]:=0
           
      fimpara
      
             topo:=0

fimprocedimento


procedimento Listar()  // listar
var
i:inteiro
inicio

      para i de 1 ate topo faca
             escreval(fila[i])
      fimpara
      
fimprocedimento

aux:=0
Op:=0
topo:=1

enquanto Op <> 6 faca          // Pergunta

escreval("Escolha a opcao")
escreval("(1)- Adicionar")
escreval("(2)- Remover")
escreval("(3)- Listar")
escreval("(4)- limpar")
escreval("(5)- verificar se fila vazia")
escreval("(6)- Sair")

leia(Op)

se Op=1 entao

        se FilaCheia entao
        
         escreval("não é possível, fila cheia!")
         
         senao
         
          escreval("Adicionar valor na fila!")
          leia(valor)
          
         Adicionar(valor)
         escreval("valor adicionado com sucesso!")
         
        fimse
fimse


se Op=2 entao

        se FilaVazia entao

         escreval("Não contém valores na fila.")
         
         senao
         
         aux:=Remover
         escreval("Valor removido da fila: ", aux)
         
        fimse
        
fimse


se Op=3 entao

         se FilaVazia entao

            escreval("Não contém valores na fila.")

         senao
         
         escreval("listado valores da fila!!")

               Listar()
               
        fimse
        
fimse


se Op=4 entao

         se FilaVazia entao

            escreval("Não contém valores na fila.")

         senao

             Limpar()
             
             escreval("Valores limpos da fila!!")
              
      fimse
fimse

 se Op=5 entao

    se filaVazia entao
         escreval("FILA NÃO COMTÉM VALORES")
        SENAO
        escreval("FILA COMTÉM VALORES")
    fimse
 fimse

 fimenquanto



 
 FimAlgoritmo
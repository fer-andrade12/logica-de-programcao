Algoritmo "pilhas"

//   Fernando Andrade
//   Implementação de Pilha
//   Estruturas de dados do tipo LIFO (last-in first-out),
//   onde o último elemento a ser inserido, será o primeiro a ser retirado


Var // declaração das variáveis
pilha : vetor[1..20] de inteiro
topo,i : inteiro
elemento : inteiro
Op : inteiro
aux,valor,mudar :inteiro
Inicio


procedimento Inicializar

      inicio
      topo:=0
      
fimprocedimento

funcao PilhaVazia: logico

inicio
      
   se topo=0 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse
   
fimfuncao


funcao PilhaCheia: logico

inicio

   se topo=20 entao
      retorne verdadeiro
   senao
      retorne falso
   fimse

fimfuncao


funcao Empilhar (elemento: inteiro) : logico

inicio
       
    se PilhaCheia entao
       retorne falso
    senao
        topo:=topo+1
        pilha[topo]:=elemento
        retorne verdadeiro
   fimse
   
fimfuncao

funcao Desempilhar : inteiro

inicio
       
    se PilhaVazia entao
       retorne 0
    senao
       mudar<-pilha[topo]
       retorne mudar
       
       pilha[topo]:=0
       topo:=topo-1
    fimse
       
fimfuncao


// Iniciando variáveis com zero.
aux:=0
Op:=0

enquanto Op <>6 faca

escreval("Escolha a opcao")
escreval("(1)- Empilhar")
escreval("(2)- Desempilhar")
escreval("(3)- Listar")
escreval("(4)- limpar")
escreval("(5)- verificar se pilha vazia")
escreval("(6)- Sair")

leia(Op)

se Op=1 entao

   se PilhaCheia entao

      escreval("Não é possivel, Pilha Cheia!!")

   senao
        escreva("Digite um valor a ser empilhado: ")
        leia(valor)

        se Empilhar(valor) entao

           escreval("Valor empilhado com sucesso!!")
           escreval("-----------------------------")

        fimse
   fimse
 fimse


 se Op=2 entao

    se Pilhavazia entao

       escreval("Nao e possivel, Pilha Vazia)

    senao
         aux <- Desempilhar
         escreval("Valor desempilhado: ", aux)
         escreval("-----------------------")
    fimse
 fimse


 se Op=3 entao

    se PilhaVazia entao
    
       escreval("Pilha vazia! ")
    senao
    escreval("----------------------")
    escreval(" Listagem da pilha ")
    para i de topo ate 1 passo -1 faca  // i até "topo" não mostrar valores em branco
          escreval(pilha[i])
    fimpara
    escreval("-----------------------")
    
    fimse
 fimse

 
 se Op=4 entao


    para i de 20 ate 1 passo -1 faca
         pilha[i]:=0
    fimpara
          topo:=0
          
           escreval("valores foram limpos da pilha")
           escreval("-----------------------")
 fimse
 
 
 se Op=5 entao

    se Pilhavazia entao

       escreval("Sim, pilha vazia")

    senao
         escreval("não, pilha contém valores... ")
         escreval("-----------------------")
    fimse

 fimse
 


fimenquanto

fimalgoritmo
       

       
       


      
      
              







       
       




      
      
      
      












Algoritmo "pilhas"

// Fernando Andrade
// Algoritmo feito em visualg, essa atividade implementação de Pilha com Algoritmo de Ordenação - Bubblesort
// last in, first out.

Var // declaração das variáveis
pilha : vetor[1..1024] de inteiro
topo,i,j : inteiro
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

   se topo=1024 entao
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


// Iniciando vari�veis com zero.
aux:=0
Op:=0

enquanto Op <>7 faca

escreval("Escolha a opcao")
escreval("(1)- Empilhar")
escreval("(2)- Desempilhar")
escreval("(3)- Listar")
escreval("(4)- limpar")
escreval("(5)- verificar se pilha vazia")
escreval("(6)- BubbleSort - ordena��o ")
escreval("(7)- Sair")

leia(Op)

se Op=1 entao

se PilhaCheia entao

   escreval("Nao � possivel, Pilha Cheia!!")

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

 escreval("Nao e possivel, Pilha Vazia")

senao
   aux <- Desempilhar
   escreval("Valor desempilhado: ", aux)
   escreval("-----------------------")
 fimse
fimse


se Op=3 entao

se PilhaVazia entao
   escreval("Pilha n�o contem valores")
 senao
      escreval("Segue Lista dos Itens da Pilha: ")

    para i de topo ate 1 passo -1 faca
         escreval(pilha[i])
    fimpara

    escreval("-----------------------")
   fimse
fimse

 
se Op=4 entao

se PilhaVazia entao
   escreval("Pilha n�o contem valores")
senao
     para i de topo ate 1 passo -1 faca
     pilha[i]:=0
     fimpara
     topo:=0

     escreval("valores foram removidos da pilha")
     escreval("-----------------------")

     fimse
fimse
 
 
se Op=5 entao

   se Pilhavazia entao

   escreval("Pilha n�o contem valores!!")

   senao
   
   escreval("N�o, pilha cont�m valores!! ")
   escreval("-----------------------")
 fimse

fimse
 
 
se Op=6 entao

   se PilhaVazia entao
      escreval("pilha vazia")
   senao

   para i de 1 ate topo passo 1 faca

     para j de 1 ate topo passo 1 faca

     se pilha[i]>pilha[j] entao
     mudar:=pilha[j]
     pilha[j]:=pilha[i]
     pilha[i]:=mudar
     
     fimse

     fimpara
     
     fimpara
 
 escreval("-------------------------")
 escreval("Segue valores organizados: ")
 
para i de 1 ate topo passo 1 faca

     escreval(pilha[i])

fimpara

fimse
 
fimse


fimenquanto

fimalgoritmo
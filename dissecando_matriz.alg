algoritmo "Dissecando Matriz"
// Mostra uma matriz [4:4] e sua diagonal principal, triângulo superior,
// triângulo superior, triângulo inferior.
var
matriz: vetor[1..4, 1..4] de inteiro
opcao: caractere
i,j: inteiro
inicio
para i <- 1 ate 4 faca
 para j <- 1 ate 4 faca
   escreval("Digite o numero da matriz [" ,i , ","  ,j, " ]" )
   leia(matriz[i,j])
 fimpara
fimpara
repita opcao
escreval("MENU DE OPÇÕES")
escreval("----------------")
escreval("[1] Mostrar a Matriz")
escreval("[2] Diagonal Principal")
escreval("[3] Triangulo Superior")
escreval("[4] Triangulo Inferior")
escreval("[5] Sair")
escreval("---- OPÇÃO:")
leia(opcao)
limpatela

se opcao = "1" entao
 para i <- 1 ate 4 faca
  para j <- 1 ate 4 faca
   escreva(matriz[i,j]:5)
  fimpara
  escreval()
 fimpara
fimse

se opcao = "2" entao
 para i <- 1 ate 4 faca
  para j <- 1 ate 4 faca
   se i = j entao
    escreva(matriz[i,j]:5)
   senao entao
    escreva(" ":5)
   fimse
  fimpara
  escreval()
 fimpara
fimse

se opcao = "3" entao
 para i <- 1 ate 4 faca
  para j <- 1 ate 4 faca
  se j > i entao
   escreva(matriz[i,j]:5)
  senao entao
   escreva(" ":5)
  fimse
  fimpara
  escreval()
 fimpara
fimse

se opcao = "4" entao
 para i <- 1 ate 4 faca
  para j <- 1 ate 4 faca
   se i > j entao
    escreva(matriz[i,j]:5)
   senao entao
    escreva(" ":5)
   fimse
  fimpara
  escreval()
 fimpara
fimse

ate opcao = "5"
fimalgoritmo

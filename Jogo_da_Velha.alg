algoritmo "jogo da velha"
// jogo da velha jogador vs jogador
var
matriz: vetor[1..3, 1..3] de caractere
jogador_1,jogador_2,p_1: caractere
i,j,s: inteiro
res,rest,r: logico
jogadordavez: caractere

procedimento tela()
inicio
 escreval("+---+---+---+")
 para i <- 1 ate 3 faca
 escreva("|")
  para j <- 1 ate 3 faca
   s <- s + 1
   matriz[i,j] <- numpcarac(s)
   escreva(matriz[i,j]:3,"|")
  fimpara
  escreval()
  escreval("+---+---+---+")
 fimpara
fimprocedimento

procedimento limpartela()
inicio
 limpatela
 escreval("+---+---+---+")
 para i <- 1 ate 3 faca
 escreva("|")
  para j <- 1 ate 3 faca
   escreva(matriz[i,j]:3,"|")
  fimpara
  escreval()
  escreval("+---+---+---+")
 fimpara
fimprocedimento

funcao jogada(c:caractere) : logico
var
mudou: logico
inicio
mudou <- falso
para i <- 1 ate 3 faca
 para j <- 1 ate 3 faca
  se c = matriz[i,j] entao
   matriz[i,j] <- jogadordavez
   mudou <- verdadeiro
  fimse
 fimpara
fimpara
retorne mudou
fimfuncao

procedimento trocarjogador() : caractere
inicio
se jogadordavez = jogador_1 entao
 jogadordavez <- jogador_2
senao entao
 jogadordavez <- jogador_1
fimse
fimprocedimento

funcao situacao(var a: caractere) : logico
var
ocorr: inteiro
inicio
// jogos nas linhas
 se (matriz[1,1] = a) e (matriz[1,2] = a) e (matriz[1,3] = a) entao
  escreval("jogador ", a , " venceu")
   rest <- verdadeiro
 senao entao
  se (matriz[2,1] = a) e (matriz[2,2] = a) e (matriz[2,3] = a) entao
   escreval("jogador ", a , " venceu")
   rest <- verdadeiro
  senao
   se (matriz[3,1] = a) e (matriz[3,2] = a) e (matriz[3,3] = a) entao
    escreval("jogador ", a , " venceu")
     rest <- verdadeiro
   fimse
  fimse
 fimse
 // jogos nas colunas
 se (matriz[1,1] = a) e (matriz[2,1] = a) e (matriz[3,1] = a) entao
  escreval("jogador ", a , " venceu")
  rest <- verdadeiro
 senao entao
  se (matriz[1,2] = a) e (matriz[2,2] = a) e (matriz[3,2] = a) entao
   escreval("jogador ", a , " venceu")
   rest <- verdadeiro
  senao
   se (matriz[1,3] = a) e (matriz[2,3] = a) e (matriz[3,3] = a) entao
    escreval("jogador ", a , " venceu")
    rest <- verdadeiro
   fimse
  fimse
 fimse
// jogos nas diagonais principais
 se (matriz[1,1] = a) e (matriz[2,2] = a) e (matriz[3,3] = a) entao
  escreval("jogador ", a , " venceu")
   rest <- verdadeiro
 senao entao
  se (matriz[1,3] = a) e (matriz[2,2] = a) e (matriz[3,1] = a) entao
   escreval("jogador ", a ," venceu")
   rest <- verdadeiro
  fimse
 fimse
 // jogo de velha
 ocorr <- 0
 para i <- 1 ate 3 faca
  para j <- 1 ate 3 faca
   se (matriz[i,j] <> jogador_1) e (matriz[i,j] <> jogador_2) entao
    ocorr <- ocorr + 1
   fimse
  fimpara
 fimpara
 se ocorr = 0 entao
  escreval("jogo finalizado")
  rest <- verdadeiro
 fimse
 
 retorne rest
fimfuncao



inicio
tela()
 jogador_1 <- "X"
 jogador_2 <- "O"
jogadordavez <- jogador_1
repita
 repita
  escreval("digite a jogada do jogador [" , jogadordavez, "]")
  leia(p_1)
  r <- jogada(p_1)
  se r = falso entao
   escreval("jogada invalida")
  fimse
  ate r = verdadeiro
 limpartela()
 res <- situacao(jogadordavez)
 trocarjogador()
ate res = verdadeiro
fimalgoritmo

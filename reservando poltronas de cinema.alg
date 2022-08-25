algoritmo "reservando poltronas de cinema"
// reserva uma poltrona, se a poltrona já for reservada gera uma mensagem
// avisando que ja foi reservada
var
cadeiras,cad: vetor[1..10] de caractere
reserva: caractere
opcao: caractere
i: inteiro
inicio
para i <- 1 ate 10 faca
 cadeiras[i] <- "b" + numpcarac(i)
fimpara
repita opcao
 para i <- 1 ate 10 faca
 escreva("[ ", cadeiras[i] , " ]")
 fimpara
 
 escreval
 escreval("------------------------------------------------------------------------")
 escreval("Reservar a cadeira: ")
 leia(reserva)
 para i <- 1 ate 10 faca
  se reserva = cad[i] entao
   escreval("Erro: lugar ocupado")
  fimse
 fimpara
 
 para i <- 1 ate 10 faca
  se reserva = cadeiras[i] entao
   escreval("Cadeira " , reserva, " Reservada")
   cad[i] <- cadeiras[i]
   cadeiras[i] <- "---"
  fimse
 fimpara
 
 escreval("Quer reservar outro ? [s/n] ")
 leia(opcao)
 limpatela
ate opcao = "n"
fimalgoritmo

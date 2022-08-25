algoritmo "Tabela de partidas"
// Mostra uma tabela de partidas
var
time: vetor[1..3] de caracter
i,j,aux: inteiro
inicio
para i <- 1 ate 3 faca
 escreval("---------------------")
 escreval("CAMPEONATO DE FUTEBOL")
 escreval("---------------------")
 escreva("Nome do " , i , "° time: ")
 leia(time[i])
 limpatela
fimpara
escreval("------------------")
escreval("TABELA DE PARTIDAS")
escreval("------------------")
para i <- 1 ate 3 faca
 para j <- 1 ate 2 faca
   se i = j entao
    j <- 3
   fimse
  escreval(time[i]," [] X [] ", time[j])
 fimpara
fimpara
fimalgoritmo

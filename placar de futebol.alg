algoritmo "placar de futebol"
// Calcula a diferen�a de gols em uma partida de futebol, apresentando
// diferentes situa��es para a diferen�a de  gols, sendo 0: empate, 1 at� 3:
// normal, e acima de 3: foi uma goleada
var
gols_bango, gols_madureira: inteiro
situacao: caractere
diferenca: inteiro
inicio
escreval("Bango x Madureira")
escreval("--------------------")
escreva("Quantos gols Bango fez: ")
leia(gols_bango)
escreva("Quantos gols Madureira fez: ")
leia(gols_madureira)
diferenca <- abs(gols_bango - gols_madureira)
escolha diferenca
 caso 0
  situacao <- "empate"
  escreval("A diferen�a foi: " , diferenca)
  escreva("Foi um " , situacao)
 caso 1,2,3
  situacao <- "jogo normal"
  escreval("A diferen�a foi: " , diferenca)
  escreva("Foi um " , situacao)
 outrocaso
  situacao <- "foi uma goleada"
  escreval("A diferen�a foi: " , diferenca)
  escreva("Foi uma " , situacao)
fimescolha
fimalgoritmo


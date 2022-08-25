algoritmo "media notas"
// Cria um gabarito, e cadastra as respostas de 5 pessoas, cada resposta correta
// vale 2 pontos, e no final mostra a media das pessoas que cadastraram.
var
gabarito: vetor[1..5] de caractere
questoes: vetor[1..5] de caractere
nome: vetor[1..3] de caractere
q: vetor[1..3] de inteiro
i,j,aux: inteiro
media: real
inicio
escreval("PASSO 1 - Cadastro de Gabarito")
escreval("-------------------------------")
para j <- 1 ate 5 faca
 escreval("Questao ", j ,": ")
 leia(gabarito[j])
fimpara
limpatela

para i <- 1 ate 3 faca
escreval("--------------------")
escreval("ALUNO " , i)
escreval("--------------------")
escreval("nome :")
leia(nome[i])
escreval("RESPOSTAS DADAS")
aux <- 0
 para j <- 1 ate 5 faca
 escreval("Questao ", j, ": ")
 leia(questoes[j])
 se questoes[j] = gabarito[j] entao
   aux <- aux + 2
  fimse
 fimpara
q[i] <- aux
limpatela
fimpara
escreval("NOTAS FINAIS")
escreval("-------------")
para i <- 1 ate 3 faca
escreva(nome[i]:10)
escreva(q[i]:10)
escreval()
fimpara
media <- (q[1] + q[2] + q[3]) / 3
escreval("-------------")
escreval("A media da turma: ", media)
fimalgoritmo

algoritmo "Calculo Fatorial"
//Efetua o calculo fatorial de um n�mero.
var
n, i, s: inteiro
inicio
escreva("Digite um valor: ")
leia(n)
i <- n
s <- n
enquanto i > 1 faca
 i <- i - 1
 s <- s * i
fimenquanto
 escreva("O fatorial de", n, " �", s)
fimalgoritmo

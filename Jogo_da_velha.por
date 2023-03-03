/* Jogo da Velha*/
programa {
  funcao inicio() {

    /* Atributos*/
    cadeia matriz[3][3];
    inteiro q = 0;
    cadeia posicao;
    cadeia jogador1 = "X";
    cadeia jogador2 = "0";
    cadeia vez = jogador1;
    inteiro valida = 0; 
    logico d;
    logico res = verdadeiro;
    inteiro jogadas = 0;
    inteiro final;
    inteiro velha = 0;

    /*Principal*/
    menu(matriz, q)
    enquanto(res == verdadeiro) {
     escreva("Vai jogar [", vez,"] em qual posição? \n")
     leia(posicao)
     final = jogada(posicao, matriz, vez, valida, jogadas)
     res = resultado(matriz, d, velha)

     se (final != -1) {
      vez = troca(jogador1, jogador2, vez)
     }
     
    }
    escreva("JOGO FINALIZADO! \n")
  }

  /*Cria e mostra menu*/
  funcao menu(cadeia matriz[][], inteiro q) {
    para(inteiro i = 0; i <= 2; i++) {
      para(inteiro j = 0; j <= 2; j++) {
        q += 1
        matriz[i][j] = "" + q;
      }
    }

    escreva("+---+---+---+ \n")
    para(inteiro i = 0; i <= 2; i++) {
      para(inteiro j = 0; j <= 2; j++) {
        escreva("|  ", matriz[i][j])
      }
      escreva("|")
      escreva("\n")
      escreva("+---+---+---+ \n")
    }
  }

  /*Atualiza menu*/
  funcao atualiza(cadeia matriz[][]) {
    escreva("+---+---+---+ \n")
    para(inteiro i = 0; i <= 2; i++) {
      para(inteiro j = 0; j <= 2; j++) {
        escreva("|  ", matriz[i][j])
      }
      escreva("|")
      escreva("\n")
      escreva("+---+---+---+ \n")
    }
  }

  /*Troca a vez*/
  funcao troca(cadeia jogador1, cadeia jogador2, cadeia vez) {
    se(vez == jogador1) {
      vez = jogador2;
      retorne vez;
    } senao se(vez == jogador2) {
      vez = jogador1;
      retorne vez;
    }
  }

  /*Valida jogada, e se valida faz a jogada*/
  funcao jogada(cadeia posicao, cadeia matriz[][], cadeia vez, inteiro valida, inteiro jogadas) {
    para(inteiro i = 0; i <= 2; i++) {
      para(inteiro j = 0; j <= 2; j++) {
        
        se(matriz[i][j] == posicao) {
          matriz[i][j] = vez
          valida = 1;
          jogadas += 1;
        }

      }
    }

    se(valida != 1) {
      escreva("JOGADA INVALIDA! \n")
      valida = -1
      retorne valida
    }
    limpa()
    atualiza(matriz)
    retorne jogadas
  }

  /*Gera o resultado da partida*/
  funcao resultado(cadeia matriz[][], logico d, inteiro velha) {

    /*linhas, colunas e diagonais iguais*/
    para(inteiro i = 0; i <= 2; i++) {
      para(inteiro j = 0; j <= 2; j++) {

        /*linhas iguais*/
        se (matriz[0][0] == "X" e matriz[0][1] == "X" e matriz[0][2] == "X"
            ou matriz[1][0] == "X" e matriz[1][1] == "X" e matriz[1][2] == "X"
            ou matriz[2][0] == "X" e matriz[2][1] == "X" e matriz[2][2] == "X") {
            d = verdadeiro;
        } senao se(matriz[0][0] == "0" e matriz[0][1] == "0" e matriz[0][2] == "0"
            ou matriz[1][0] == "0" e matriz[1][1] == "0" e matriz[1][2] == "0"
            ou matriz[2][0] == "0" e matriz[2][1] == "0" e matriz[2][2] == "0") {
            d = verdadeiro;
        }

        /*colunas iguais*/
        se (matriz[0][0] == "X" e matriz[1][0] == "X" e matriz[2][0] == "X"
            ou matriz[0][1] == "X" e matriz[1][1] == "X" e matriz[2][1] == "X"
            ou matriz[0][2] == "X" e matriz[1][2] == "X" e matriz[2][2] == "X") {
            d = verdadeiro;
        } senao se(matriz[0][0] == "0" e matriz[1][0] == "0" e matriz[2][0] == "0"
            ou matriz[0][1] == "0" e matriz[1][1] == "0" e matriz[2][1] == "0"
            ou matriz[0][2] == "0" e matriz[1][2] == "0" e matriz[2][2] == "0") {
            d = verdadeiro;
        }

        /*diagonal esquerda*/
        se (matriz[0][0] == "X" e matriz[1][1] == "X" e matriz[2][2] == "X") {
          d = verdadeiro;
        } 
        senao se(matriz[0][0] == "0" e matriz[1][1] == "0" e matriz[2][2] == "0") {
          d = verdadeiro;
        }

        /*diagonal direita*/
        se (matriz[0][2] == "X" e matriz[1][1] == "X" e matriz[2][0] == "X") {
          d = verdadeiro;
        } 
        senao se(matriz[0][2] == "0" e matriz[1][1] == "0" e matriz[2][0] == "0") {
          d = verdadeiro;
        }

        /*velha*/
        se(matriz[i][j] == "X" ou matriz[i][j] == "0") {
          velha += 1
        }

      }
    }

    se(d == verdadeiro) {
     retorne falso
    } 
    /*velha*/
    senao se(velha == 9) {
      retorne falso
    }
    senao {
        retorne verdadeiro
     }
    }
  }
}
//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "EXERCICIO 41 "
#define DATA CtoD("2022/10/25")

Function Main()

   //Declarando Variaveis
    LOCAl cResultado := {{"S","E","*","I"},{"Q","U","E","S"},{"R","E","*","*"},{"A","*","T","Q"}}
    LOCAL i

    Apresentacao(TITULO,DATA)
    
    ResultadoCabecalho(TITULO)
    Resultado("Resposta Exercicio 41","")
    Resultado("","")
    Resultado("O Objetivo do script descrito no exercicio e","")
    Resultado("Inverter os valores de posicao","")
    Resultado("","")
    Resultado("Segue resultado","")
    Resultado("","")
    ResultadoFechar()
    QOUT("Matriz MAT[4][4]:")
    QOUT("")
    for i:=1 to len(cResultado)
        ApresentarVetor(cResultado[i])
    next i

Return nil

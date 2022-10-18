//Contastes de apresentacao
#define TITULO "A SOMA DO QUADRADO"
#define DATA CtoD("2022/10/13")

Function Main()

    //Declarando Variaveis
    LOCAL nA
    LOCAL nB
    LOCAL nC
    LOCAL nResultado

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o valor da variavel A: " TO nA
    ACCEPT "Digite o valor da variavel B: " TO nB
    ACCEPT "Digite o valor da variavel C: " TO nC


    //Operacoes logicas
    nResultado := (Val(nA)*Val(nA))+(Val(nB)*Val(nB))+(Val(nC)*Val(nC))

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("Valor do quadrado da Variavel A: ",Alltrim(str(Val(nA)*Val(nA))))
    Resultado("Valor do quadrado da Variavel B: ",Alltrim(str(Val(nB)*Val(nB))))
    Resultado("Valor do quadrado da Variavel C: ",Alltrim(str(Val(nC)*Val(nC))))
    Resultado("Valor da soma dos Quadrados: ",Alltrim(str(nResultado)))
    ResultadoFechar()

Return nil

Function Apresentacao()

    QOUT("")
    QOUT("*****************************************************")
    QOUT("**                                                 **")
    QOUT("**      BEM VINDO AO PROGRAMA START TOTVS IP       **")
    QOUT("**                                                 **")
    QOUT("** AUTOR: Fabio Vinicios                           **")
    QOUT("** CARGO ATUAL: Analista de sistemas               **")
    QOUT("**                                                 **")
    QOUT("** TITULO: "+TITULO+" "+space(39-len(TITULO))+"**")
    QOUT("** DATA: "+DtoC(DATA)+" "+space(41-len(DtoC(DATA)))+"**")
    QOUT("**                                                 **")
    QOUT("*****************************************************")
    QOUT("")
    QOUT("")

Return nil

Function ResultadoCabecalho()

    QOUT("")
    QOUT("")
    QOUT("*****************************************************")
    QOUT("**                                                 **")
    QOUT("**"+space((37-len(TITULO))/2)+TITULO+" - RESULTADO"+space((37-len(TITULO))/2)+"**")
    QOUT("**                                                 **")

Return nil

Function ResultadoFechar()

    QOUT("**                                                 **")
    QOUT("*****************************************************")
    QOUT("")

Return nil

Function Resultado(texto,resultado)

    QOUT("** "+texto+resultado+space(48-len(resultado)-len(texto))+"**")

Return nil

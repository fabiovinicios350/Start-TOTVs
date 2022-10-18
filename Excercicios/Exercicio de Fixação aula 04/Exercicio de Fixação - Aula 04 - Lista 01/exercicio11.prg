//Contastes de apresentacao
#define TITULO "O QUADRADO DA DIFERENCA"
#define DATA CtoD("2022/10/13")

Function Main()

    //Declarando Variaveis
    LOCAL nA
    LOCAL nB
    LOCAL nDiferenca
    LOCAL nResultado
    

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o valor da variavel A: " TO nA
    ACCEPT "Digite o valor da variavel B: " TO nB

    //Operacoes logicas
    if Val(nA) >= Val(nB)
        nDiferenca := Val(nA)-Val(nB)
    else
        nDiferenca := Val(nB)-Val(nA)
    endif

    nResultado := nDiferenca*nDiferenca


    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("Valor da Variavel A: ",Alltrim(nA))
    Resultado("Valor da Variavel B: ",Alltrim(nB))
    Resultado("Diferenca entre "+Alltrim(nA)+" e "+Alltrim(nB)+": ",Alltrim(str(nDiferenca)))
    Resultado("O Quadrado da Diferenca: ",Alltrim(str(nResultado)))
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

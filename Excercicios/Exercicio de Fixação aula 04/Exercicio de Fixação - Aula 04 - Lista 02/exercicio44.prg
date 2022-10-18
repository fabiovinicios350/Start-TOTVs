//Contastes de apresentacao
#define TITULO "MAIOR ENTRE OS VALORES "
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL nValor := {0,0,0,0,0}
    LOCAL nMaior := 0
    LOCAL nMenor
    LOCAL i := 0

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o valor A: " TO nValor[1]
    ACCEPT "Digite o valor B: " TO nValor[2]
    ACCEPT "Digite o valor C: " TO nValor[3]
    ACCEPT "Digite o valor D: " TO nValor[4]
    ACCEPT "Digite o valor E: " TO nValor[5]

    nMenor:= Val(nValor[1])


    for i = 1 to len(nValor)
        if (nMaior < Val(nValor[i]))
            nMaior := Val(nValor[i])
        endif
        if (nMenor > Val(nValor[i]))
            nMenor := Val(nValor[i])
        endif
    next i


    ResultadoCabecalho()    
    Resultado("O valor maior e ",Alltrim(str(nMaior)))
    Resultado("O valor menor e ",Alltrim(str(nMenor)))
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

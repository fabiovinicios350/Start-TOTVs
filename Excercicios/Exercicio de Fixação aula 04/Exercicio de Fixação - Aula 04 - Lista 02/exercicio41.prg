//Contastes de apresentacao
#define TITULO "MAIOR ENTRE OS VALORES"
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL nValorA
    LOCAL nValorB
    LOCAL nValorC

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o valor A: " TO nValorA
    ACCEPT "Digite o valor B: " TO nValorB
    ACCEPT "Digite o valor C: " TO nValorC
    
    nValorA := Val(nValorA)
    nValorB := Val(nValorB)
    nValorC := Val(nValorC)


    ResultadoCabecalho()
    if (nValorA>nValorB .AND. nValorA>nValorC)
        Resultado("O Valor A "+Alltrim(str(nValorA))+" e o maior entre os valores","")
    elseif (nValorA<nValorB .AND. nValorB>nValorC )
        Resultado("O Valor B "+Alltrim(str(nValorB))+" e o maior entre os valores","")
    elseif (nValorC>nValorA .AND. nValorB<nValorC )
        Resultado("O Valor C "+Alltrim(str(nValorC))+" e o maior entre os valores","")
    else
        Resultado("Existe valores iguais","")
    endif
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

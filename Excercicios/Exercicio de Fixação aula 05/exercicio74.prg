//Contastes de apresentacao
#define TITULO "JOGO DE ADIVINHA "
#define DATA CtoD("2022/10/16")

Function Main()

    //Declarando Variaveis
    LOCAL nvalorAleatorio := Random()%100+1
    LOCAL nValorUsuario := 0
    LOCAL nTentativa := 0

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    while (nvalorAleatorio<>nValorUsuario)
        ACCEPT "Digitar o numero que acabamos de sortear 0 a 100: " TO nValorUsuario
        nValorUsuario := Val(nValorUsuario)

        ResultadoCabecalho()    
        if (nvalorAleatorio > nValorUsuario)
            Resultado("Numero informado e menor que o numero sortiado","")
        elseif (nvalorAleatorio < nValorUsuario)
            Resultado("Numero informado e maior que o numero sortiado","")
        endif
        ResultadoFechar()

        nTentativa++

    enddo

    ResultadoCabecalho()    
        if (nTentativa < 5)
            Resultado("Voce e muito bom, acertou em ",alltrim(str(nTentativa))+" tentativas")
        elseif (nTentativa >= 5 .and. nTentativa < 9 )
            Resultado("Voce e bom, acertou em ",alltrim(str(nTentativa))+" tentativas")
        elseif (nTentativa >= 9 .and. nTentativa < 13 )
            Resultado("Voce e mediano, acertou em ",alltrim(str(nTentativa))+" tentativas")
        else
            Resultado("Voce e muito fraco, acertou em ",alltrim(str(nTentativa))+" tentativas")
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

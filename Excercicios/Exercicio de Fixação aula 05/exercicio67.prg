//Contastes de apresentacao
#define TITULO "MEDALHAS "
#define DATA CtoD("2022/10/18")

Function Main()

    //Declarando Variaveis
    LOCAL nMedalhas
    LOCAL nOuro := 0
    LOCAL nprata := 0
    LOCAL nBronze := 0
    LOCAL cPais
    LOCAL lLoop := .T.

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o Pais: " TO cPais

    while (lLoop)
        QOUT("")
        QOUT("// O = Ouro, P = Prata, B = Bronze")
        QOUT("// Ou digite F para Finalizar")
        ACCEPT "Digite qual e o tipo da medalha: " TO nMedalhas
        nMedalhas := Upper(nMedalhas)
        if (nMedalhas="O")
            nOuro++
        elseif (nMedalhas="P")
            nprata++
        elseif (nMedalhas="B")
            nBronze++
        elseif (nMedalhas="F")
            lLoop := .F.
        else 
            QOUT("O valor informado e invalido por favor tente novamente")
        endif

    enddo

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("O Pais "+Alltrim(cPais)+" conquistou as seguintes medalhas:","")
    Resultado("Medalha de Ouro: ",AllTrim(str(nOuro)))
    Resultado("Medalha de Prata: ",AllTrim(str(nPrata)))
    Resultado("Medalha de Bronze: ",AllTrim(str(nBronze)))
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

//Contastes de apresentacao
#define TITULO "Multiplo"
#define DATA CtoD("2022/10/16")

Function Main()

    //Declarando Variaveis
    LOCAL nNumero
    LOCAL nMultiplo
    LOCAL nAleatorio
    LOCAL i := 0

    //Atribuindo valores para as variaveis
    ACCEPT "Digite uma quantidade de numeros: " TO nNumero
    ACCEPT "Digite o numero que sera verificado os multiplos: " TO nMultiplo

    nNumero := Val(nNumero)
    nMultiplo := Val(nMultiplo)

    //Apresentacao
    Apresentacao()

    ResultadoCabecalho() 
    while (i<=nNumero)
        nAleatorio := Random() % 99+1
        if(nAleatorio%nMultiplo=0)
            Resultado("",Alltrim(str(nAleatorio)))
            i++
        endif
    enddo
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

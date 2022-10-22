//Contastes de apresentacao
#define TITULO "SOMA DE VALORES INFORMADO"
#define DATA CtoD("2022/10/17")

Function Main()

    //Declarando Variaveis
    LOCAL nNumero
    LOCAL nSoma := 0

    //Apresentacao
    Apresentacao()

    ACCEPT "Digite um numero interio ou '0' para finalizar: " TO nNumero
    
    nNumero := val(nNumero)
    nSoma := nSoma+nNumero


    while (nNumero<>0)
        ACCEPT "Digite um numero interio ou '0' para finalizar: " TO nNumero
        nNumero := val(nNumero)
        nSoma := nSoma+nNumero
    enddo

    ResultadoCabecalho() 
    Resultado("O valor da Soma e: ",Alltrim(str(nSoma)))
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

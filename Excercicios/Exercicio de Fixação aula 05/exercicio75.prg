//Contastes de apresentacao
#define TITULO "SOMANDO FEIJAO "
#define DATA CtoD("2022/10/19")

Function Main()

    //Declarando Variaveis
    LOCAL nSoma := 0
    LOCAL nfeijao:=1
    LOCAL i

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    for i:=1 to 64
        nSoma := nSoma + nfeijao
        nfeijao := nfeijao + nfeijao
    next i

    ResultadoCabecalho()    
    Resultado("A quantidade de grao em uma tabuleiro e: ","")
    Resultado(alltrim(str(nSoma))," Graos")
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

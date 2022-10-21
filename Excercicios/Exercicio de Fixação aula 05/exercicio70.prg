//Contastes de apresentacao
#define TITULO "POTENCIA DE 3"
#define DATA CtoD("2022/10/18")

Function Main()

    //Declarando Variaveis
    LOCAL nSoma
    LOCAL i
    LOCAL j
    
    //Apresentacao
    Apresentacao()

    ResultadoCabecalho()
    for i := 0 to 15
        nSoma := 3
        if(i>=2)
            for j := 2 to i
                nSoma := nSoma * 3
            next j
        else
            nSoma := nSoma*i    
        endif
        Resultado("Potencia 3^"+alltrim(str(i))+" : ",alltrim(str(nSoma)))
    next i
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

Static Function Apresentacao(cTitulo,dData)

    QOUT("")
    QOUT("*****************************************************")
    QOUT("**                                                 **")
    QOUT("**      BEM VINDO AO PROGRAMA START TOTVS IP       **")
    QOUT("**                                                 **")
    QOUT("** AUTOR: Fabio Vinicios                           **")
    QOUT("** CARGO ATUAL: Analista de sistemas               **")
    QOUT("**                                                 **")
    QOUT("** TITULO: "+cTitulo+" "+space(39-len(cTitulo))+"**")
    QOUT("** DATA: "+DtoC(dData)+" "+space(41-len(DtoC(dData)))+"**")
    QOUT("**                                                 **")
    QOUT("*****************************************************")
    QOUT("")
    QOUT("")

Return nil

Static Function ResultadoCabecalho(cTitulo)

    QOUT("")
    QOUT("")
    QOUT("*****************************************************")
    QOUT("**                                                 **")
    QOUT("**"+space((37-len(cTitulo))/2)+cTitulo+" - RESULTADO"+space((37-len(cTitulo))/2)+"**")
    QOUT("**                                                 **")

Return nil

Static Function ResultadoFechar()

    QOUT("*****************************************************")
    QOUT("")

Return nil

Static Function Resultado(texto,resultado)

    QOUT("** "+texto+resultado+space(48-len(resultado)-len(texto))+"**")

Return nil

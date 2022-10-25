REQUEST HB_GT_WIN_DEFAULT

//Contastes de apresentacao
#define TITULO "OPERACOES"
#define DATA CtoD("2022/10/22")

Function Main()

    //Declarando Variaveis
    LOCAL aCaracter := {}
    LOCAL cAuxiliar
    LOCAL nTipo

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "(1) - Verificar se e uma letra" + chr(10) +; 
    "(2) - Verificar se o caracter enviado e um numero" + chr(10) +; 
    "(3) - Verificar se o caracter enviado e um simbolo" + chr(10) +; 
    "(4) - Converter uma letra maiuscula em minuscula" + chr(10) +; 
    "(5) - Trocar os valores entre variais" + chr(10)+; 
    "Digite qual operacao deseja realizar:  " TO nTipo
    nTipo := Val(ValidarCaracter(nTipo,"numerico"))

    if nTipo==5 
        QOUT("")
        ACCEPT "Digite o valor de A: " TO cAuxiliar
        AAdd(aCaracter,cAuxiliar)
        
        ACCEPT "Digite o valor de B: " TO cAuxiliar
        AAdd(aCaracter,cAuxiliar)
    else
        QOUT("")
        ACCEPT "Digite um caracter: " TO cAuxiliar
        AAdd(aCaracter,cAuxiliar)
    endif

    ResultadoCabecalho()
    if (nTipo==1)   
        if isLetra(aCaracter[1])==.T.
            Resultado("O Caracter informador e uma letra","")
        else
            Resultado("O Caracter informador nao e uma letra","")
        endif
    elseif (nTipo==2)
        if isDigito(aCaracter[1])==.T.
            Resultado("O Caracter informador e um numero","")
        else
            Resultado("O Caracter informador nao e um numero","")
        endif
    elseif (nTipo==3)
        if isSimbolo(aCaracter[1])==.T.
            Resultado("O Caracter informador e um simbolo","")
        else
            Resultado("O Caracter informador nao e um simbolo","")
        endif
    elseif (nTipo==4)
        
        Resultado("O caracter em minusculo: ",alltrim(toLower(aCaracter[1])))
    elseif (nTipo==5)
        cTroca(aCaracter[1],aCaracter[2])
    endif
    ResultadoFechar()

    wait"Digite qualquer tecla para sair"

Return nil

Function isLetra(nvalor)

    LOCAL lResultado

    if IsAlpha(nvalor)=.T.
        lResultado := .T.
    else
        lResultado := .F.
    endif

return lResultado

Function isDigito(nvalor)

    LOCAL lResultado

    if IsDigit(nvalor)=.T.
        lResultado := .T.
    else
        lResultado := .F.
    endif

return lResultado

Function isSimbolo(nvalor)

LOCAL lResultado

    if ((ASC(nvalor)>15 .and. ASC(nvalor)<26) .or. (ASC(nvalor)>=48 .and. ASC(nvalor)<=57) .or. (ASC(nvalor)>=65 .and. ASC(nvalor)<=90) .or. (ASC(nvalor)>=97 .and. ASC(nvalor)<=122))
        lResultado := .F.
    else
        lResultado := .T.
    endif

return lResultado

Static Function toLower(nvalor)

    LOCAL nResultado := Lower(nvalor)

return nResultado

Static Function cTroca(nValorA,nValorB)

    LOCAL nTroca := nValorA

    nValorA := nValorB
    nValorB := nTroca

    Resultado("O Valor de A: ",Alltrim(nValorA))
    Resultado("O Valor de B: ",Alltrim(nValorB))

return .T.

Function ValidarCaracter(texto,tipo)
    LOCAL nResultado
    LOCAL ctexto := texto
    LOCAL lLoop := .T.

    while lLoop
        if((IsDigit(ctexto)=.T. .And. tipo="numerico") .or. (AscPos(ctexto,1)==45 .And. tipo="numerico"))
            nResultado := ctexto
                if(Val(ctexto)>5 .or. Val(ctexto)<=0)
                    ACCEPT "Valor invalido, por favor digite novamente:" TO ctexto
                else
                    lLoop=.F.
                endif

        elseif(IsAlpha(ctexto)=.T. .And. tipo="caracter")
            nResultado := ctexto
            lLoop=.F.
        else
            ACCEPT "Valor invalido, por favor digite novamente:" TO ctexto
        endif
    enddo

Return nResultado

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

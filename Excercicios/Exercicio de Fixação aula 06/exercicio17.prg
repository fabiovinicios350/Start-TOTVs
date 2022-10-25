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
    ACCEPT "(1) - Verificar se o inteiro informado e par" + chr(10) +; 
    "(2) - Verificar se o interiro informado e impar" + chr(10) +; 
    "(3) - Retornar o numero com sinal invertido" + chr(10) +; 
    "(4) - Retorna se A e divisivel por B" + chr(10) +; 
    "(5) - Trocar os valores entre variais" + chr(10)+; 
    "Digite qual operacao deseja realizar:  " TO nTipo
    nTipo := Val(ValidarCaracter(nTipo,"numerico"))

    if nTipo==5 .or. nTipo==4
        QOUT("")
        ACCEPT "Digite o valor de A: " TO cAuxiliar
        cAuxiliar := Val(ValidarCaracter(cAuxiliar,"numerico"))
        AAdd(aCaracter,cAuxiliar)
        
        ACCEPT "Digite o valor de B: " TO cAuxiliar
        cAuxiliar := Val(ValidarCaracter(cAuxiliar,"numerico"))
        AAdd(aCaracter,cAuxiliar)
    else
        QOUT("")
        ACCEPT "Digite um caracter: " TO cAuxiliar
        cAuxiliar := Val(ValidarCaracter(cAuxiliar,"numerico"))
        AAdd(aCaracter,cAuxiliar)
    endif

    ResultadoCabecalho()
    if (nTipo==1)   
        if isPar(aCaracter[1])==.T.
            Resultado("O numero informado e par","")
        else
            Resultado("O numero informado nao e par","")
        endif
    elseif (nTipo==2)
        if isImpar(aCaracter[1])==.T.
            Resultado("O numero informado e impar","")
        else
            Resultado("O numero informado nao e impar","")
        endif
    elseif (nTipo==3)
        Inverte(aCaracter[1])
    elseif (nTipo==4)
        if isDiv(aCaracter[1],aCaracter[2])==.T.
            Resultado("O numero "+alltrim(str(aCaracter[1]))+" e divisivel por "+alltrim(str(aCaracter[2])),"")
        else
            Resultado("O numero "+alltrim(str(aCaracter[1]))+" nao e divisivel por "+alltrim(str(aCaracter[2])),"")
        endif
    elseif (nTipo==5)
        iTroca(aCaracter[1],aCaracter[2])
    endif
    ResultadoFechar()

    wait"Digite qualquer tecla para sair"

Return nil

Function isPar(nvalor)

    LOCAL lResultado

    if nvalor%2==0
        lResultado := .T.
    else
        lResultado := .F.
    endif

return lResultado

Function isImpar(nvalor)

    LOCAL lResultado

    if(nvalor%2==0)
        lResultado := .F.
    else
        lResultado := .T.
    endif

return lResultado

Static Function Inverte(nvalor)
    
    Resultado("O numero com o sinal invertido: ",Alltrim(str(nvalor*(-1))))

return .T.

Static Function isDiv(nValorA,nValorB)

    LOCAL lResultado

    if(nValorA%nValorB==0)
        lResultado := .T.
    else
        lResultado := .F.
    endif

return lResultado

Static Function iTroca(nValorA,nValorB)

    LOCAL nTroca := nValorA

    nValorA := nValorB
    nValorB := nTroca

    Resultado("O Valor de A: ",Alltrim(str(nValorA)))
    Resultado("O Valor de B: ",Alltrim(str(nValorB)))

return .T.

Function ValidarCaracter(texto,tipo)
    LOCAL nResultado
    LOCAL ctexto := texto
    LOCAL lLoop := .T.

    while lLoop
        if((IsDigit(ctexto)=.T. .And. tipo="numerico") .or. (AscPos(ctexto,1)==45 .And. tipo="numerico"))
            nResultado := ctexto
                lLoop=.F.
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

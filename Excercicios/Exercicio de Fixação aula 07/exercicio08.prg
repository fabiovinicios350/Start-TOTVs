//Contastes de apresentacao
#define TITULO "SOMANDO VETOR DE ELEMENTOS "
#define DATA CtoD("2022/10/22")

Function Main()

   //Declarando Variaveis
    LOCAL aElementosA := {}
    LOCAL aElementosB := {}
    LOCAL aElementosC := {}
    LOCAL nElemento
    LOCAL i

    Apresentacao()

    //Atribuindo valores para as variaveis
    for i:= 1 to 20
        QOUT("")
        ACCEPT "Digite um elemento A: " TO nElemento
        nElemento := Val(ValidarCaracter(nElemento,"numerico"))
        AAdd(aElementosA,nElemento)

        QOUT("")
        ACCEPT "Digite um elemento B: " TO nElemento
        nElemento := Val(ValidarCaracter(nElemento,"numerico"))
        AAdd(aElementosB,nElemento)

        AAdd(aElementosC,aElementosA[i]+aElementosB[i])
        
    next i

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    ResultadoFechar()
    QOUT("Segue os valores do vetor C e: ")
    QOUT(hb_ValToExp(aElementosC))

Return nil

Function ValidarCaracter(texto,tipo)
    
    LOCAL nResultado
    LOCAL ctexto
    LOCAL i
    LOCAL lLoop := .T.

    for i:=0 to len(texto)
        nResultado := texto
        ctexto:= SubStr(texto,i+1,1)

        if len(texto)<1
            ACCEPT "Valor invalido, por favor digite novamente em branco:" TO texto
            i:=-1
        elseif i==len(texto)
            loop
        else
            if((IsDigit(ctexto)=.T. .And. tipo="numerico") .or. (AscPos(ctexto,1)==45 .And. tipo="numerico" .and. i=1) .or. (ctexto=="." .and. tipo="numerico" .and. i==(len(texto)-3)))
                loop
            elseif((IsAlpha(ctexto)=.T. .And. tipo="caracter") .or. (ctexto==" " .and. tipo="caracter"))
                loop
            else
                ACCEPT "Valor invalido, por favor digite novamente:" TO texto
                i:=-1
            endif
        endif
    next i

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

    QOUT("*****************************************************")
    QOUT("")

Return nil

Function Resultado(texto,resultado)

    QOUT("** "+texto+resultado+space(48-len(resultado)-len(texto))+"**")

Return nil

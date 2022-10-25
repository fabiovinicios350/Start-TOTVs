REQUEST HB_GT_WIN_DEFAULT

//Contastes de apresentacao
#define TITULO "POSITIVO OU NEGATIVO "
#define DATA CtoD("2022/10/22")

Function Main()

    //Declarando Variaveis
    LOCAL nNumero
    LOCAL cResultado
    PRIVATE nModulo

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite um numero: " TO nNumero
    nNumero := Val(ValidarCaracter(nNumero,"numerico"))


    cResultado := ehPositivo(nNumero)

    ResultadoCabecalho()
    Resultado("O valor informador e positivo: ",Alltrim(cResultado))
    Resultado("O modulo do numero e: ",Alltrim(str(nModulo)))
    ResultadoFechar()

    wait"Digite qualquer tecla para sair"

Return nil

Function ehPositivo(nValor)

    LOCAL cRetorno

    if nValor>=0
        cRetorno = "Verdadeiro"
        nModulo := nValor
    else
        nModulo := (-1)*nValor
        cRetorno = "Falso"
    endif

Return cRetorno

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

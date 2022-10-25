REQUEST HB_GT_WIN_DEFAULT

//Contastes de apresentacao
#define TITULO "CALCULAR CAPITAL OU MONTANTE "
#define DATA CtoD("2022/10/22")

Function Main()

    //Declarando Variaveis
    LOCAL nTaxa
    LOCAL nTempo
    LOCAL cTipoRegime
    LOCAL nTipo
    PRIVATE nValorFuturo
    PRIVATE nValorCapital
    PRIVATE nValorJuros


    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "(1) - Descobrir o Montante" + chr(10) +; 
    "(2) - Descobrir a capital" + chr(10) +; 
    "Digite qual operacao deseja realizar:  " TO nTipo
    nTipo := Val(ValidarCaracter(nTipo,"numerico"))

    if nTipo==1
        QOUT("")
        ACCEPT "Digite o Capital inicial: " TO nValorCapital
        nValorCapital := Val(ValidarCaracter(nValorCapital,"numerico"))
    elseif nTipo==2
        QOUT("")
        ACCEPT "Digite o valor do Montante: " TO nValorFuturo
        nValorFuturo := Val(ValidarCaracter(nValorFuturo,"numerico"))
    endif

    QOUT("")
    ACCEPT "Digite a porcentagem da taxa: " TO nTaxa
    nTaxa := Val(ValidarCaracter(nTaxa,"numerico"))
    
    QOUT("")
    ACCEPT "Digite o prazo: " TO nTempo
    nTempo := Val(ValidarCaracter(nTempo,"numerico"))

    QOUT("")
    QOUT("// Digite S = Juros simples ou C = Juros composto ")
    ACCEPT "Digite o tipo do regime: " TO cTipoRegime

    ValidaRegime(@cTipoRegime)

    ResultadoCabecalho()
    if nTipo==1
        CalcularMontante(nValorCapital,nTaxa,nTempo,cTipoRegime)
        Resultado("O valor do juros e: ",Alltrim(str(nValorJuros)))
        Resultado("O valor do montante e: ",Alltrim(str(nValorFuturo)))
    elseif nTipo==2
        CalcularCapital(nValorFuturo,nTaxa,nTempo,cTipoRegime)
        Resultado("O valor do juros e: ",Alltrim(str(nValorJuros)))
        Resultado("O valor do capital inicial e: ",Alltrim(str(nValorCapital)))

    endif
    ResultadoFechar()

    wait"Digite qualquer tecla para sair"

Return nil

Static Function CalcularMontante(nValorInicial,nPorcentagem,nPrazo,nTipo)

    if nTipo=="S"
        nValorFuturo := ROUND(nValorInicial*(1+(nPorcentagem/100)*nPrazo),2)
    elseif nTipo=="C"
        nValorFuturo := ROUND(nValorInicial*(POT(1+(nPorcentagem/100),nPrazo)),2)
    endif  
        nValorJuros := ROUND(nValorFuturo - nValorInicial,2)

return .T.

Static Function CalcularCapital(nValorMontante,nPorcentagem,nPrazo,nTipo)

    if nTipo=="S"
        nValorCapital := ROUND(nValorMontante/(1+(nPorcentagem/100)*nPrazo),2)
    elseif nTipo=="C"
        nValorCapital := ROUND(nValorMontante/(POT(1+(nPorcentagem/100),nPrazo)),2)
    endif  

    nValorJuros := ROUND(nValorMontante - nValorCapital,2)

return .T.

Function POT(Base,Expoente)
    LOCAL nResultado := Base
    LOCAL i

    Expoente := ABS(Expoente)

    if(Expoente>=2)
        for i := 2 to Expoente
            nResultado := nResultado * Base
        next i
    elseif (Expoente>=0)
        nResultado := nResultado*Expoente
    endif
Return nResultado

Static Function ValidaRegime(ctexto)

    LOCAL lLoop := .T.

    while lLoop
        ctexto := Upper(ctexto)
        if(ctexto=="S" .or. ctexto=="C")
            lLoop := .F.
        else
            ACCEPT "Valor invalido, tente novamente: " TO ctexto
        endif
    enddo
return .T.

Function ValidarCaracter(texto,tipo)
    LOCAL nResultado
    LOCAL ctexto := texto
    LOCAL lLoop := .T.

    while lLoop
        if(IsDigit(ctexto)=.T. .And. tipo="numerico")
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

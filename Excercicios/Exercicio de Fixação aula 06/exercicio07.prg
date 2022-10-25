//Contastes de apresentacao
#define TITULO "POTENCIA "
#define DATA CtoD("2022/10/22")

Function Main()

    //Declarando Variaveis
    LOCAL nBase
    LOCAL nExpoente
    LOCAL nResultado
    
    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    QOUT("")
    ACCEPT "Digite a base para o calculo da potencia: " TO nBase
    nBase := Val(ValidarCaracter(nBase,"numerico"))

    QOUT("")
    ACCEPT "Digite o expoente para o calculo da potencia: " TO nExpoente
    ValidarCaracter(nExpoente,"numerico")
    nExpoente := Val(nExpoente)

    nResultado := POT(nBase,nExpoente)


    ResultadoCabecalho()
    Resultado("Potencia "+alltrim(str(nBase))+"^"+alltrim(str(nExpoente))+" : ",alltrim(str(nResultado)))
    ResultadoFechar()
        
Return nil

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

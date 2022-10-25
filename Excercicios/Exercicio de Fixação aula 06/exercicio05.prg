REQUEST HB_GT_WIN_DEFAULT

//Contastes de apresentacao
#define TITULO "DIVISAO"
#define DATA CtoD("2022/10/22")

Function Main()

    //Declarando Variaveis
    PRIVATE nDividendo
    PRIVATE nDivisor
    PRIVATE nResto
    PRIVATE nQuocinte


    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o dividendo: " TO nDividendo
    nDividendo := Val(ValidarCaracter(nDividendo,"numerico"))
    
    ACCEPT "Digite o divisor: " TO nDivisor
    nDivisor := Val(ValidarCaracter(nDivisor,"numerico"))

    //Operacoes logicas
    Calcular()

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("O quociente da divisao de "+Alltrim(str(nDividendo))+"/"+Alltrim(str(nDivisor))+" e: ",Alltrim(str(nQuocinte)))
    Resultado("O resto da divisao de "+Alltrim(str(nDividendo))+"/"+Alltrim(str(nDivisor))+" e: ",Alltrim(str(nResto)))
    ResultadoFechar()

    wait"Digite qualquer tecla para sair"

Return nil

Static Function Calcular()

    nResto := ROUND(nDividendo % nDivisor,0)
    nQuocinte := ROUND((nDividendo / nDivisor),0)

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

REQUEST HB_GT_WIN_DEFAULT

//Contastes de apresentacao
#define TITULO "MEDIA"
#define DATA CtoD("2022/10/22")

Function Main()

    //Declarando Variaveis
    LOCAL cNome
    LOCAL nSalario
    LOCAL nAjuste
    PRIVATE nSalarioFinal

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o seu nome: " TO cNome
    ACCEPT "Digite o seu salario: " TO nSalario
    nSalario := Val(ValidarCaracter(nSalario,"numerico"))

    ACCEPT "Digite o Porcentual de ajuste: " TO nAjuste
    nAjuste := Val(ValidarCaracter(nAjuste,"numerico"))

    CalcularAjuste(nSalario,nAjuste)

    ResultadoCabecalho()
    Resultado("Ola ",cNome)
    Resultado("O seu salario normal e de: ","R$ "+Alltrim(str(nSalario)))
    Resultado("O valor do ajuste e: ","R$ "+Alltrim(str(nAjuste)))
    Resultado("O seu Salario final ficou: ","R$ "+Alltrim(str(nSalarioFinal)))
    ResultadoFechar()

    wait"Digite qualquer tecla para sair"

Return nil

Static Function CalcularAjuste(nValor,nReajuste)
    
    nSalarioFinal := nValor+(nValor*(nReajuste/100))

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

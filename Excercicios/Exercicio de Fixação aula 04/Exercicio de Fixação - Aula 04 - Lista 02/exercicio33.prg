//Contastes de apresentacao
#define TITULO "CALCULANDO SALARIO"
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL cNome
    LOCAL nSalarioPorHora
    LOCAL nSalario
    LOCAL nHoras
    LOCAL nSalarioFinal
    LOCAL nSalarioExtra
    LOCAL nHorasExtra
    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o seu nome: " TO cNome
    ACCEPT "Digite quantas horas voce trabalhou esse mes: " TO nHoras
    ACCEPT "Digite quanto voce ganha por hora: " TO nSalarioPorHora

    nHoras := Val(nHoras)
    nSalarioPorHora := Val(nSalarioPorHora)

    nHorasExtra := nHoras-160
    nSalario := (nHoras-nHorasExtra)*nSalarioPorHora
    nSalarioExtra := (nSalarioPorHora*(150/100))*nHorasExtra
    nSalarioFinal := nSalario + nSalarioExtra
    

    ResultadoCabecalho()
    Resultado("Ola ",cNome)
    Resultado("Voce fez ",Alltrim(str(nHorasExtra))+" Horas extras")
    Resultado("Voce recebeu de horas extras ","R$ "+Alltrim(str(nSalarioExtra)))
    Resultado("O seu salario normal e de: ","R$ "+Alltrim(str(nSalario)))
    Resultado("O seu Salario final ficou: ","R$ "+Alltrim(str(nSalarioFinal)))
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

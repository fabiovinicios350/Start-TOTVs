//Contastes de apresentacao
#define TITULO "DESCOBRIR QUANTIDADE DE DIAS "
#define DATA CtoD("2022/10/23")

Function Main()

   //Declarando Variaveis
    LOCAL nMes

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o numero do mes que deseja saber a quantidade de dias: " TO nMes
    nMes := Val(ValidarCaracter(nMes,"numerico"))
    nMes := ValidaNumero(nMes)

    ResultadoCabecalho()
    if (nMes=2 )
       Resultado("O mes "+Alltrim(str(nMes))+" tem ",Alltrim(str(28))+" Dias")
    elseif (nMes>=1 .AND. nMes<=7)
        Resultado("O mes "+Alltrim(str(nMes))+" tem ",Alltrim(str(CalculaMes(nMes,"impar")))+" Dias" )
    elseif (nMes>=8 .AND. nMes<=12)
        Resultado("O mes "+Alltrim(str(nMes))+" tem ",Alltrim(str(CalculaMes(nMes,"par")))+" Dias" )
    else
        Resultado("O numero informado nao e um mes","" )
    endif
    ResultadoFechar()

Return nil

Function ValidaNumero(nValor)

    LOCAL lLoop := .T.

    while lLoop
        if nValor<1 .or. nValor>12
            QOUT(nValor)
            ACCEPT "Numero do mes Incorreto, Digite novamente: " TO nValor
            nValor:= val(ValidarCaracter(nValor,"numerico"))
        else
            lLoop := .F.
        endif   
    enddo

return nValor

Function CalculaMes(numero,tipo)
    LOCAL nDias

    if (tipo=="impar")
        if (numero%2==0)
            nDias:=30
        else
            nDias:=31
        endif
    elseif (tipo=="par")
        if (numero%2==0)
            nDias:=31
        else
            nDias:=30
        endif
    endif

Return nDias

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

    QOUT("**                                                 **")
    QOUT("*****************************************************")
    QOUT("")

Return nil

Function Resultado(texto,resultado)

    QOUT("** "+texto+resultado+space(48-len(resultado)-len(texto))+"**")

Return nil

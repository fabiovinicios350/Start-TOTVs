//Contastes de apresentacao
#define TITULO "DIA DA SEMANA"
#define DATA CtoD("2022/10/22")

Function Main()

   //Declarando Variaveis
    LOCAL nNumero
    LOCAL nSemana := {'Domingo','Segunda','Terca','Quarta','Quinta','Sexta','Sabado'}

    Apresentacao()

    //Atribuindo valores para as variaveis
    QOUT("*Semana comeca com o domingo(1) e termina no sabado(7)")
    ACCEPT "Digite o numero da semana: " TO nNumero
    nNumero := Val(ValidarCaracter(nNumero,"numerico"))

    nNumero := ValidaSemana(nNumero)

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("O dia da semana e: ",hb_ValToStr(nSemana[nNumero]))
    ResultadoFechar()

Return nil

Function ValidaSemana(nValor)

    LOCAL lLoop := .T.

    while lLoop
        if nValor<1 .or. nValor>7
            ACCEPT "Numero do dia da semana invalido, Digite novamente: " TO nValor
            nValor:= val(ValidarCaracter(nValor,"numerico"))
        else
            lLoop := .F.
        endif   
    enddo

return nValor

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

//Contastes de apresentacao
#define TITULO "CALCULANDO PRESTACAO"
#define DATA CtoD("2022/10/22")

Function Main()

   //Declarando Variaveis
    LOCAL nValor
    LOCAL nTaxa
    LOCAL ntempo

    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o valor da prestacao: " TO nValor
    nValor := val(ValidarCaracter(nValor,"numerico"))

    ACCEPT "Digite porcentagem da taxa de atraso por dia: " TO nTaxa
    nTaxa := val(ValidarCaracter(nTaxa,"numerico"))
    
    ACCEPT "Digite quantos dias de atraso: " TO ntempo
    ntempo := val(ValidarCaracter(ntempo,"numerico"))

    Calculo(nValor,nTaxa,ntempo)
        
Return nil

Function Calculo(valor,taxa,tempo)

    LOCAL nPrestacao := valor+(valor*(taxa/100)*tempo)

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("Prestacao de origem: ",alltrim(str(valor)))
    Resultado("Taxa de "+Alltrim(str(taxa))+"% ao dia: ",Alltrim(str((valor*taxa/100))))
    Resultado("Prestacao atual com a taxa de atraso: ",Alltrim(str(nPrestacao)))
    ResultadoFechar()

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

REQUEST HB_GT_WIN_DEFAULT

//Contastes de apresentacao
#define TITULO "MEDIA"
#define DATA CtoD("2022/10/22")

Function Main()

    //Declarando Variaveis
    LOCAL nNumero01
    LOCAL nNumero02
    LOCAL nNumero03
    LOCAL nMedia


    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o Primeiro numero: " TO nNumero01
    nNumero01 := Val(ValidarCaracter(nNumero01,"numerico"))
    
    ACCEPT "Digite o Primeiro numero: " TO nNumero02
    nNumero02 := Val(ValidarCaracter(nNumero02,"numerico"))

    ACCEPT "Digite o Primeiro numero: " TO nNumero03
    nNumero03 := Val(ValidarCaracter(nNumero03,"numerico"))

    //Operacoes logicas
    nMedia := Media(nNumero01,nNumero02,nNumero03)

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("A media dos valores e: ",Alltrim(str(nMedia)))
    ResultadoFechar()

    wait"Digite qualquer tecla para sair"

Return nil

Function Media(nValor01,nValor02,nValor03)
    
    LOCAL nMedia := (nValor01+nValor02+nValor03)/3

return nMedia

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

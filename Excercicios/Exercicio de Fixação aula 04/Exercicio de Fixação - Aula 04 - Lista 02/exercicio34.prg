//Contastes de apresentacao
#define TITULO "NUMERO POSITIVO OU NEGATIVO"
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL nNumero
    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite um numero: " TO nNumero
    nNumero := Val(nNumero)


    ResultadoCabecalho()
    if (nNumero>0)
        Resultado("O numero "+Alltrim(str(nNumero))+" e positivo","")
    elseif (nNumero=0)
        Resultado("O numero "+Alltrim(str(nNumero))+" e Zero","")
    else
        Resultado("O numero "+Alltrim(str(nNumero))+" e negativo","")
    endif
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

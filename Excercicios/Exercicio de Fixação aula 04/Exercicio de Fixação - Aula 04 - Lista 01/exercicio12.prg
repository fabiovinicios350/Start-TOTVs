//Contastes de apresentacao
#define TITULO "CONVERSAO DOLAR EM REAL"
#define DATA CtoD("2022/10/13")

//Contastes
Function Main()

    //Declarando Variaveis
    LOCAL nDolar
    LOCAL nReal
    LOCAL nQuantidade    

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite a cotacao do dolar em real: " TO nDolar
    ACCEPT "Digite quantos dolares para cotacao: " TO nQuantidade

    //Operacoes logicas
    nReal := Val(nDolar)*Val(nQuantidade)


    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("Valor do Dolar em Real: ",Alltrim(nDolar))
    Resultado("Quantidade: ",Alltrim(nQuantidade))
    Resultado("Valor total em Real: ",Alltrim(str(nReal)))
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

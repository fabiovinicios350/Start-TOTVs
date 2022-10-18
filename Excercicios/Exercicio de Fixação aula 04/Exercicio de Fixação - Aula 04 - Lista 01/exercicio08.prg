//Contastes de apresentacao
#define TITULO "CALCULANDO DESCONTO"
#define DATA CtoD("2022/10/13")

Function Main()

    //Declarando Variaveis
    LOCAL nValorProduto
    LOCAL nDesconto
    LOCAL nValorFinal

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o valor do produto: " TO nValorProduto
    ACCEPT "Digite a porcentagem de desconto: " TO nDesconto


    //Operacoes logicas
    nValorFinal := Val(nValorProduto) - (Val(nValorProduto)*(Val(nDesconto)/100))

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("Valor do produto: R$ ",Alltrim(nValorProduto))
    Resultado("Desconto de "+nDesconto+"%: R$ ",Alltrim(str(Val(nValorProduto)*(Val(nDesconto)/100))))
    Resultado("Valor do produto com desconto: R$ ",Alltrim(str(nValorFinal)))
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

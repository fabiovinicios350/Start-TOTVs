Function Main()

    //Variaveis
    LOCAL nValor1
    LOCAL nValor2
    LOCAL nSoma
    LOCAL nDiferenca
    LOCAL nProduto
    LOCAL nQuocinte


    //Obrtendo os valores das variaveis
    ACCEPT "Digite o primieiro valor: " TO nValor1
    ACCEPT "Digite o segundo valor: " TO nValor2


    //Operaçoes logicas
    nSoma := Val(nValor1) + Val(nValor2)
    nDiferenca := Val(nValor1) - Val(nValor2)
    nProduto := Val(nValor1) * Val(nValor2)
    nQuocinte := Val(nValor1) / Val(nValor2)

    //Apresentando na tela os resultados
    QOUT("")
    QOUT("***************************************")
    QOUT("Soma: " + Alltrim(str(nSoma)))
    QOUT("Diferenca: " + Alltrim(str(nDiferenca)))
    QOUT("Produto: " + Alltrim(str(nProduto)))
    QOUT("Quociente: " + Alltrim(str(nQuocinte)))
    QOUT("***************************************")
    QOUT("")

Return nil

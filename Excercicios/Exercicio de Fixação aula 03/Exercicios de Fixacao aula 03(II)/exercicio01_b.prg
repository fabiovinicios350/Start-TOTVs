Function Main()

    //Variaveis
    LOCAL nConta
    LOCAL nCredito
    LOCAL nDebito

    //Obrtendo os valores das variaveis
    ACCEPT "Digite o sua Conta: " TO nConta
    ACCEPT "Digite o Credito: " TO nCredito
    ACCEPT "Digite o Debito: " TO nDebito

    //Apresentando na tela os resultados
    QOUT("O numero da sua Conta e: " + nConta)
    QOUT("O seu Credito e: " + nCredito)
    QOUT("O seu Debito e: " + nDebito)

Return nil

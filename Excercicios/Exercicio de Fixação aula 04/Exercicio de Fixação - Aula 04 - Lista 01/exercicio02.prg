Function Main()

    //Variaveis
    LOCAL nCelsius
    LOCAL nFahrenheit


    //Obrtendo os valores das variaveis
    ACCEPT "Digite uma temperatura em Graus Celsius: " TO nCelsius


    //Celsius -> Fahrenheit
    //Formula: (9*Celsius+160/5)
    nFahrenheit := (9*Val(nCelsius)+160)/5
    

    //Apresentando na tela os resultados
    QOUT("")
    QOUT("*******CELSIUs PARA FAHRENHEIT**********")
    QOUT("")
    QOUT(nCelsius+" grous CelsiuS e igual a " + Alltrim(str(nFahrenheit)) + " grous Fahtenheit")
    QOUT("")
    QOUT("***************************************")
    QOUT("")
    


Return nil

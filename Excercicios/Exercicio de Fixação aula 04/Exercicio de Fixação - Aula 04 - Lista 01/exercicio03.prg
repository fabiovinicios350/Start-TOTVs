Function Main()

    //Variaveis
    LOCAL nCelsius
    LOCAL nFahrenheit


    //Obrtendo os valores das variaveis
    ACCEPT "Digite uma temperatura em Graus Fahrenheit: " TO nFahrenheit


    //Fahrenheit -> Celsius
    //Formula: (Fahrenheit - 32)*(5/9)
    nCelsius := (Val(nFahrenheit) - 32)*(5/9)
    

    //Apresentando na tela os resultados
    QOUT("")
    QOUT("*******FAHRENHEIT PARA CELSIUS*********")
    QOUT("")
    QOUT(nFahrenheit+" grous Fahtenheit e igual a " + Alltrim(str(nCelsius)) + " grous Celsius")
    QOUT("")
    QOUT("***************************************")
    QOUT("")
    


Return nil

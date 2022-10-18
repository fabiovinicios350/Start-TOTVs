#define PI 3.14159

Function Main()

    //Declarando Variaveis
    LOCAL nAltura
    LOCAL nR2
    LOCAL nVolume


    //Atribuindo valores para as variaveis
    ACCEPT "Digite a altura da lata de oleo: " TO nAltura
    ACCEPT "Digite valor de R2: " TO nR2


    //Operaçoes logicas
    nVolume := PI * Val(nAltura) * Val(nR2)

    //Apresentando na tela os resultados
    QOUT("")
    QOUT("***************************************")
    QOUT("")
    QOUT("Volume da lata de oleo: " + Alltrim(str(nVolume)))
    QOUT("")
    QOUT("***************************************")
    QOUT("")

Return nil

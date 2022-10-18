#define PI 3.14159

Function Main()

    //Declarando Variaveis
    LOCAL nValor
    LOCAL nTaxa
    LOCAL ntempo
    LOCAL nPrestacao


    //Atribuindo valores para as variaveis
    ACCEPT "Digite o valor da prestacao: " TO nValor
    ACCEPT "Digite porcentagem da taxa de atraso por dia: " TO nTaxa
    ACCEPT "Digite quantos dias de atraso: " TO ntempo


    //Operaçoes logicas
    nPrestacao := Val(nValor)+(Val(nValor)*(Val(nTaxa)/100)*Val(ntempo))

    //Apresentando na tela os resultados
    QOUT("")
    QOUT("*****************************************************")
    QOUT("                    RESULTADO                        ")
    QOUT("")
    QOUT("Prestacao de origem: " + Alltrim(nValor))
    QOUT("Taxa de "+nTaxa+"% ao dia: " + Alltrim(str((Val(nValor)*Val(nTaxa)/100))))
    QOUT("Prestacao atual com a taxa de atraso: " + Alltrim(str(nPrestacao)))
    QOUT("")
    QOUT("*****************************************************")
    QOUT("")

Return nil

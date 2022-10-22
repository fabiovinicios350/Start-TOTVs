//Contastes de apresentacao
#define TITULO "ALTURA E SEXO DE 40 PESSOAS"
#define DATA CtoD("2022/10/20")

Function Main()

    //Declarando Variaveis
    LOCAL nPessoa := {{"f", 1.60},{"m",1.70},{"m",1.70},{"f",1.70},{"m",1.70},{"m",1.75},{"f",1.56},{"f",1.56},{"m",1.80},{"f",1.56},{"f",1.60},{"f",1.81},{"m",1.50},{"f",1.60},{"f",1.62},{"m",1.70},{"m",1.90},{"f",1.57},{"m",1.83},{"m",1.85},{"m",1.56},{"m",1.87},{"f",1.56},{"m",1.60},{"m",1.75},{"f",1.56},{"f",1.60},{"m",2.00},{"f",1.75},{"f",1.56}}
    LOCAL nHomen := 0
    LOCAL nMulher := 0
    LOCAL nSomaMedia := 0
    LOCAL nMediaMulher
    LOCAL nMaior := 0
    LOCAL nMenor := 3.00
    LOCAL i
    LOCAL j

    //Apresentacao
    Apresentacao()

    for i=1 to len(nPessoa)

        if (nPessoa[i][2]>nMaior)
            nMaior := nPessoa[i][2]
        elseif (nPessoa[i][2]<nMenor)
            nMenor := nPessoa[i][2]
        endif

        if (nPessoa[i][1]=="f")
            nMulher++
            nSomaMedia := nSomaMedia+nPessoa[i][2]
        elseif (nPessoa[i][1]=="m")
            nHomen++
        endif
    next i

    nMediaMulher := nSomaMedia/nMulher

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("A maior altura: ",AllTrim(str(nMaior)))
    Resultado("A menor altura: ",AllTrim(str(nMenor)))
    Resultado("A media de altura das mulhers: ",AllTrim(str(nMediaMulher)))
    Resultado("Numero de homens : ",AllTrim(str(nHomen)))
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

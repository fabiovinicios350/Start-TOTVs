//Contastes de apresentacao
#define TITULO "VALIDACAO"
#define DATA CtoD("2022/10/17")

Function Main()

    //Declarando Variaveis
    LOCAL cCaracter

    //Apresentacao
    Apresentacao()

    ACCEPT "Digite uma letra: " TO cCaracter
    

    while (IsAlpha(cCaracter)==.F.)
        ACCEPT "O caracter informado nao e uma letra, digite novamente: " TO cCaracter
    enddo

    ResultadoCabecalho() 
    Resultado("A letra e: ",Alltrim(Upper(cCaracter)))
    QOUT("**                                                 **")
    Resultado("WHILE e a melhor opcao pois nao temos um valor","")
    Resultado("fixo de repeticao, e sim apenas uma consicao a","")
    Resultado("ser seguida.","")
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

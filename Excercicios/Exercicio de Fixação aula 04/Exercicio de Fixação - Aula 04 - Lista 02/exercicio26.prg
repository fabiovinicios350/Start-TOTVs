//Contastes de apresentacao
#define TITULO "RAIZ DE UMA FUNCAO DE 1 "
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL nY := 0
    LOCAL nA := 0
    LOCAL nB := 0
    LOCAL nX

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o valor do coeficiente X(a): " TO nA
    ACCEPT "Digite o valor do elemento neutro(b): " TO nB
    
    //Operacao logica]
    nX := (Val(nB)*(-1))/Val(nA)
    
    
    ResultadoCabecalho()
    Resultado("O valor da Raiz e: ",Alltrim(str(nX)))
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

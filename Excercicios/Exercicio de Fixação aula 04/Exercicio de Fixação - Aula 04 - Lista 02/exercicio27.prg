//Contastes de apresentacao
#define TITULO "RAIZ DE UMA FUNCAO DE 2 "
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL nY := 0
    LOCAL nA
    LOCAL nB
    LOCAL nC
    LOCAL nDelta
    LOCAL nX := {}

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o valor do coeficiente X²(a): " TO nA
    ACCEPT "Digite o valor do coeficiente X(b): " TO nB
    ACCEPT "Digite o valor do elemento neutro(c): " TO nC

    nA := Val(nA)
    nB := Val(nB)
    nC := Val(nC)

    
    //Operacao logica]
    nDelta := (nB*nB)-(4*nA*nC)

    AAdd(nX,((nB*(-1)+Sqrt(nDelta))/(2*nA)))
    AAdd(nX,((nB*(-1)-Sqrt(nDelta))/(2*nA)))

    
    
    
    ResultadoCabecalho()
    Resultado("O valor de Delta: ",Alltrim(str(nDelta)))
    Resultado("O valor da Raiz e: ",hb_ValToExp(nX))
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

//Contastes de apresentacao
#define TITULO "CALCULANDO "
#define DATA CtoD("2022/10/19")

Function Main()

    //Declarando Variaveis
    LOCAL nNumero
    LOCAL nResultado := 0
    LOCAL i

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    QOUT("Z = (1/2)+(2/4)+(3/6)+...")
    ACCEPT "Digite a quantidade de vezes para repetir a logica: " TO nNumero
    nNumero := Val(nNumero)

    for i=1 to nNumero
        nResultado := nResultado+(i/(i+i))
    next i

    ResultadoCabecalho()    
    Resultado("O Resultado da operacao e: ",AllTrim(str(nResultado)))
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

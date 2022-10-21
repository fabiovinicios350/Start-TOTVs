//Contastes de apresentacao
#define TITULO "ORDEM INVERSA"
#define DATA CtoD("2022/10/18")

Function Main()

    //Declarando Variaveis
    LOCAL nOrdem := {}
    LOCAL nNumero
    LOCAL i
    LOCAL nQuant
    
    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    for i=1 to 10000
        AAdd(nOrdem,Random())
    next i

    ResultadoCabecalho()
    for nQuant=len(nOrdem) to 1 step -1
        Resultado("",hb_ValToExp(nOrdem[nQuant]))
    next 
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

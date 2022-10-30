//Contastes de apresentacao
#define TITULO "POPULANDO VETOR"
#define DATA CtoD("2022/10/22")

Function Main()

   //Declarando Variaveis
    LOCAL aElementos := {}
    LOCAL nElemento
    LOCAL i

    Apresentacao()

    //Atribuindo valores para as variaveis
    for i:= 30 to 1 step -1
        AAdd(aElementos,i)
    next

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("Segue os valores do vetor:","")
    Resultado("","")
    for i:= 6 to len(aElementos) STEP 6
        Resultado("",alltrim(hb_ValToStr(aElementos[i-5]))+", "+alltrim(hb_ValToStr(aElementos[i-4]))+", "+alltrim(hb_ValToStr(aElementos[i-3]))+", "+alltrim(hb_ValToStr(aElementos[i-2]))+", "+alltrim(hb_ValToStr(aElementos[i-1]))+", "+alltrim(hb_ValToStr(aElementos[i])))
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

//Contastes de apresentacao
#define TITULO "ORDEM CRESCENTE"
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL nValor := {0,0,0,0}
    LOCAL nOrdem := {}
    LOCAL nRetorno
    LOCAL i

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o valor A: " TO nValor[1]
    ACCEPT "Digite o valor B: " TO nValor[2]
    ACCEPT "Digite o valor C: " TO nValor[3]
    ACCEPT "Digite o valor D: " TO nValor[4]


    for i=1 to len(nValor)
        nRetorno := CalcularMenor(nValor)
        AAdd(nOrdem,nRetorno[1])
        ADel(nValor,nRetorno[2])
    next i


    ResultadoCabecalho()    
    Resultado("Ordem crescente ",hb_ValToExp(nOrdem))
    ResultadoFechar()
        
Return nil

Function CalcularMenor(valor)

    LOCAL i
    LOCAL nMenor := Val(valor[1])
    LOCAL nPosicao

    for i = 1 to len(valor)
        //if (nMaior < Val(valor[i]))
            //nMaior := Val(valor[i])
        //endif
        if(valor[i]<>nil)
            if (nMenor > Val(valor[i]))
                nMenor := Val(valor[i])
                nPosicao := i
            endif
        endif
    next i

Return {nMenor,nPosicao}


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

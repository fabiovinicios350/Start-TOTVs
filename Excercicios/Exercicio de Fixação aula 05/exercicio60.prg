REQUEST HB_GT_WIN_DEFAULT

//Contastes de apresentacao
#define TITULO "SOMAR NUMEROS NATURAIS PARES "
#define DATA CtoD("2022/10/16")

Function Main()

    //Declarando Variaveis
    LOCAL nSoma := 0
    LOCAL nQuantidade
    LOCAL nParImpar
    LOCAL nMultiplo
    LOCAL i := 1
    LOCAL j := 1

    ACCEPT "Digite uma quantidade de numeros a ser somado: " TO nQuantidade
    ACCEPT "Digite se e par ou impar: " TO nParImpar

    nQuantidade := Val(nQuantidade)
    nParImpar := Lower(nParImpar)

    //Apresentacao
    Apresentacao()

    if(nParImpar=="par" .OR. nParImpar=="impar" )
        while (i<=nQuantidade)
            if (nParImpar=="par")
                if(j%2=0)
                    nSoma := nSoma+j
                    i++
                endif
                j++
            else
                if(j%2<>0)
                    nSoma := nSoma+j
                    i++
                endif
                j++
            endif
        enddo

        ResultadoCabecalho() 
        Resultado("",Alltrim(str(nSoma)))
        ResultadoFechar()
    else
        ResultadoCabecalho() 
        Resultado("Valor informado nao par e nem impar","")
        ResultadoFechar()
    endif
    
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

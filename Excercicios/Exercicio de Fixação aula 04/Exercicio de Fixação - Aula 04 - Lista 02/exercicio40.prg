//Contastes de apresentacao
#define TITULO "TRIANGULO"
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL nLadoA
    LOCAL nLadoB
    LOCAL nLadoC
    LOCAL cTipo
    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o valor do lado A de um triangulo: " TO nLadoA
    ACCEPT "Digite o valor do lado B de um triangulo: " TO nLadoB
    ACCEPT "Digite o valor do lado C de um triangulo: " TO nLadoC
    
    nLadoA := Val(nLadoA)
    nLadoB := Val(nLadoB)
    nLadoC := Val(nLadoC)

    ResultadoCabecalho()
    if (nLadoA<(nLadoB+nLadoC) .AND. nLadoB<(nLadoA+nLadoC) .AND. nLadoC<(nLadoB+nLadoA) .AND. nLadoA>0 .AND. nLadoB>0 .AND. nLadoC>0)
        if(nLadoA<>nLadoB .AND. nLadoB<>nLadoC .AND. nLadoA<>nLadoC)
            Resultado("O Triangulo e do tipo Escaleno","")
        elseif (nLadoA=nLadoB .AND. nLadoB=nLadoC)
            Resultado("O Triangulo e do tipo Equilatero","")
        elseif (nLadoA=nLadoB .OR. nLadoB=nLadoC .AND. nLadoA=nLadoC )
            Resultado("O Triangulo e do tipo Isosceles","")
            
        else
            Resultado("O Triangulo e de um outro tipo","")
        endif
    else
        Resultado("Nao e um triangulo","")
    endif
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

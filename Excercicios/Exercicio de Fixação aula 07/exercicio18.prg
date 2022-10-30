//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "MATRIZ " 
#define DATA CtoD("2022/10/23")

Function Main()

    //Declarando Variaveis
    LOCAL nDia
    LOCAL nMes
    LOCAL nAno
    LOCAL nQuantidadeDias
    LOCAL nDiaCont := 1
    LOCAL nMesCont := 1
    LOCAL nLimiteCont := 0
    LOCAL nDiaAno := 0

    //Apresentacao
    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o dia a ser pesquisado: " TO nDia
    ACCEPT "Digite o mes a ser pesquisado: " TO nMes
    ACCEPT "Digite o ano a ser pesquisado: " TO nAno

    nDia := Val(nDia)
    nMes := Val(nMes)
    nAno := Val(nAno)


    if (nAno%4==0 .And. nMes>2)
        nQuantidadeDias := 366
    else 
        nQuantidadeDias := 365
    endif


    if (nMes=2 )
        if (nQuantidadeDias==366)
            nLimiteCont := 29
        else
            nLimiteCont := 28
        endif
    elseif (nMes>=1 .AND. nMes<=7)
        nLimiteCont := CalculaMes(nMes,"impar")
    elseif (nMes>=8 .AND. nMes<=12)
        nLimiteCont := CalculaMes(nMes,"par")
    else
    endif 

    ResultadoCabecalho(TITULO)
    if (nLimiteCont>=nDia .AND. nDia>0 )
        nLimiteCont := 0
        for nDiaAno = 1 to nQuantidadeDias
            if(nDiaCont==nDia .and. nMesCont== nMes)
                exit
            else
                if (nMesCont=2 )
                    if (nQuantidadeDias==366)
                        nLimiteCont := 29
                    else
                        nLimiteCont := 28
                    endif
                elseif (nMesCont>=1 .AND. nMesCont<=7)
                    nLimiteCont := CalculaMes(nMesCont,"impar")
                elseif (nMesCont>=8 .AND. nMesCont<=12)
                    nLimiteCont := CalculaMes(nMesCont,"par")
                else
                endif 

                if (nLimiteCont>= (nDiaCont+1))
                    nDiaCont := nDiaCont+1
                else
                    nMesCont := nMesCont+1
                    nDiaCont := 1
                endif 

            endif

        next nDiaAno
        Resultado("O dia "+Alltrim(str(nDia))+"/"+Alltrim(str(nMes))+"/"+Alltrim(str(nAno))," e o "+Alltrim(str(nDiaAno))+" dia do ano")
    else
        Resultado("O dia ou mes incorreto para esse ano","")
    endif
    ResultadoFechar()


    
Return nil


Function CalculaMes(numero,tipo)
    LOCAL nDias

    if (tipo=="impar")
        if (numero%2==0)
            nDias:=30
        else
            nDias:=31
        endif
    elseif (tipo=="par")
        if (numero%2==0)
            nDias:=31
        else
            nDias:=30
        endif
    endif

Return nDias

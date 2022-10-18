//Contastes de apresentacao
#define TITULO "DESCOBRIR QUANTIDADE DE DIAS "
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL nMes

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o numero do mes que deseja saber a quantidade de dias: " TO nMes
    nMes := Val(nMes)

    ResultadoCabecalho()
    if (nMes=2 )
       Resultado("O mes "+Alltrim(str(nMes))+" tem ",Alltrim(str(28))+" Dias")
    elseif (nMes>=1 .AND. nMes<=7)
        Resultado("O mes "+Alltrim(str(nMes))+" tem ",Alltrim(str(CalculaMes(nMes,"impar")))+" Dias" )
    elseif (nMes>=8 .AND. nMes<=12)
        Resultado("O mes "+Alltrim(str(nMes))+" tem ",Alltrim(str(CalculaMes(nMes,"par")))+" Dias" )
    else
        Resultado("O numero informado nao e um mes","" )
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

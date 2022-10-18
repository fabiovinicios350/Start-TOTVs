//Contastes de apresentacao
#define TITULO "DIFERENCA ENTRE VALORES"
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL nValor01
    LOCAL nValor02
    LOCAL nDiferenca

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o primieiro valor: " TO nValor01
    ACCEPT "Digite o segundo valor: " TO nValor02
    
    nValor01 := Val(nValor01)
    nValor02 := Val(nValor02)

    //Operacao logica
    nDiferenca := nValor01-nValor02

    if (nDiferenca<0)
        nDiferenca := nDiferenca*(-1)
    endif

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("A diferenca entre "+Alltrim(str(nValor01))+" e "+Alltrim(str(nValor02))+" e : ",Alltrim(str(nDiferenca)))
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

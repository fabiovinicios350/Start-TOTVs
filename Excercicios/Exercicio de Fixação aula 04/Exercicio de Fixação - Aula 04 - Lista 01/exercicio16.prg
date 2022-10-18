//Contastes de apresentacao
#define TITULO "O PRODUTO DA SOMA PELA DIFERENCA "
#define DATA CtoD("2022/10/13")

Function Main()

    //Declarando Variaveis
    LOCAL nValor01
    LOCAL nValor02
    LOCAL nProduto
    LOCAL nDiferenca
    LOCAL nSoma

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o primeiro numero: " TO nValor01
    ACCEPT "Digite o segundo numero: " TO nValor02


    //Operacoes logicas
    nSoma := (Val(nValor01)*Val(nValor01))+ (Val(nValor02)*Val(nValor02))

    if Val(nValor01)>=Val(nValor02)
        nDiferenca := (Val(nValor01)*Val(nValor01))-(Val(nValor02)*Val(nValor02))
    else
        nDiferenca := (Val(nValor02)*Val(nValor02))-(Val(nValor01)*Val(nValor01))
    endif

    nProduto := nSoma * nDiferenca

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("Valor do primeiro numero: ",Alltrim(nValor01))
    Resultado("Valor do segundo numero: ",Alltrim(nValor02))
    Resultado("Valor da soma dos quadrados: ",Alltrim(str(nSoma)))
    Resultado("Valor da diferenca dos quadrados: ",Alltrim(str(nDiferenca)))
    Resultado("Valor do produto da soma pela diferenca: ",Alltrim(str(nProduto)))
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

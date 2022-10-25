REQUEST HB_GT_WIN_DEFAULT

//Contastes de apresentacao
#define TITULO "TROCA DE VALORES "
#define DATA CtoD("2022/10/22")

Function Main()

    //Declarando Variaveis
    private cA
    private cB
    private ctroca

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o valor da variavel A: " TO cA
    ACCEPT "Digite o valor da variavel B: " TO cB


    //Operacoes logicas
    Troca()

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("Valor da Variavel A: ",Alltrim(cA))
    Resultado("Valor da Variavel B: ",Alltrim(cB))
    ResultadoFechar()

    wait"Digite qualquer tecla para sair"

Return nil

Static Function Troca()
    
    ctroca := cA
    cA := cB
    cB := ctroca

Return .T.



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

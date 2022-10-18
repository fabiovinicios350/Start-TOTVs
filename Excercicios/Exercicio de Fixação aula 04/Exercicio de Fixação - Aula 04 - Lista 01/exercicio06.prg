//Contastes de apresentacao
#define TITULO "CALCULANDO GASTOS NA VIAGEM"
#define DATA CtoD("2022/10/13")

Function Main()

    //Declarando Variaveis
    LOCAL nTempo
    LOCAL nVelocidade
    LOCAL nDistancia
    LOCAL nKmPorLitro
    LOCAL nlitrosUsados

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite quantos KM seu carro faz com 1 litro: " TO nKmPorLitro
    ACCEPT "Digite quantas Horas voce gastou em sua viagem: " TO nTempo
    ACCEPT "Digite a velocidade medida durante a viagem: " TO nVelocidade


    //Operacoes logicas
    nDistancia := Val(nTempo) * Val(nVelocidade)
    nlitrosUsados := nDistancia/Val(nKmPorLitro)

    //Apresentando na tela os resultados
    ResultadoCabecalho()
    Resultado("Voce percorreu: "+Alltrim(str(nDistancia))+" KM"," ")
    Resultado("Gastanto "+Alltrim(str(nlitrosUsados))+" Litros "," ")
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

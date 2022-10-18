//Contastes de apresentacao
#define TITULO "MEDIA DE NOTAS "
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL nNota01
    LOCAL nNota02
    LOCAL nNota03
    LOCAL nNota04
    LOCAL nNotaExame
    LOCAL nMedia
    LOCAL cNome

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o seu nome: " TO cNome
    ACCEPT "Digite a primiera nota: " TO nNota01
    ACCEPT "Digite a segunda nota: " TO nNota02
    ACCEPT "Digite a terceira nota: " TO nNota03
    ACCEPT "Digite a quarta nota: " TO nNota04
    
    //Operacao logica
    nMedia := (Val(nNota01)+Val(nNota02)+Val(nNota03)+Val(nNota04))/4

    if (nMedia>=7)
        //Apresentando na tela os resultados
        ResultadoCabecalho()
        Resultado("Parabens "+Alltrim(cNome)+" voce foi aprovado !!","")
        Resultado("Media de ",Alltrim(str(nMedia)))
        ResultadoFechar()
    else
        ResultadoCabecalho()
        Resultado(+Alltrim(cNome)+" Infelizmente voce nao foi aprovado","!!")
        Resultado("E preciso fazer um prova de exame.","")
        Resultado("Media de ",Alltrim(str(nMedia)))
        ResultadoFechar()
        
        ACCEPT "Digite a nota do exame: " TO nNotaExame
        nMedia := (nMedia+Val(nNotaExame))/2

        if (nMedia>=5)
            //Apresentando na tela os resultados
            ResultadoCabecalho()
            Resultado("Parabens "+Alltrim(cNome)+" voce foi aprovado em exame !!","")
            Resultado("Media de ",Alltrim(str(nMedia)))
            ResultadoFechar()
        else
            ResultadoCabecalho()
            Resultado(+Alltrim(cNome)+" Infelizmente voce nao foi aprovado ","!!")
            ResultadoFechar()
        endif
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

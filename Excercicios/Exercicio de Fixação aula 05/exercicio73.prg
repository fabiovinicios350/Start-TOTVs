//Contastes de apresentacao
#define TITULO "MEDIA ALUNOS "
#define DATA CtoD("2022/10/18")

Function Main()

    //Declarando Variaveis
    LOCAL nNota
    LOCAL nNotas := {}
    LOCAL nSoma := 0
    LOCAL nMedia
    LOCAL nMaior := 0
    LOCAL nMenor := 10
    LOCAL i
    LOCAL lLoop := .T.
    
    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    while (lLoop)
        QOUT("Pressione o tecla ESC para encerrar o lancamento de Notas")
        QOUT("Ou qualquer tecla para continuar")
        WAIT ""
        if lastkey() == 27
            lLoop := .F.
        else
            ACCEPT "Digite a nota de um aluno: " TO nNota

            if(ISDIGIT(nNota)=.T.)
                nNota := Val(nNota)
                if(nNota<=10 .and. nNota>=0)
                    nSoma := nSoma + nNota
                    AAdd(nNotas,nNota)
                else
                    QOUT("Nota invalida, tente novamente!!")
                endif
            else
                QOUT("Nota invalida, digite novamente!")
            endif

            QOUT("")
            
        endif


    enddo

    for i := 1 to len(nNotas)
        if(nNotas[i]>=nMaior)
            nMaior := nNotas[i]
        elseif (nNotas[i]<=nMenor)
            nMenor := nNotas[i]
        endif
    next i

    nMedia := nSoma/len(nNotas)

    ResultadoCabecalho()
    Resultado("","")
    Resultado("A media da sala e: ",alltrim(str(nMedia)))
    Resultado("A maior nota da sala e: ",alltrim(str(nMaior)))
    Resultado("A Menor nota da sala e: ",alltrim(str(nMenor)))
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

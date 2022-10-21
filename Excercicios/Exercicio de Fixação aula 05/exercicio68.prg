//Contastes de apresentacao
#define TITULO "MEDIA ALUNOS "
#define DATA CtoD("2022/10/18")

Function Main()

    //Declarando Variaveis
    LOCAL nNotas := {5.0,10.0,9.0,4.0,8.0,7.0,10.0,10.0,3.0,9.0,8.0,7.0,9.0,0.0,5.0}
    LOCAL nSoma := 0
    LOCAL nMedia
    LOCAL i
    
    //Apresentacao
    Apresentacao()

    ResultadoCabecalho()
    for i := 1 to len(nNotas)
        nSoma := nSoma + nNotas[i]
        Resultado("Nota aluno "+alltrim(str(i))+": ",hb_ValToExp(nNotas[i]))
    next i

    nMedia := nSoma/len(nNotas)
    Resultado("","")
    Resultado("A media da sala e: ",str(nMedia))
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

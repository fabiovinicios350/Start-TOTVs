//Contastes de apresentacao
#define TITULO "DIVISIVEIS POR 2 E 3 "
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL nNumero01
    LOCAL nNumero02
    LOCAL nNumero03
    LOCAL nNumero04
    LOCAL aDivisivel2 := {}
    LOCAL aDivisivel3 := {}

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o primeiro numero: " TO nNumero01
    ACCEPT "Digite o segundo numero: " TO nNumero02
    ACCEPT "Digite o terceiro numero: " TO nNumero03
    ACCEPT "Digite o quarto numero: " TO nNumero04

    nNumero01 := Val(nNumero01)
    nNumero02 := Val(nNumero02)
    nNumero03 := Val(nNumero03)
    nNumero04 := Val(nNumero04)

    if(Divisivel(nNumero01,2)<>0)
        AAdd(aDivisivel2,Divisivel(nNumero01,2))
    endif
    if(Divisivel(nNumero01,3)<>0)
        AAdd(aDivisivel3,Divisivel(nNumero01,3))
    endif

    if(Divisivel(nNumero02,2)<>0)
        AAdd(aDivisivel2,Divisivel(nNumero02,2))
    endif
    if(Divisivel(nNumero02,3)<>0)
        AAdd(aDivisivel3,Divisivel(nNumero02,3))
    endif

    if(Divisivel(nNumero03,2)<>0)
        AAdd(aDivisivel2,Divisivel(nNumero03,2))
    endif
    if(Divisivel(nNumero03,3)<>0)
        AAdd(aDivisivel3,Divisivel(nNumero03,3))
    endif

    if(Divisivel(nNumero04,2)<>0)
        AAdd(aDivisivel2,Divisivel(nNumero04,2))
    endif
    if(Divisivel(nNumero04,3)<>0)
        AAdd(aDivisivel3,Divisivel(nNumero04,3))
    endif
    
        
    //Operacao logica]
    ResultadoCabecalho()
    Resultado("Numeros divisivel por 2 ",hb_ValToExp(aDivisivel2))
    Resultado("Numeros divisivel por 3 ",hb_ValToExp(aDivisivel3))
    ResultadoFechar()

Return nil

Function Divisivel(numero,divisivel)
    LOCAL nValor

    if(numero%divisivel==0)
        nValor := numero
    else
        nValor := 0
    endif

Return nValor

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

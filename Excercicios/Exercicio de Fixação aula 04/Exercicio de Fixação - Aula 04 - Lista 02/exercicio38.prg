//Contastes de apresentacao
#define TITULO "VERIFICAR VOGAL UM DIGITO OU SIMBOLO"
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL cCaracter
    LOCAL cCaracterAntes
    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite um caracter qualquer: " TO cCaracter

    cCaracterAntes := Upper(cCaracter) 
    cCaracter := Lower(cCaracter)

    ResultadoCabecalho()
    if (len(cCaracter)=1)
        if (IsDigit(cCaracter)==.T.)
            Resultado("O Caracter "+cCaracterAntes+" e um numero","")
        elseif (IsAlpha(cCaracter)==.T.)
            if (cCaracter=="a" .OR. cCaracter=="e" .OR. cCaracter=="i" .OR. cCaracter=="o" .OR. cCaracter=="u")
                Resultado("O Caracter "+cCaracterAntes+" e uma vogal","")
            else
                Resultado("O Caracter "+cCaracterAntes+" e um texto porem nao e uma vogal","")
            endif
        else
            Resultado("O Caracter "+cCaracterAntes+" e um Simbolo","")
        endif
    else
        Resultado("Voce informou mais de um caracter","")
    endif
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

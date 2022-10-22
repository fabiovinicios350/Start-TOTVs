//Contastes de apresentacao
#define TITULO "VALIDADOR de GB"
#define DATA CtoD("2022/10/19")

Function Main()

    //Declarando Variaveis
    LOCAL nCodigo
    LOCAL nImagem
    LOCAL nTamanho := 1500
    LOCAL lLoop := .T.
    LOCAL i

    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    while (lLoop)
        QOUT("")
        QOUT("")
        ACCEPT "Digite o codigo do produto ou F para finalizar: " TO nCodigo
        if(nCodigo=="F")
            lLoop := .F.
        else
            while nTamanho>0
                QOUT("")
                QOUT("// Voce tem "+alltrim(str(nTamanho))+" MegaBytes restante")
                ACCEPT "Digite o tamanho da imagem: " TO nImagem
                
                if( nImagem== "F")
                    nTamanho:=0
                elseif (ISDIGIT(nImagem)<>.T.)
                    QOUT("Imagem com tamanho errado")
                else
                    if((nTamanho-Val(nImagem))>=0)
                        nTamanho:= nTamanho - Val(nImagem)
                    else
                        QOUT("Tamanho da imagem maior que a quantidade disponivel")
                    endif
                endif
            enddo
        endif
    enddo

    ResultadoCabecalho()    
    Resultado("Produtos cadastrado com sucesso","")
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

//Contastes de apresentacao
#define TITULO "MENSAGEM GERERO"
#define DATA CtoD("2022/10/14")

Function Main()

    //Declarando Variaveis
    LOCAL cNome
    LOCAL cSexo
    LOCAL cTipo := ""
    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    ACCEPT "Digite o seu nome: " TO cNome
    ACCEPT "Digite o seu Sexo (m=masculino | f=feminino): " TO cSexo
    cSexo := Lower(cSexo)
    cTipo := Validacao(cSexo)


    ResultadoCabecalho()
    Resultado("Ola "+cTipo+" "+cNome,"")
    Resultado("Seja Bem vindo ao Programa Start TOTVS!","")
    ResultadoFechar()
        
Return nil

Function Validacao(texto)
    LOCAL cTipo
    LOCAL lLoop := .T.

    while lLoop
        if( texto=="m" .OR. texto=="masculino")
            lLoop := .F.
            cTipo := "Sr."
        elseif (texto=="f" .OR. texto=="feminino")
            lLoop := .F.
            cTipo := "Sra."
        else
            ACCEPT "Informacao incorreta, por favor tente novamente: " TO texto
        endif
    enddo

Return cTipo

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

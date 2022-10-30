//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "VETOR DE ELEMENTOS"
#define DATA CtoD("2022/10/23")

Function Main()

   //Declarando Variaveis
    LOCAL aElementosA := {}
    LOCAL aElementosB := {}
    LOCAL aElementosC := {}
    LOCAL i

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    PreencherVetor(@aElementosA,"A")
    PreencherVetor(@aElementosB,"B")

    for i:= 1 to len(aElementosA)
        AAdd(aElementosC,aElementosA[i])
        AAdd(aElementosC,aElementosb[i])
    next i

    //Apresentando na tela os resultados
    ResultadoCabecalho(TITULO)
    ResultadoFechar()
    QOUT("Segue os valores do vetor C e: ")
    ApresentarVetor(aElementosC)

Return nil

Static Function PreencherVetor(aVetor,cTexto)

    LOCAL i
    LOCAL nElemento

    QOUT("")
    for i:= 1 to 10
        ACCEPT "Digite um elemento para o vetor "+cTexto+": " TO nElemento
        nElemento := Val(ValidarCaracter(nElemento,"numerico"))
        AAdd(aVetor,nElemento)
    next i

Return nil

//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "VETOR INVERSO"
#define DATA CtoD("2022/10/23")

Function Main()

   //Declarando Variaveis
    LOCAL aElementosA := {}
    LOCAL aElementosB := {}
    LOCAL i

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    PreencherVetor(@aElementosA,"A")

    for i:= len(aElementosA) to 1 step -1
        AAdd(aElementosB,aElementosA[i])
    next

    //Apresentando na tela os resultados
    ResultadoCabecalho(TITULO)
    ResultadoFechar()
    QOUT("Segue os valores do vetor B e: ")
    ApresentarVetor(aElementosB)

Return nil

Static Function PreencherVetor(aVetor,cTexto)

    LOCAL i
    LOCAL nElemento

    QOUT("")
    for i:= 1 to 15
        ACCEPT "Digite um elemento para o vetor "+cTexto+": " TO nElemento
        nElemento := Val(validarCaracter(nElemento,"numerico"))
        AAdd(aVetor,nElemento)
    next i

Return nil

//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "MATRIZ "
#define DATA CtoD("2022/10/23")

Function Main()

   //Declarando Variaveis
    LOCAL aMatrizA := {}
    LOCAL aMatrizB := {}
    LOCAL aVectorB := {}
    LOCAL i

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    PreencherVetor(@aMatrizA,"A")

    for i:=1 to len(aMatrizA[1])
        AAdd(aVectorB,(aMatrizA[1][i])*3)
    next i

    AAdd(aMatrizB,aVectorB)

    //Apresentando na tela os resultados
    ResultadoCabecalho(TITULO)
    ResultadoFechar()
    QOUT("Segue os valores da matriz B: ")
    ApresentarVetor(aMatrizB,.T.)

Return nil

Static Function PreencherVetor(aMatriz,cTexto)

    LOCAL i
    LOCAL nElemento
    LOCAL aVetor := {}

    QOUT("")
    for i:= 1 to 8
        ACCEPT "Digite um elemento da matriz "+cTexto+": " TO nElemento
        nElemento := Val(validarCaracter(nElemento,"numerico"))
        AAdd(aVetor,nElemento)
    next i

    AAdd(aMatriz,aVetor)


Return nil

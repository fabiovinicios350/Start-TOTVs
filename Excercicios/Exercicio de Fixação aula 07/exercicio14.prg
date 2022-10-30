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
    LOCAL aMatrizC := {}
    LOCAL aVector
    LOCAL i
    LOCAL j

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    PreencherVetor(@aMatrizA,"A")
    PreencherVetor(@aMatrizB,"B")

    for i:=1 to len(aMatrizA)
        aVector := {}
        for j:= 1 to len(aMatrizA[i])
            AAdd(aVector,aMatrizA[i][j]-aMatrizB[i][j])
        next j
        AAdd(aMatrizC,aVector)
    next i


    //Apresentando na tela os resultados
    ResultadoCabecalho(TITULO)
    ResultadoFechar()
    QOUT("Segue os valores da matriz C: ")
    
    for i:=1 to len(aMatrizA)
        ApresentarVetor(aMatrizC[i],.T.)
    next i

Return nil

Static Function PreencherVetor(aMatriz,cTexto)

    LOCAL nElemento
    LOCAL aVetor
    LOCAL i
    LOCAL j

    QOUT("")
    for i:=1 to 4
        aVetor := {}
        for j:= 1 to 5
            ACCEPT "Digite um elemento da matriz "+cTexto+": " TO nElemento
            nElemento := Val(validarCaracter(nElemento,"numerico"))
            AAdd(aVetor,nElemento)
        next j
        AAdd(aMatriz,aVetor)
    next i

Return nil

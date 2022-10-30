//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "MATRIZ "
#define DATA CtoD("2022/10/28")

Function Main()

   //Declarando Variaveis
    LOCAL aMatrizA := {}
    LOCAL aMatrizB := {}
    LOCAL aVector
    LOCAL i
    LOCAL j

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    PreencherMatriz(@aMatrizA,"A",3,3)

    for i:=1 to len(aMatrizA)
        aVector := {}
        for j:= 1 to len(aMatrizA[i])
            AAdd(aVector,aMatrizA[j][i])
        next j
        AAdd(aMatrizB,aVector)
    next i


    //Apresentando na tela os resultados
    ResultadoCabecalho(TITULO)
    ResultadoFechar()
    QOUT("Segue os valores da matriz B: ")
    
    for i:=1 to len(aMatrizA)
        ApresentarVetor(aMatrizB[i])
    next i

Return nil


Static Function PreencherMatriz(aMatriz,cTexto,nLinha,nColuna)

    LOCAL nElemento
    LOCAL aVetor
    LOCAL i
    LOCAL j

    QOUT("")
    for i:=1 to nLinha
        aVetor := {}
        for j:= 1 to nColuna
            ACCEPT "Digite um elemento da matriz "+cTexto+": " TO nElemento
            nElemento := Val(validarCaracter(nElemento,"numerico"))
            AAdd(aVetor,nElemento)
        next j
        AAdd(aMatriz,aVetor)
    next i

    QOUT(aMatriz)

Return nil

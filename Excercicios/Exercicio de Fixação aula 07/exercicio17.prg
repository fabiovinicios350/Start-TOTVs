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
    LOCAL aMatrizSoma := {}
    LOCAL aVector
    LOCAL nSoma := 0 
    LOCAL i
    LOCAL j

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    PreencherMatriz(@aMatrizA,"A",2,5)

    for i:=1 to len(aMatrizA)
        aVector := {}
        for j:= 1 to len(aMatrizA[i])
            nSoma:= nSoma+aMatrizA[i][j]
            AAdd(aVector,nSoma)
        next j
        AAdd(aMatrizSoma,aVector)
    next i

    //Apresentando na tela os resultados
    ResultadoCabecalho(TITULO)
    ResultadoFechar()

    QOUT("Segue os valores da matriz A: ")
    
    for i:=1 to len(aMatrizA)
        ApresentarVetor(aMatrizA[i])
    next i

    QOUT("")
    QOUT("Segue os valores da matriz B: ")
    
    for i:=1 to len(aMatrizSoma)
        ApresentarVetor(aMatrizSoma[i])
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

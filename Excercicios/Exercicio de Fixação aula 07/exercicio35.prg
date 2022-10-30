//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "MATRIZ "
#define DATA CtoD("2022/10/23")

Function Main()

   //Declarando Variaveis
    LOCAL aVetorA := {}
    LOCAL aVetorB := {}
    LOCAL aVetorC := {}
    LOCAL aMatrizM := {}
    LOCAL aVector
    LOCAL i
    LOCAL j

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    GeraVetor(@aVetorA,"A",10)
    GeraVetor(@aVetorB,"B",10)
    GeraVetor(@aVetorC,"C",10)

    AAdd(aMatrizM,aVetorA)
    AAdd(aMatrizM,aVetorB)
    AAdd(aMatrizM,aVetorC)


    //Apresentando na tela os resultados
    ResultadoCabecalho(TITULO)
    ResultadoFechar()
    QOUT("Segue os valores da matriz M: ")
    
    for i:=1 to len(aMatrizM)
        ApresentarVetor(aMatrizM[i])
    next i

Return nil

Static Function GeraVetor(aVetor,cTexto,nQuant)

    LOCAL nElemento
    LOCAL i
    LOCAL j

    QOUT("")
    for i:=1 to nQuant
        ACCEPT "Digite um elemento da matriz "+cTexto+": " TO nElemento
        nElemento := Val(validarCaracter(nElemento,"numerico"))
        AAdd(aVetor,nElemento)
    next i

Return nil

//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "MATRIZ DIAGONAL"
#define DATA CtoD("2022/10/28")

Function Main()

   //Declarando Variaveis
    LOCAL aMatrizA := {}
    LOCAL aPrincipal := {}
    LOCAL cPalavra:= ""
    LOCAL nAux := 4
    LOCAL i
    LOCAL j

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    PreencherMatriz(@aMatrizA,"A",5,5)

    for i:=1 to len(aMatrizA)
        for j:= 1 to len(aMatrizA[i])
            if j==i
                cPalavra := cPalavra+aMatrizA[i][j]  
            endif
        next j
    next i

    //Apresentando na tela os resultados
    ResultadoCabecalho(TITULO)
    ResultadoFechar()
    QOUT("Palavra: ")
    
    QOUT(cPalavra)

    QOUT("")
    for i:=1 to len(aMatrizA)
        ApresentarVetor(aMatrizA[i])
    next i

Return nil


Static Function PreencherMatriz(aMatriz,cTexto,nLinha,nColuna)

    LOCAL nElemento
    LOCAL aVetor
    LOCAL i
    LOCAL j
    LOCAL lLoop := .T.

    QOUT("")
    for i:=1 to nLinha
        aVetor := {}
        for j:= 1 to nColuna
            lLoop:=.T.
            while lLoop
                nElemento := Random()%100+1
                if(nElemento>=65 .and. nElemento<=90) .or. (nElemento>=97 .and. nElemento<=122)
                    AAdd(aVetor,Upper(chr(nElemento)))
                    lLoop:=.F.
                endif
            enddo
        next j
        AAdd(aMatriz,aVetor)
    next i

    QOUT(aMatriz)

Return nil

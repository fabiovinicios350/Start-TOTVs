//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "MATRIZ DIFERENCA DIAGONAL"
#define DATA CtoD("2022/10/28")

Function Main()

   //Declarando Variaveis
    LOCAL aMatrizA := {}
    LOCAL aDiferenca := {}
    LOCAL aPrincipal := {}
    LOCAL aSecundaria := {}
    LOCAL nAux := 4
    LOCAL i
    LOCAL j

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    PreencherMatriz(@aMatrizA,"A",3,3)

    for i:=1 to len(aMatrizA)
        for j:= 1 to len(aMatrizA[i])
            if j==i
                AAdd(aPrincipal,aMatrizA[i][j])   
            endif
            if j+i==nAux
                AAdd(aSecundaria,aMatrizA[i][j])   
            endif
        next j
    next i

    for i:=1 to len(aMatrizA)
        AAdd(aDiferenca,aPrincipal[i]-aSecundaria[i])
    next i

    //Apresentando na tela os resultados
    ResultadoCabecalho(TITULO)
    ResultadoFechar()
    QOUT("Diferencia das diagonais: ")
    
    ApresentarVetor(aDiferenca)

Return nil


Static Function PreencherMatriz(aMatriz,cTexto,nLinha,nColuna)

    LOCAL nElemento
    LOCAL aVetor
    LOCAL i
    LOCAL j
    LOCAL nCont:= 0

    QOUT("")
    for i:=1 to nLinha
        aVetor := {}
        for j:= 1 to nColuna
            
            AAdd(aVetor,nCont)
            nCont++
        next j
        AAdd(aMatriz,aVetor)
    next i

    QOUT(aMatriz)

Return nil

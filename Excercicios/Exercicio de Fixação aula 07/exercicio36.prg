//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "MATRIZ "
#define DATA CtoD("2022/10/23")

Function Main()

   //Declarando Variaveis
    LOCAL aMatrizN := {}
    LOCAL i

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    PreencherMatriz(@aMatrizN,"N",3,10)

    //Apresentando na tela os resultados
    ResultadoCabecalho(TITULO)
    ResultadoFechar()
    QOUT("Segue os valores da matriz M: ")
    
    for i:=1 to len(aMatrizN)
        ApresentarVetor(aMatrizN[i])
    next i

Return nil


Static Function PreencherMatriz(aMatriz,cTexto,nLinha,nColuna)

    LOCAL aVetor
    LOCAL i
    LOCAL j

    QOUT("")
    for i:=1 to nLinha
        aVetor := {}
        for j:= 1 to nColuna
            AAdd(aVetor,i+j)
        next j
        AAdd(aMatriz,aVetor)
    next i

    QOUT(aMatriz)

Return nil

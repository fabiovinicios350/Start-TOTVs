//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg
SET PROCEDURE TO Gerar_Vetor.prg

//Contastes de apresentacao
#define TITULO "VETOR DE 50 - 4 Menus"
#define DATA CtoD("2022/10/24")

Function Main()

   //Declarando Variaveis
    LOCAL aVetor := {}
    LOCAL nOpcao
    LOCAL i

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    for i:=1 to 50
        AAdd(aVetor,GerarElemento())
    next i

    ACCEPT "(1) - Mostrar Vetor na tela" + chr(10) +; 
    "(2) - Pesquisar Caracter no vetor" + chr(10) +; 
    "(3) - Pesquisar Caracter no vetor e mostrar a posicao da ultima ocorrencia" + chr(10) +; 
    "(4) - Pesquisar Caracter no vetor e mostrar a posicao da primieria ocorrencia" + chr(10) +; 
    "Digite uma das opcoes:  " TO nOpcao
    nOpcao := Val(ValidarCaracter(nOpcao,"numerico"))
    nOpcao := ValidaOpcao(nOpcao)

    if nOpcao==1
        QOUT("")
        ResultadoCabecalho("VETOR 50 ELEMENTO")
        ResultadoFechar()
        QOUT("Vetor: ")
        ApresentarVetor(aVetor)
    else
        QOUT("")
        PesquisaCaracter(aVetor,nOpcao)
    endif


Return nil

Static Function PesquisaCaracter(aArray,nTipo)

    LOCAL cCaracter
    LOCAL nQuant := 0
    LOCAL aVetor := {}
    LOCAL i

    ACCEPT "Digite um caracter que voce quer pesquisar no vetor: " TO cCaracter
    cCaracter := ValidarCaracter(cCaracter,"caracter")

    for i:=1 to len(aArray)

        if cCaracter==aArray[i]
            AAdd(aVetor,i)
            nQuant++
        endif
    next i

    //Apresentando na tela os resultados
    ResultadoCabecalho("PESQUISA CARACTER")
    
    if nQuant>0
        if nTipo==2
            Resultado("Caracter '"+cCaracter+"' foi encontrado "+alltrim(str(nQuant))+" vezes no vetor","")
            Resultado("Nas posicoes ",hb_ValToExp(aVetor))

        elseif nTipo==3
            Resultado("Caracter '"+cCaracter+"' foi encontrado "+alltrim(str(nQuant))+" vezes no vetor","")
            Resultado("A Ultima posicao e: ",hb_ValToExp(aVetor[len(aVetor)]))
        elseif nTipo==4
            Resultado("Caracter '"+cCaracter+"' foi encontrado "+alltrim(str(nQuant))+" vezes no vetor","")
            Resultado("A Primeira posicao e: ",hb_ValToExp(aVetor[1]))
        endif
    else
        Resultado("Caracter '"+cCaracter+"' nao encontrado no vetor","")
    endif
    Resultado("","")
    ResultadoFechar()

    QOUT("Vetor: ")
    ApresentarVetor(aArray)

return nil

Function ValidaOpcao(nValor)

    LOCAL lLoop := .T.

    while lLoop
        if nValor>=1 .and. nValor<=4
            lLoop := .F.
        else
        ACCEPT "Opcao invalida, Tente novamente: " TO nValor
        nValor := val(ValidarCaracter(nValor,"numerico"))
        endif
    enddo

return nValor

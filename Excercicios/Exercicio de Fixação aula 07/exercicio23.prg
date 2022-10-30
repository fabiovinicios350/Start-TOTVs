//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "VETOR DE 8 NUMEROS - MENU"
#define DATA CtoD("2022/10/24")

Function Main()

   //Declarando Variaveis
    LOCAL aVetor := {}
    LOCAL nNumero
    LOCAL nOpcao
    LOCAL i

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    for i:=1 to 8
        ACCEPT "Digite um numero paa incluir no vetor: " TO nNumero
        AAdd(aVetor,Val(ValidarCaracter(nNumero,"numerico")))
    next i

    QOUT("")
    QOUT("")
    ACCEPT "(1) - Mostrar Vetor na tela" + chr(10) +; 
    "(2) - Apresentar na ordem Crescente" + chr(10) +; 
    "(3) - Apresentra na ordem descrecente" + chr(10) +; 
    "(4) - Pesquisar valor" + chr(10) +; 
    "(5) - Somatorio dos valores" + chr(10) +; 
    "(6) - Media dos valores" + chr(10) +; 
    "(7) - Maior e o menor valor" + chr(10) +; 
    "(8) - Embaralhar o vetor" + chr(10) +; 
    "(9) - Informar os valores que se repete e a quantidade" + chr(10) +; 
    "Digite uma das opcoes:  " TO nOpcao
    nOpcao := Val(ValidarCaracter(nOpcao,"numerico"))
    nOpcao := ValidaOpcao(nOpcao)


    if nOpcao==1
        QOUT("")
        ResultadoCabecalho("VETOR 50 ELEMENTO")
        ResultadoFechar()
        QOUT("Vetor: ")
        ApresentarVetor(aVetor)
    elseif nOpcao==2 .or. nOpcao==3
        ordenarVetor(aVetor,nOpcao)
    elseif nOpcao==4
        QOUT("")
        PesquisaCaracter(aVetor)
    elseif nOpcao==5
        OperacaoVetor(aVetor,nOpcao)
    elseif nOpcao==6
        OperacaoVetor(aVetor,nOpcao)
    elseif nOpcao==7
        OperacaoVetor(aVetor,nOpcao)
    elseif nOpcao==8
        EmbaralharVetor(aVetor)
    elseif nOpcao==9
        ValorRepetido(aVetor)
    endif

Return nil

Static Function ValorRepetido(aArray)

    LOCAL nNumero
    LOCAL nQuant := 0
    LOCAL nExiste
    LOCAL nRepete := {}
    LOCAL k
    LOCAL i
    LOCAL j

    //Apresentando na tela os resultados
    ResultadoCabecalho("PESQUISA NUMERO")
    if len(aArray)>0
        for j:=1 to len(aArray)
            nQuant := 0
            nNumero := aArray[j]
            nExiste := .F.
            for i:=1 to len(aArray)

                if nNumero==aArray[i]
                    nExiste:= .F.
                    for k:=1 to len(nRepete)
                        if nNumero==nRepete[k]
                            nExiste := .T.
                        endif
                    next k
                    if nExiste <> .T.
                        nQuant++
                    endif
                endif
            next i
            if nQuant>1
                AAdd(nRepete,nNumero)
                Resultado("O Numero '"+Alltrim(Str(nNumero))+"' foi encontrado "+alltrim(str(nQuant))+" vezes no vetor","")
            endif
        next j
        if len(nRepete) == 0
            Resultado("Esse vetor nao contem numero repetido","")
        endif 
    else
        Resultado("Vetor vazio","")
    endif
    Resultado("","")
    ResultadoFechar()

    QOUT("Vetor: ")
    ApresentarVetor(aArray)

Return nil

Static Function EmbaralharVetor(aArray)

    LOCAL aNovo := {}
    LOCAL nValor
    LOCAL i


    if len(aArray)>0
        QOUT("Vetor Gerado: ")
        ApresentarVetor(aArray)
        while len(aNovo)<len(aArray)
            
            nValor := Random()%8+1
            
            if aArray[nValor]<>NIL
                AAdd(aNovo,aArray[nValor])
                ADel(aArray,nValor)
            endif
        enddo
        QOUT("")
        QOUT("Vetor Embaralhado: ")
        ApresentarVetor(aNovo)
    else
        Resultado("Vetor Vazio","")
    endif

Return nil

Static Function OperacaoVetor(aArray,nTipo)

    LOCAL nSoma := 0
    LOCAL nMedia
    LOCAL nMaior := 0
    LOCAL nMenor := 10000
    LOCAL i

    for i:=1 to len(aArray)  step 1
        nSoma := nSoma+aArray[i]
        if aArray[i]>=nMaior
            nMaior := aArray[i]
        endif
        if aArray[i]<=nMenor
            nMenor := aArray[i]
        endif
    next

    nMedia := nSoma/len(aArray)

    ResultadoCabecalho(TITULO)
    if nTipo==5
        Resultado("A soma dos valores do vetor e: ",Alltrim(str(nSoma)))
    elseif nTipo==6
        Resultado("A Media dos valores do vetor e: ",Alltrim(str(nMedia)))
    elseif nTipo==7
        Resultado("O maior numero do vetor e: ",Alltrim(str(nMaior)))
        Resultado("O menor numero do vetor e: ",Alltrim(str(nMenor)))
    endif
    Resultado("","")
    ResultadoFechar()

    QOUT("Vetor: ")
    ApresentarVetor(aArray)

Return nil

Static Function SomarVetor(aArray)

    LOCAL nSoma := 0
    LOCAL i

    for i:=1 to len(aArray)  step 1
        nSoma := nSoma+aArray[i]
    next

    ResultadoCabecalho("SOMA O VETOR")
    Resultado("A soma dos valores do vetor e:",Alltrim(str(nSoma)))
    Resultado("","")
    ResultadoFechar()

    QOUT("Vetor: ")
    ApresentarVetor(aArray)

Return nil

Static Function ordenarVetor(aArray,nOrdem)

    LOCAL aNovo := {}
    LOCAL nValor
    LOCAL nPosicao
    LOCAL i 

    ResultadoCabecalho("ORDENADO O VETOR ")
    ResultadoFechar()
    
    QOUT("Vetor Gerado: ")
    ApresentarVetor(aArray)


    if len(aArray)>0
        while len(aNovo)<len(aArray)
            nPosicao:=0
            nValor := 1000
            for i:=1 to len(aArray)  step 1
                
                if aArray[i]==NIL
                    loop
                else
                    if nValor >= aArray[i]
                        nValor:=aArray[i]
                        nPosicao:=i
                    endif
                endif
            next
            AAdd(aNovo,nValor)
            ADel(aArray,nPosicao)
        enddo

        if nOrdem == 2
            QOUT("")
            QOUT("Vetor organizado (Crescente): ")
            ApresentarVetor(aNovo)
        elseif nOrdem==3
            QOUT("")
            QOUT("Vetor organizado (Decrescente): ")
            ApresentarVetor(aNovo,.T.)
        endif
    else
        Resultado("Vetor Vazio","")
    endif
    
Return nil

Static Function PesquisaCaracter(aArray)

    LOCAL cCaracter
    LOCAL nQuant := 0
    LOCAL aVetor := {}
    LOCAL i

    ACCEPT "Digite um caracter que voce quer pesquisar no vetor: " TO cCaracter
    cCaracter := Val(ValidarCaracter(cCaracter,"numerico"))

    //Apresentando na tela os resultados
    ResultadoCabecalho("PESQUISA NUMERO")
    if len(aArray)>0
        for i:=1 to len(aArray)

            if cCaracter==aArray[i]
                AAdd(aVetor,i)
                nQuant++
            endif
        next i

        
        if nQuant>0
            Resultado("Caracter '"+Alltrim(Str(cCaracter))+"' foi encontrado "+alltrim(str(nQuant))+" vezes no vetor","")
            Resultado("Nas posicoes ",hb_ValToExp(aVetor))
        else
            Resultado("Caracter '"+Alltrim(Str(cCaracter))+"' nao encontrado no vetor","")
        endif
    else
        Resultado("Vetor vazio","")
    endif
    Resultado("","")
    ResultadoFechar()

    QOUT("Vetor: ")
    ApresentarVetor(aArray)

return nil

Function ValidaOpcao(nValor)

    LOCAL lLoop := .T.

    while lLoop
        if nValor>=1 .and. nValor<=9
            lLoop := .F.
        else
        ACCEPT "Opcao invalida, Tente novamente: " TO nValor
        nValor := val(ValidarCaracter(nValor,"numerico"))
        endif
    enddo

return nValor

//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "BINARIO EM DECIMAL "
#define DATA CtoD("2022/10/25")

Function Main()

   //Declarando Variaveis
    LOCAL cNUMERO
    LOCAL nOpcao
    LOCAl cResultado

    Apresentacao(TITULO,DATA)
    
    ACCEPT "(1) - Binario em Decimal" + chr(10) +; 
    "(2) - Decimal em Binario" + chr(10) +;
    "Digite uma das opcoes:  " TO nOpcao
    nOpcao := Val(ValidarCaracter(nOpcao,"numerico"))
    nOpcao := ValidaOpcao(nOpcao)

    if nOpcao==1
        QOUT("")
        ACCEPT "Digite o numero em Binario: " TO cNUMERO
        cNUMERO := ValidarCaracter(cNUMERO,"numerico")
        cNUMERO := ValidaBinario(cNUMERO)

        ResultadoCabecalho(TITULO)
        ConverterBinario(cNUMERO)
        Resultado("","")
        ResultadoFechar()
    elseif nOpcao==2
        QOUT("")
        ACCEPT "Digite o numero em Decimal: " TO cNUMERO
        cNUMERO := Val(ValidarCaracter(cNUMERO,"numerico"))

        ResultadoCabecalho(TITULO)
        ConverterDecimal(cNUMERO)
        Resultado("","")
        ResultadoFechar()
    endif

Return nil

Static Function ConverterDecimal(nValor)

    LOCAL nSobra := nValor
    LOCAL nResto
    LOCAL cBinario := ""

    while nSobra<>0

        if nSobra==1 .and. nResto<0
            nSobra := 0
            cBinario:= cBinario+"1"
        elseif nSobra==1 .and. nResto==0
            loop
        else
            nResto := int(nSobra%2)
            nSobra := int((nSobra/2))
            cBinario:= Alltrim(str(nResto))+cBinario
        endif    
    enddo

    Resultado("Decimal: ",Alltrim(str(nValor)))
    Resultado("Binario: ",cBinario)

Return nil

Static Function ConverterBinario(nValor)

    LOCAL cBinario := ""
    LOCAL nComposicao
    LOCAL nDecimal := 0
    LOCAL i

    for i:=len(nValor) to 1 step -1
        cBinario := cBinario+SubStr(nValor, i, 1)
    next 

    for i:=1 to len(cBinario) 

        if i==1
            nComposicao:=1
        else
            nComposicao:=POT(2,i-1)
        endif

        if SubStr(cBinario, i, 1)=="1"
            nDecimal := nDecimal+nComposicao
        endif

    next 

    Resultado("Binario: ",nValor)
    Resultado("Decimal: ",Alltrim(str(nDecimal)))

Return nil

Function ValidaBinario(cValor)

    LOCAL nResultado
    LOCAL cCaracter
    LOCAL i
    LOCAL lLoop := .T.

    for i:=1 to len(cValor)
        nResultado := cValor
        cCaracter:= SubStr(cValor,i,1)

        if cCaracter<>"1" .and. cCaracter<>"0"
            ACCEPT "Numero Invalido, Digite novamente: " TO cValor
            cValor := ValidarCaracter(cValor,"numerico")    
            i:=0
        endif

    next i

Return nResultado

Function ValidaOpcao(nValor)

    LOCAL lLoop := .T.

    while lLoop
        if nValor>=1 .and. nValor<=2
            lLoop := .F.
        else
        ACCEPT "Opcao invalida, Tente novamente: " TO nValor
        nValor := val(ValidarCaracter(nValor,"numerico"))
        endif
    enddo

return nValor

Function POT(Base,Expoente)
    LOCAL nResultado := Base
    LOCAL i

    Expoente := ABS(Expoente)

    if(Expoente>=2)
        for i := 2 to Expoente
            nResultado := nResultado * Base
        next i
    elseif (Expoente>=0)
        nResultado := nResultado*Expoente
    endif
Return nResultado

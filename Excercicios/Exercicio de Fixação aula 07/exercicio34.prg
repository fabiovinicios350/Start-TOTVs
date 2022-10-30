//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "CODIGO MORSE "
#define DATA CtoD("2022/10/29")

Function Main()

   //Declarando Variaveis
    LOCAL cCaracter
    LOCAL nOpcao
    
    Apresentacao(TITULO,DATA)

    ACCEPT "(1) - Decodificar Codigo Morse" + chr(10) +; 
    "(2) - Codificar palavra em codigo Morse" + chr(10) +;
    "Digite uma das opcoes:  " TO nOpcao
    nOpcao := Val(ValidarCaracter(nOpcao,"numerico"))
    nOpcao := ValidaOpcao(nOpcao)

    if nOpcao==1
        QOUT("")
        ACCEPT "Digite o Codigo Morse: " TO cCaracter
    else
        QOUT("")
        ACCEPT "Digite A palavra que deseja codificar: " TO cCaracter
    endif
    
    CodigoMorse(cCaracter,nOpcao)

Return nil

Static Function CodigoMorse(cValor,nTipo)

    LOCAL cCodigoMorse :=""
    LOCAL cInvalido := {}
    LOCAL cEncontrado :=""
    LOCAL aCodigo:= {{"A",".-"},{"N","-."},{"B","-..."},{"O","---"},{"C","-.-."},{"P",".--."},{"D","-.."},{"Q","--.-"},{"E","."},{"R",".-."},{"F","..-."},{"S","..."},{"G","--."},{"T","-"},{"H","...."},{"U","..-"},{"I",".."},{"V","...-"},{"J",".---"},{"W",".--"},{"K","-.-"},{"X","-..-"},{"L",".-.."},{"Y","-.--"},{"M","--"},{"Z","--.."},{"1","·----"},{"2","··---"},{"3","···--"},{"4","····-"},{"5","·····"},{"6","-····"},{"7","--···"},{"8","---··"},{"9","----·"},{"0","-----"}}
    LOCAL cCaracter
    LOCAL i
    LOCAL j

    ResultadoCabecalho(TITULO)
    if nTipo==1
        for i:= 1 to len(aCodigo)
            if cValor==aCodigo[i][2]
                cEncontrado:= aCodigo[i][1]
            endif
        next 

        if cEncontrado<>"" 
            Resultado("Caracter Invalido ","")
        else
            Resultado("Caracter decodificado: ",cEncontrado)
        endif
    else

        cValor := Upper(cValor)
        for j:= 1 to len(cValor)
            cCaracter := SubStr(cValor,j,1)
            for i:= 1 to len(aCodigo)
                if cCaracter==aCodigo[i][1]
                    cEncontrado:= cEncontrado+aCodigo[i][2]
                else
                    AAdd(cInvalido,cCaracter)
                endif
            next i
        next j
        
        if len(cInvalido)>0
            Resultado("Codigo Morse: ",cEncontrado)
        else
            Resultado("Caracteres invalidos: ",hb_ValToExp(cInvalido))
        endif
    endif
     Resultado("","")
    ResultadoFechar()

Return nil


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

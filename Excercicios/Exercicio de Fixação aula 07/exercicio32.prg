//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "CRIPTOGRAFIA "
#define DATA CtoD("2022/10/25")

Function Main()

   //Declarando Variaveis
    LOCAL cPalavra
    LOCAL cCripto

    Apresentacao(TITULO,DATA)

    ACCEPT "Digite uma plavra: " TO cPalavra
    cPalavra := validarCaracter(cPalavra,"caracter")

    cCripto := Criptografar(cPalavra)
    
    ResultadoCabecalho(TITULO)
    ResultadoFechar()
    QOUT("")
    QOUT("Palavra Original: "+cPalavra)
    QOUT("Palavra Criptografada: "+cCripto)

Return nil

Function Criptografar(cValor)

    LOCAL cCaracter :=""
    LOCAL cResultado :=""
    LOCAL i
    LOCAL j

    For i:=1 to len(cValor)
        cCaracter := cCaracter + Alltrim(str(ASC(SubStr(cValor,i,1))))
    next i

    for i:=1 to len(cCaracter) step 2
        cResultado := cResultado+chr(val(subStr(cCaracter,i,2)))
        //cResultado := cResultado+Alltrim(str(ASC(subStr(cCaracter,j,i))))
    next 
Return cResultado

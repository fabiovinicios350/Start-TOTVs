//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "PALAVRA INVERTIDA"
#define DATA CtoD("2022/10/24")

Function Main()

   //Declarando Variaveis
    LOCAL cPalavra
    LOCAL cInvertida

    Apresentacao(TITULO,DATA)
    
    ACCEPT "Digite uma palavra: " TO cPalavra
    cPalavra := ValidarCaracter(cPalavra,"caracter")

    cInvertida := InverterPalavra(cPalavra)

    ResultadoCabecalho(TITULO)
    Resultado("Palavra invertida: ",cInvertida)
    ResultadoFechar()

Return nil

Function InverterPalavra(cCaracter)

    LOCAL cNovo := ""
    LOCAL i

    For i:=len(cCaracter) to 1 step -1
        cNovo := cNovo+SubStr(cCaracter,i,1)
    next 
    
Return cNovo

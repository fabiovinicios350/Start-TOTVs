//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "PRIMEIRO CARACTER"
#define DATA CtoD("2022/10/24")

Function Main()

   //Declarando Variaveis
    LOCAL cPalavra

    Apresentacao(TITULO,DATA)

    ACCEPT "Digite ua palavra: " TO cPalavra
    cPalavra := ValidarCaracter(cPalavra,"caracter")


    ResultadoCabecalho(TITULO)
    Resultado("O primeiro caracter da palavra e: ",SubStr(cPalavra, 1, 1))
    ResultadoFechar()

Return nil

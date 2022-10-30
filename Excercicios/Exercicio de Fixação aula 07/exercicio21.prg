//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg
SET PROCEDURE TO Gerar_Vetor_diferente.prg

//Contastes de apresentacao
#define TITULO "VETOR DE 12 CARACTERES"
#define DATA CtoD("2022/10/23")

Function Main()

   //Declarando Variaveis
    LOCAL aVetor := {}
    LOCAL i

    Apresentacao(TITULO,DATA)

    //Atribuindo valores para as variaveis
    for i:=1 to 12
        AAdd(aVetor,GerarElemento(aVetor))
    next i

    //Apresentando na tela os resultados
    ResultadoCabecalho(TITULO)
    ResultadoFechar()
    QOUT("Vetor: ")
    ApresentarVetor(aVetor)

Return nil

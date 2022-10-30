//Bibliotecas
SET PROCEDURE TO layout.prg
SET PROCEDURE TO validacao.prg
SET PROCEDURE TO exercicio09.prg

//Contastes de apresentacao
#define TITULO "QUANTIDADE DE MOEDAS"
#define DATA CtoD("2022/10/25")

Function Main()

   //Declarando Variaveis
    LOCAL nValor
    
    Apresentacao(TITULO,DATA)

    ACCEPT "Digite o valor a pagar: " TO nValor
    nValor := val(validarCaracter(nValor,"numerico"))
    
    ResultadoCabecalho(TITULO)
    ResultadoFechar()
    QOUT("")

    calcular(nValor)

Return nil

Static Function calcular(nValor)

    LOCAL nNotas := {}
    LOCAL nSobra := nValor
    LOCAL i

    while nSobra<>0

        if int(nSobra/200) >0
            AAdd(nNotas,{"Nota de 200",int(nSobra/200)})
            nSobra:= nSobra%200
        elseif int(nSobra/100) >0
            AAdd(nNotas,{"Nota de 100",int(nSobra/100)})
            nSobra:= nSobra%100
        elseif int(nSobra/50) >0
            AAdd(nNotas,{"Nota de 50",int(nSobra/50)})
            nSobra:= nSobra%50
        elseif int(nSobra/20) >0    
            AAdd(nNotas,{"Nota de 20",int(nSobra/20)})
            nSobra:= nSobra%20
        elseif int(nSobra/10) >0
            AAdd(nNotas,{"Nota de 10",int(nSobra/10)})
            nSobra:= nSobra%10
        elseif int(nSobra/5) >0
            AAdd(nNotas,{"Nota de 5",int(nSobra/5)})
            nSobra:= nSobra%5
        elseif int(nSobra/2) >0
            AAdd(nNotas,{"Nota de 2",int(nSobra/2)})
            nSobra:= nSobra%2
        elseif int(nSobra/1) >0
            AAdd(nNotas,{"Nota de 1",int(nSobra/1)})
            nSobra:= nSobra%1
        endif
    enddo
    
    for i:=1 to len(nNotas)
        ApresentarVetor(nNotas[i])
    next i

Return NIL

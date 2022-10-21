//Contastes de apresentacao
#define TITULO "CADASTRO LOGIN"
#define DATA CtoD("2022/10/18")

Function Main()

    //Declarando Variaveis
    LOCAL cUserName
    LOCAL cSenha
    LOCAL cConfirmaSenha
    
    //Apresentacao
    Apresentacao()

    //Atribuindo valores para as variaveis
    QOUT("//Nome do usuario precisa conter pelo meno 5 caracteres")
    ACCEPT "Digite um nome para o seu usuario: " TO cUserName
    cUserName := Validacao(cUserName,"nome")
    QOUT("")
    QOUT("//Senha precisa conter:")
    QOUT("//minimo 6 caracteres")
    QOUT("//uma letra maiusculoa")
    QOUT("//um numero")
    QOUT("//um simbolo")
    ACCEPT "Digite uma senha: " TO cSenha
    cSenha := Validacao(cSenha,"senha")
    QOUT("")
    ACCEPT "Confirme a senha: " TO cConfirmaSenha
    ValidacaoSenha(cSenha,cConfirmaSenha)


    ResultadoCabecalho()
    Resultado("Cadastro efetuado com sucesso!","")
    ResultadoFechar()
        
Return nil

Function Validacao(texto,tipo)
    if (tipo=="nome")
        while (len(alltrim(texto))<5)
            ACCEPT "Nome do usuario invalido, Digite novamente: " TO texto
        enddo
    elseif (tipo=="senha")
        while (len(alltrim(texto))<6)
            ACCEPT "Nome do usuario invalido, Digite novamente: " TO texto
        enddo
    endif
Return texto

Function ValidacaoSenha(senha,confirma)

    while(confirma<>senha)
            ACCEPT "Senha incorreta, digite novamente: " TO confirma
    enddo

return confirma

Function Apresentacao()

    QOUT("")
    QOUT("*****************************************************")
    QOUT("**                                                 **")
    QOUT("**      BEM VINDO AO PROGRAMA START TOTVS IP       **")
    QOUT("**                                                 **")
    QOUT("** AUTOR: Fabio Vinicios                           **")
    QOUT("** CARGO ATUAL: Analista de sistemas               **")
    QOUT("**                                                 **")
    QOUT("** TITULO: "+TITULO+" "+space(39-len(TITULO))+"**")
    QOUT("** DATA: "+DtoC(DATA)+" "+space(41-len(DtoC(DATA)))+"**")
    QOUT("**                                                 **")
    QOUT("*****************************************************")
    QOUT("")
    QOUT("")

Return nil

Function ResultadoCabecalho()

    QOUT("")
    QOUT("")
    QOUT("*****************************************************")
    QOUT("**                                                 **")
    QOUT("**"+space((37-len(TITULO))/2)+TITULO+" - RESULTADO"+space((37-len(TITULO))/2)+"**")
    QOUT("**                                                 **")

Return nil

Function ResultadoFechar()

    QOUT("**                                                 **")
    QOUT("*****************************************************")
    QOUT("")

Return nil

Function Resultado(texto,resultado)

    QOUT("** "+texto+resultado+space(48-len(resultado)-len(texto))+"**")

Return nil

#include 'Protheus.ch'


User Function RELFORCONTROL()

	//ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
	//³ Define variaveis padroes para todos os relatorios...                     ³
	//ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
	PRIVATE nQtdLin     := 58       // Qtd de Linhas Por Pagina
	PRIVATE nLimite     := 220       // Lim				ite de Colunas
	PRIVATE cTamanho    := "G"       // P=Pequeno;M=Medio;G=Grande -> P=80;M=132;G=220 (colunas)
	PRIVATE cTitulo     := "Relatorio Padrao" // Titulo do Relatorio
	PRIVATE cDesc1      := "Relatorio de Controle de Fornecedores" // Descritivo para o usuario
	PRIVATE cDesc2      := "" // Descritivo para o usuario
	PRIVATE cDesc3      := ""
	PRIVATE cAlias      := "ZZ1" // Alias
	PRIVATE cRel        := "RelatorioPadraoZZ1" // Nome do Relatorio
	PRIVATE nli         := 01   // Variavel padrao para controlar numero de linha
	PRIVATE nQtdini     := nli  // Variavel para controlar numero de linha inicial
	PRIVATE m_pag       := 1    // Variavel padrao para contar numero da pagina
	PRIVATE lCompres    := .F. // nao mude e padrao
	PRIVATE lDicion     := .F. // nao mude e padrao
	PRIVATE lFiltro     := .F. // Habilitar o filtro ou nao
	PRIVATE lCrystal    := .F. // nao mudar controle do crystal reports
	PRIVATE aReturn     := { "", 1,"", 1, 1, 1, "",1 } // padrao nao mude
	PRIVATE lAbortPrint := .F. // Controle para abortar (sempre como esta aqui)
	PRIVATE cCabec1     := "" // Primeira linha do cabecalho ;
	PRIVATE cCabec2     := "" // utilizado pela funcao cabec...
	PRIVATE nColuna     := 03 // Numero da coluna que sera impresso as colunas   
	PRIVATE nCont  		:= 0
	
	cRel	:= SetPrint(cAlias,cRel,"",@cTitulo,cDesc1,cDesc2,cDesc3, .F., {}, .F., cTamanho, , .F.)   
	
	SetDefault(aReturn,cAlias)

	DbSelectArea("ZZ1")
	DbSetOrder(1)
	ZZ1->(dbGoTop())
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)
	@ ++nLi, nColuna pSay cTitulo
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)
	@ ++nLi, nColuna pSay cDesc1
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)

	@ ++nLi, 6 pSay "CODIGO"
	@ nLi, 16 pSay "FORNECEDOR"
	@ nLi, 28 pSay "LOJA"
	@ nLi, 43 pSay "NOME FORNECEDOR"
	@ nLi, 85 pSay "DADOS DO CERTIFICADO"
	@ nLi, 135 pSay "VALIDADE"
	@ nLi, 150 pSay "TOLERANCIA (%)"  
	@ nLi, 166 pSay "QTD. OK"  
	@ nLi, 180 pSay "QTD. N. OK"
	
	while !ZZ1->(Eof()) .And. !lAbortPrint
	    @ ++nLi, 6 pSay ZZ1->ZZ1_CODIGO
		@ nLi, 16 pSay ZZ1->ZZ1_FORNEC
		@ nLi, 28 pSay ZZ1->ZZ1_LOJAFO
		@ nLi, 43 pSay ZZ1->ZZ1_NOMEFO
		@ nLi, 85 pSay Alltrim(SubStr(ZZ1->ZZ1_CERTIF,1,45))
		@ nLi, 135 pSay DtoC(ZZ1->ZZ1_VALCER)
		@ nLi, 150 pSay alltrim(str(ZZ1->ZZ1_TOLERA))
		@ nLi, 166 pSay alltrim(str(ZZ1->ZZ1_TOTOK))
		@ nLi, 180 pSay alltrim(str(ZZ1->ZZ1_TOTNOK))                         			
	    ZZ1->(dbSkip())
	    nCont++
	enddo
	
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)
	@ ++nLi, nColuna pSay AllTrim(str(nCont))+" Registro(s) Listado(s)"
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)
	
	Set Printer To
	Ourspool(cRel)

RETURN


User Function RELOCORRFOR()

	//ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
	//³ Define variaveis padroes para todos os relatorios...                     ³
	//ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
	PRIVATE nQtdLin     := 58       // Qtd de Linhas Por Pagina
	PRIVATE nLimite     := 220       // Limite de Colunas
	PRIVATE cTamanho    := "G"       // P=Pequeno;M=Medio;G=Grande -> P=80;M=132;G=220 (colunas)
	PRIVATE cTitulo     := "Relatorio Padrao 2" // Titulo do Relatorio
	PRIVATE cDesc1      := "Relatorio de Ocorrencia do Fornecedor" // Descritivo para o usuario
	PRIVATE cDesc2      := "" // Descritivo para o usuario
	PRIVATE cDesc3      := ""
	PRIVATE cAlias      := "ZZ2" // Alias
	PRIVATE cRel        := "RelatorioPadraoZZ2" // Nome do Relatorio
	PRIVATE nli         := 01   // Variavel padrao para controlar numero de linha
	PRIVATE nQtdini     := nli  // Variavel para controlar numero de linha inicial
	PRIVATE m_pag       := 1    // Variavel padrao para contar numero da pagina
	PRIVATE lCompres    := .F. // nao mude e padrao
	PRIVATE lDicion     := .F. // nao mude e padrao
	PRIVATE lFiltro     := .F. // Habilitar o filtro ou nao
	PRIVATE lCrystal    := .F. // nao mudar controle do crystal reports
	PRIVATE aReturn     := { "", 1,"", 1, 1, 1, "",1 } // padrao nao mude
	PRIVATE lAbortPrint := .F. // Controle para abortar (sempre como esta aqui)
	PRIVATE cCabec1     := "" // Primeira linha do cabecalho ;
	PRIVATE cCabec2     := "" // utilizado pela funcao cabec...
	PRIVATE nColuna     := 03 // Numero da coluna que sera impresso as colunas   
	PRIVATE nCont  		:= 0
	
	cRel	:= SetPrint(cAlias,cRel,"",@cTitulo,cDesc1,cDesc2,cDesc3, .F., {}, .F., cTamanho, , .F.)   
	
	SetDefault(aReturn,cAlias)

	DbSelectArea("ZZ2")
	DbSetOrder(1)
	ZZ2->(dbGoTop())
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)
	@ ++nLi, nColuna pSay cTitulo
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)
	@ ++nLi, nColuna pSay cDesc1
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)

	@ ++nLi, 6 pSay "CODIGO"
	@ nLi, 16 pSay "FORNECEDOR"
	@ nLi, 28 pSay "LOJA"
	@ nLi, 43 pSay "NOME FORNECEDOR"
	@ nLi, 85 pSay "DATA"
	@ nLi, 95 pSay "HORA"
	@ nLi, 102 pSay "PRODUTO"
	@ nLi, 120 pSay "QTD OK"
	@ nLi, 130 pSay "QTD N OK"
	@ nLi, 140 pSay "VALOR UN."  
	@ nLi, 155 pSay "R$ OK"  
	@ nLi, 165 pSay "R$ N OK"  
	
	while !ZZ2->(Eof()) .And. !lAbortPrint
	    @ ++nLi, 6 pSay ZZ2->ZZ2_CONFOR
		@ nLi, 16 pSay ZZ2->ZZ2_FORNEC
		@ nLi, 28 pSay ZZ2->ZZ2_LOJAFO
		@ nLi, 43 pSay ZZ2->ZZ2_NOMEFO
		@ nLi, 85 pSay DtoC(ZZ2->ZZ2_DATA)
		@ nLi, 95 pSay ZZ2->ZZ2_HORA
		@ nLi, 102 pSay ZZ2->ZZ2_CODPRO
		@ nLi, 120 pSay alltrim(str(ZZ2->ZZ2_QTDOK))
		@ nLi, 130 pSay alltrim(str(ZZ2->ZZ2_QTDNOK)) 
		@ nLi, 140 pSay alltrim(str(ZZ2->ZZ2_VLRUNI))  
		@ nLi, 155 pSay alltrim(str(ZZ2->ZZ2_TOTOK)) 
		@ nLi, 165 pSay alltrim(str(ZZ2->ZZ2_TOTNOK))                       			
	    ZZ2->(dbSkip())
	    nCont++                                       
	enddo
	
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)
	@ ++nLi, nColuna pSay AllTrim(str(nCont))+" Registro(s) Listado(s)"
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)
	
	Set Printer To
	Ourspool(cRel)

RETURN


// Relatorio da tabela ZZ1 com join com a tabela ZZ2
User Function FORCONTROLREL()

	//ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
	//³ Define variaveis padroes para todos os relatorios...                     ³
	//ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
	PRIVATE nQtdLin     := 58       // Qtd de Linhas Por Pagina
	PRIVATE nLimite     := 220       // Lim				ite de Colunas
	PRIVATE cTamanho    := "G"       // P=Pequeno;M=Medio;G=Grande -> P=80;M=132;G=220 (colunas)
	PRIVATE cTitulo     := "Relatorio Padrao" // Titulo do Relatorio
	PRIVATE cDesc1      := "Relatorio de Controle de Fornecedores" // Descritivo para o usuario
	PRIVATE cDesc2      := "" // Descritivo para o usuario
	PRIVATE cDesc3      := ""
	PRIVATE cAlias      := "ZZ1" // Alias
	PRIVATE cRel        := "RelatorioZZ1comZZ2" // Nome do Relatorio
	PRIVATE nli         := 01   // Variavel padrao para controlar numero de linha
	PRIVATE nQtdini     := nli  // Variavel para controlar numero de linha inicial
	PRIVATE m_pag       := 1    // Variavel padrao para contar numero da pagina
	PRIVATE lCompres    := .F. // nao mude e padrao
	PRIVATE lDicion     := .F. // nao mude e padrao
	PRIVATE lFiltro     := .F. // Habilitar o filtro ou nao
	PRIVATE lCrystal    := .F. // nao mudar controle do crystal reports
	PRIVATE aReturn     := { "", 1,"", 1, 1, 1, "",1 } // padrao nao mude
	PRIVATE lAbortPrint := .F. // Controle para abortar (sempre como esta aqui)
	PRIVATE cCabec1     := "" // Primeira linha do cabecalho ;
	PRIVATE cCabec2     := "" // utilizado pela funcao cabec...
	PRIVATE nColuna     := 03 // Numero da coluna que sera impresso as colunas   
	PRIVATE nCont  		:= 0
	
	cRel	:= SetPrint(cAlias,cRel,"",@cTitulo,cDesc1,cDesc2,cDesc3, .F., {}, .F., cTamanho, , .F.)   
	
	SetDefault(aReturn,cAlias)

	DbSelectArea("ZZ1")
	DbSetOrder(1)


	ZZ1->(dbGoTop())
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)
	@ ++nLi, nColuna pSay cTitulo
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)
	@ ++nLi, nColuna pSay cDesc1
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)

	while !ZZ1->(Eof()) .And. !lAbortPrint

		nLi++

		@ ++nLi, 6 pSay "CODIGO"
		@ nLi, 16 pSay "FORNECEDOR"
		@ nLi, 28 pSay "LOJA"
		@ nLi, 43 pSay "NOME FORNECEDOR"
		@ nLi, 85 pSay "DADOS DO CERTIFICADO"
		@ nLi, 135 pSay "VALIDADE"
		@ nLi, 150 pSay "TOLERANCIA (%)"  
		@ nLi, 166 pSay "QTD. OK"  
		@ nLi, 180 pSay "QTD. N. OK"

	    @ ++nLi, 6 pSay ZZ1->ZZ1_CODIGO
		@ nLi, 16 pSay ZZ1->ZZ1_FORNEC
		@ nLi, 28 pSay ZZ1->ZZ1_LOJAFO
		@ nLi, 43 pSay ZZ1->ZZ1_NOMEFO
		@ nLi, 85 pSay Alltrim(SubStr(ZZ1->ZZ1_CERTIF,1,45))
		@ nLi, 135 pSay DtoC(ZZ1->ZZ1_VALCER)
		@ nLi, 150 pSay alltrim(str(ZZ1->ZZ1_TOLERA))
		@ nLi, 166 pSay alltrim(str(ZZ1->ZZ1_TOTOK))
		@ nLi, 180 pSay alltrim(str(ZZ1->ZZ1_TOTNOK))

		nLi++

		@ ++nLi, 43  pSay "PRODUTO"
		@ nLi, 	85 pSay "DATA"
		@ nLi, 	100 pSay "HORA"
		@ nLi, 	115 pSay "VALOR UN."  
		@ nLi, 	135 pSay "R$ OK"  
		@ nLi, 	150 pSay "R$ N OK" 
		@ nLi, 	166 pSay "QTD OK"
		@ nLi, 	180 pSay "QTD N OK"

		DbSelectArea("ZZ2")
		DbSetOrder(2)
		
		ZZ2->(dbGoTop())
		
		while !ZZ2->(Eof()) .And. !lAbortPrint
			IF((ZZ2->ZZ2_CONFOR)==(ZZ1->ZZ1_CODIGO))
				@ ++nLi, 43 pSay ZZ2->ZZ2_CODPRO
				@ nLi, 85 pSay DtoC(ZZ2->ZZ2_DATA)
				@ nLi, 100 pSay ZZ2->ZZ2_HORA
				@ nLi, 115 pSay alltrim(str(ZZ2->ZZ2_VLRUNI))  
				@ nLi, 135 pSay alltrim(str(ZZ2->ZZ2_TOTOK)) 
				@ nLi, 150 pSay alltrim(str(ZZ2->ZZ2_TOTNOK))   
				@ nLi, 166 pSay alltrim(str(ZZ2->ZZ2_QTDOK))
				@ nLi, 180 pSay alltrim(str(ZZ2->ZZ2_QTDNOK)) 
			ENDIF                    			
			ZZ2->(dbSkip())
		enddo
		@ ++nLi, nColuna pSay REPLICATE("_", nLimite)
	    ZZ1->(dbSkip())
	    nCont++
	enddo

	
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)
	@ ++nLi, nColuna pSay AllTrim(str(nCont))+" Registro(s) Listado(s)"
	@ ++nLi, nColuna pSay REPLICATE("*", nLimite)
	
	Set Printer To
	Ourspool(cRel)

RETURN

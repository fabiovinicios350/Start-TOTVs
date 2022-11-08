#include 'Protheus.ch'

User Function STTCC003()

    //Definindo o filtro
	local cFiltro   := ""

    //Definindo a regra de cores
	local aCores    :=  {{ 'ZZ1_VALCER - DATE() >= 30' , 'ENABLE' },;    //Verde
		                 	{ 'ZZ1_VALCER - DATE() < 30' , 'DISABLE'}}	    //vermelho

    //Definido menu                	                    
	PRIVATE cCadastro   := "Controle de Fornecedor"
	PRIVATE aRotina     := {{"Pesquisar", 		    "AxPesqui"			    	, 0, 1},;
													{"Visualizar",		    "AxVisual"			    	, 0, 2},;
													{"Incluir",			    	"AxInclui"			    	, 0, 3},;
													{"Alterar",			    	"AxAltera"			    	, 0, 4},;
													{"Relatorio01",    		"U_RELFORCONTROL"			, 0, 5},;
													{"Relatorio02",    		"U_RELPRODFOR(1,2)"		, 0, 6},;
													{"Relatorio03",    		"U_RELPRODFOR(2,2)"		, 0, 7},;
													{"Relatorio04",    		"U_RELVALCERT"				, 0, 8},;
													{"Ajustar Qtd",  			"U_AJUSTEENTREGUE"		, 0, 9},;
													{"Gerar arquivo",  		"U_GERARCABECALHOFOR"	, 0, 10},;
													{"Excluir",			    	"AxDeleta" 			    	, 0, 11}}
						
    //Selecionado a tabela                    
	dbSelectArea('ZZ1')

    //Selecionando o indice
	dbSetOrder(1)

	mBrowse(,,,,'ZZ1',,,,,,aCores,,,,,,,,)

Return nil     

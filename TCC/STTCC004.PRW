#include 'Protheus.ch'

User Function STTCC004()

	//Definindo o filtro
	local cFiltro   := ""

    //Definindo a regra de cores
	local aCores    :=  {{ 'ZZ2_QTDNOK <= (ZZ2_QTDOK*0.10)' , 'ENABLE' },;    //Verde
		                 { 'ZZ2_QTDNOK > (ZZ2_QTDOK*0.10)' , 'DISABLE'}}	//vermelho

    //Definido menu                	                    
	PRIVATE cCadastro   := "OCorrencia de fornecedor"
	PRIVATE aRotina     := {{"Pesquisar", 		"AxPesqui"				, 0, 1},;
						    {"Visualizar",		"AxVisual"				, 0, 2},;
						    {"Incluir",			"AxInclui"				, 0, 3},;
						    {"Alterar",			"AxAltera"				, 0, 4},;
						    {"Relatorio01",  	"U_RELOCORRFOR"			, 0, 5},;
						    {"Relatorio03",  	"U_RELNAOCONFORME"		, 0, 6},;
						    {"Gerar arquivo2",  "U_GERAROCORRCABECALHO"	, 0, 7},;
						    {"Excluir",			"AxDeleta" 				, 0, 8}}
						
    //Selecionado a tabela                    
	dbSelectArea('ZZ2')

    //Selecionando o indice
	dbSetOrder(1)

	mBrowse(,,,,'ZZ2',,,,,,aCores,,,,,,,,)

Return nil     

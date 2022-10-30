//Bibliotecas
SET PROCEDURE TO layout.prg

Static Function ApresentarVetor(aVetor,cTipo)
    LOCAL nPonteiro 
    LOCAL nlimite
    LOCAL nAdiciona
    LOCAL aNovo := {}
    LOCAL i

    if ctipo==nil
        nPonteiro := 1
        nlimite := len(aVetor)
        nAdiciona := 1
    elseif cTipo==.T.
        nPonteiro := len(aVetor)
        nlimite := 1
        nAdiciona := -1
    endif

    for i:=nPonteiro to nlimite step nAdiciona
        AAdd(aNovo,aVetor[i])
    next

    QOUT(hb_ValToExp(aNovo))

Return nil

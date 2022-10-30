
Function ValidarCaracter(texto,tipo)
    
    LOCAL nResultado
    LOCAL ctexto
    LOCAL i
    LOCAL lLoop := .T.

    for i:=0 to len(texto)
        nResultado := texto
        ctexto:= SubStr(texto,i+1,1)

        if len(texto)<1
            ACCEPT "Valor invalido, por favor digite novamente:" TO texto
            i:=-1
        elseif i==len(texto)
            loop
        else
            if((IsDigit(ctexto)=.T. .And. tipo="numerico") .or. (AscPos(ctexto,1)==45 .And. tipo="numerico" .and. i=1) .or. (ctexto=="." .and. tipo="numerico" .and. i==(len(texto)-3)))
                loop
            elseif((IsAlpha(ctexto)=.T. .And. tipo="caracter") .or. (ctexto==" " .and. tipo="caracter"))
                loop
            else
                ACCEPT "Valor invalido, por favor digite novamente:" TO texto
                i:=-1
            endif
        endif
    next i

Return nResultado

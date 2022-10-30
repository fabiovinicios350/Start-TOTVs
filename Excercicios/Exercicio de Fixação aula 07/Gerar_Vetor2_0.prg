Function GerarElemento(cTipo)

    LOCAL nElemento
    LOCAL lLoop := .T.

    while lLoop

        nElemento := Random()%100+1

        if cTipo=="caracter"
            if(nElemento>=65 .and. nElemento<=90) .or. (nElemento>=97 .and. nElemento<=122)
                lLoop := .F.
            endif
        else
            lLoop := .F.
        endif

    enddo

    if cTipo=="caracter"
        nElemento := Chr(nElemento)
    endif

Return nElemento

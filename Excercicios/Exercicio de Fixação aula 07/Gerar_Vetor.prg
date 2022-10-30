Function GerarElemento()

    LOCAL nElemento
    LOCAL lLoop := .T.

    while lLoop

        nElemento := Random()%100+1

        if(nElemento>=65 .and. nElemento<=90)
            lLoop := .F.
        endif
    enddo

    nElemento := Chr(nElemento)

Return nElemento

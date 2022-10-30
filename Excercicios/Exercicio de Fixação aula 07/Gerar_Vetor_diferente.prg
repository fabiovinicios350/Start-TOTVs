Function GerarElemento(aVetor)

    LOCAL nElemento
    LOCAL nIgual
    LOCAL lLoop := .T.
    LOCAL i

    while lLoop
        nElemento := Random()%500
        nIgual := 0

        if(nElemento>=97 .and. nElemento<=122)

            if len(aVetor)==0
                lLoop := .F.
            else
                for i:=1 to len(aVetor)
                    if nElemento=ASC(aVetor[i])
                        nIgual := 1
                    endif
                next i

                if nIgual <> 1
                    lLoop := .F.
                endif
            endif
        endif

        nElemento := Chr(nElemento)
    enddo

Return nElemento

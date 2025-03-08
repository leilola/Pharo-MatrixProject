tests
testToTraditionalMatrix
    | sparse matrix restored |
    sparse := SparseMatrix new.
    matrix := {{1. 0. 0}. {0. 2. 0}. {0. 0. 3}}.

    sparse fromTraditionalMatrix: matrix.
    restored := sparse toTraditionalMatrix.

    self assert: restored equals: matrix.


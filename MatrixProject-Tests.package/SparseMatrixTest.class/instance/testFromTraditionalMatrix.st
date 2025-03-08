tests
testFromTraditionalMatrix
    | sparse matrix |
    sparse := SparseMatrix new.
    matrix := {{1. 0. 0}. {0. 2. 0}. {0. 0. 3}}.

    sparse fromTraditionalMatrix: matrix.

    self assert: sparse values asArray equals: #(1 2 3).
    self assert: sparse indices asArray equals: {(1@1). (2@2). (3@3)}.
    self assert: sparse rows equals: 3.
    self assert: sparse cols equals: 3.



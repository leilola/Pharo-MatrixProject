instance creation
fromTraditionalMatrix: matrix
    values := OrderedCollection new.
    indices := OrderedCollection new.
    rows := matrix size.
    cols := matrix first size.

    "Iterating through the matrix to store non-zero values"
    1 to: rows do: [ :i |
        1 to: cols do: [ :j |
            | value |
            value := (matrix at: i) at: j.
            (value ~= 0) ifTrue: [
                values add: value.
                indices add: (i @ j). "Indexing starts at 1 (base 1)"
            ].
        ].
    ].

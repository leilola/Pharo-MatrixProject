instance creation
fromTraditionalMatrix: matrix
    values := OrderedCollection new.
    indices := OrderedCollection new.
    rows := matrix size.
    cols := matrix first size.

    "Parcours de la matrice pour stocker les valeurs non nulles"
    1 to: rows do: [ :i |
        1 to: cols do: [ :j |
            | value |
            value := (matrix at: i) at: j.
            (value ~= 0) ifTrue: [
                values add: value.
                indices add: (i @ j). "Stocke en base 1"
            ].
        ].
    ].

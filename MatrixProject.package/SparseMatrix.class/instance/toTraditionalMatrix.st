Conversions
toTraditionalMatrix
    | matrix |
    "Créer une matrice vide de taille rows x cols"
    matrix := Array new: rows.
    1 to: rows do: [ :i | matrix at: i put: (Array new: cols withAll: 0) ].

    values withIndexDo: [:value :index |
        | i j |
        i := (indices at: index) x. "Pas de +1 si on stocke en base 1"
        j := (indices at: index) y.

        "Vérifier que i et j sont bien dans les limites de la matrice"
        ((i >= 1 and: [i <= rows]) and: [(j >= 1 and: [j <= cols])]) ifTrue: [
            (matrix at: i) at: j put: value.
        ] ifFalse: [
            Transcript nextPutAll: 'Erreur d''indexation: ', i asString, ', ', j asString ; cr.
        ].
    ].

    ^ matrix.

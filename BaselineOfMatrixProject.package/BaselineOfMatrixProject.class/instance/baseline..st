baselines
baseline: spec
    <baseline>
    spec
        for: #common do: [
            spec package: 'MagicLiteralsSelector'.
            spec package: 'MagicLiteralsSelector-Tests' with: [ spec requires: #('MagicLiteralsSelector') ].
        ].

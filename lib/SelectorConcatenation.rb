module SCSSLint
    class Linter::SelectorConcatenation < Linter
        include LinterRegistry
        REGEX=/^&([A-Za-z0-9_-]+)/

        def visit_sequence(sequence)
            seq = sequence.to_s

            seq.scan(REGEX).each do |matches|
                add_lint(sequence, "#{seq} - avoid concatenating selectors.")
            end
        end

    end
end

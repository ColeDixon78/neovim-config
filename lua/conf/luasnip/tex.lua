local function math()
    return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
end
return {
    s({ trig = "init", snippetType = "snippet", desc = "Create initial boilerplate", wordTrig = true },
        fmta(
            [[
            \documentclass{article}
            \title{<>}
            \author{Cole Dixon}
            \usepackage{amssymb}
            \usepackage{amsthm}
            \usepackage{tikz}
            \usepackage{amsmath}
            \begin{document}
            \end{document}
            ]],
            { i(1, "title"), }
        )
    ),
    s({ trig = "bx", snippetType = "autosnippet", desc = "box", wordTrig = true },
        fmta(
            [[ \fbox{<>} ]],
            { i(1, "text"), }
        )
    ),
    s({ trig = "mm", snippetType = "snippet", desc = "math mode", wordTrig = true },
        fmta(
            [[ $<>$ ]],
            { i(1, "text"), }
        )
    ),
    s({ trig = "sss", snippetType = "snippet", desc = "subsubsection", wordTrig = true },
        fmta(
            [[ \subsubsection{<>} ]],
            { i(1, "text"), }
        )
    ),
    s({ trig = "ss", snippetType = "snippet", desc = "subsection", wordTrig = true },
        fmta(
            [[ \subsection{<>} ]],
            { i(1, "text"), }
        )
    ),
    s({ trig = "em", snippetType = "snippet", desc = "emphasis", wordTrig = true },
        fmta(
            [[ \emph{<>} ]],
            { i(1, "text"), }
        )
    ),
    s({ trig = "frac", snippetType = "autosnippet", desc = "fractions", wordTrig = true },
        fmta(
            [[ \frac{<>}{<>} ]],
            { i(1, "1"), i(2, "2"), }
        ),
        { condition = math }
    ),
    s({ trig = "sum", snippetType = "autosnippet", desc = "summation", wordTrig = true },
        fmta(
            [[ \sum_{<>}^{<>} ]],
            { i(1, "n=1"), i(2, "\\infty"), }
        ),
        { condition = math }
    ),
    s({ trig = "prod", snippetType = "autosnippet", desc = "big product", wordTrig = true },
        fmta(
            [[ \prod_{<>}^{<>} ]],
            { i(1, "n=1"), i(2, "\\infty"), }
        ),
        { condition = math }
    ),
    s({ trig = "lq", snippetType = "autosnippet", desc = "less than equal", wordTrig = true },
        { t("\\leq"), },
        { condition = math }
    ),
    s({ trig = "gq", snippetType = "autosnippet", desc = "greater than equal", wordTrig = true },
        { t("\\geq"), },
        { condition = math }
    ),
    s({ trig = "ddd", snippetType = "autosnippet", desc = "dot dot dot ...", wordTrig = false },
        { t("\\ldots{}"), }
    ),
    s({ trig = "oo", snippetType = "autosnippet", desc = "infinity", wordTrig = false },
        { t("\\infty"), },
        { condition = math }
    ),
    s({ trig = "rt", snippetType = "autosnippet", desc = "square root", wordTrig = false },
        fmta(
            [[ \sqrt{<>} ]],
            { i(1, "x"), }
        ),
        { condition = math }
    ),
    s({ trig = ";a", snippetType = "autosnippet", desc = "alpha", wordTrig = false },
        { t("\\alpha"), },
        { condition = math }
    ),
    s({ trig = ";e", snippetType = "autosnippet", desc = "epsilon", wordTrig = false },
        { t("\\epsilon"), },
        { condition = math }
    ),
    s({ trig = "\\R", snippetType = "autosnippet", desc = "reals", wordTrig = false },
        { t("\\mathbb{R}"), },
        { condition = math }
    ),
    s({ trig = "\\N", snippetType = "autosnippet", desc = "natural", wordTrig = false },
        { t("\\mathbb{N}"), },
        { condition = math }
    ),
    s({ trig = "\\Z", snippetType = "autosnippet", desc = "integers", wordTrig = false },
        { t("\\mathbb{Z}"), },
        { condition = math }
    ),
    s({ trig = "\\Q", snippetType = "autosnippet", desc = "rationals", wordTrig = false },
        { t("\\mathbb{Q}"), },
        { condition = math }
    ),
    s({ trig = "\\I", snippetType = "autosnippet", desc = "irrationals", wordTrig = false },
        { t("\\mathbb{I}"), },
        { condition = math }
    ),
    s({ trig = "\"", snippetType = "autosnippet", desc = "quotation marks" },
        fmta(
            [[\text{<>} ]],
            { i(1, "text"), }
        ),
        { condition = math }
    ),
    s({ trig = "fig", snippetType = "snippet", dscr = "A basic figure environment" },
        fmta(
            [[
        \begin{figure}
        \centering
        \includegraphics[width=0.9\linewidth]{<>}
        \caption{
            \textbf{<>}
            <>
            }
        \label{fig:<>}
        \end{figure}

        ]],
            { i(1, "filename"),
                i(2, "captionBold"),
                i(3, "captionText"),
                i(4, "figureLabel"), }
        )
    ),
    s({ trig = "env", snippetType = "snippet", dscr = "Begin and end an arbitrary environment" },
        fmta(
            [[
            \begin{<>}
                <>
            \end{<>}
            ]],
            { i(1), i(2), rep(1), }
        )
    ),
}

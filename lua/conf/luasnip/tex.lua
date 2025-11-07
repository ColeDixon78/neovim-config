local function math()
    return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
end
return {
    s({ trig = "oo", snippetType = "autosnippet", desc = "infinity", wordTrig = false },
        { t("\\infty"), },
        { condition = math }
    ),
    s({ trig = "rt", snippetType = "autosnippet", desc = "infinity", wordTrig = false },
        fmta(
            [[ \sqrt{<>} ]],
            { i(1, "x"), }
        ),
        { condition = math }
    ),
    s({ trig = ";a", snippetType = "autosnippet", desc = "alpha", wordTrig = false },
        { t("\\alpha"), }
    ),
    s({ trig = "\"", snippetType = "autosnippet", desc = "quotation marks" },
        fmta(
            [[``<>'' ]],
            { i(1, "text"), }
        )
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

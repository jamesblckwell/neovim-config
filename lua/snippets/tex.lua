---@diagnostic disable: undefined-global

return {
    s(
        "beg",
        fmt(
            [[
    \begin{<a>}
        <>
    \end{<a>}
    ]],
            { a = i(1, ""), i(2, "") },
            { delimiters = "<>", repeat_duplicates = true }
        )
    ),
}

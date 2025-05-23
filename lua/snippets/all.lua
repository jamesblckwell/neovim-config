---@diagnostic disable: undefined-global
return {
    -- Create a todo comment in following style: {comment style} TODO {date} - {cursor}
    s(
        "todo",
        fmt("{} TODO {} - {}", {
            f(function(_, parent, _)
                local env = parent.snippet.env
                return env.LINE_COMMENT == "//" and env.BLOCK_COMMENT_START or env.LINE_COMMENT
            end),
            f(function()
                return os.date("%D")
            end),
            i(0),
        })
    ),

    s("today", {
        f(function()
            return os.date("%D")
        end),
    }),
}

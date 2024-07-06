return {
    s("todo", fmt("{} TODO {} - {}",
        {
            f(function(_, parent, _)
                local env = parent.snippet.env
                return env.LINE_COMMENT == "//" and env.BLOCK_COMMENT_START or env.LINE_COMMENT
            end),
            f(function()
                return os.date "%D"
            end),
            i(0)
        })
    ),
}

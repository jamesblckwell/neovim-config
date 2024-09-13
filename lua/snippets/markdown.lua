---@diagnostic disable: undefined-global

ls = require("luasnip")

local registerCallout = function(ctx, opts)
    opts = opts or {}
    ctx = ctx or {}
    if not ctx.trig then
        error("ctx.trig must be set")
    end
    local callout_name = ctx.trig
    ctx.name = callout_name .. ' callout'
    ctx.dscr = ctx.dscr or ("Markdown Callout: " .. callout_name)
    ctx.docstring = ctx.docstring
        or string.format([[
> [!%s]{+,-, } {1}
> {0}
            ]], callout_name)
    local callout_node = fmt(string.format([[
> [!%s]{} {}
> {}
    ]], callout_name),
        {
            c(1, { t("+"), t("-"), t(" ") }),
            i(2),
            i(0)
        }
    )
    return s(ctx, callout_node, opts)
end

local callout_snippet_specs = {
    { { trig = 'info' } },
    { { trig = 'mdtodo' } },
    { { trig = 'success' } },
    { { trig = 'question' } },
    { { trig = 'warning' } },
    { { trig = 'failure' } },
    { { trig = 'danger' } },
    { { trig = 'bug' } },
    { { trig = 'example' } },
    { { trig = 'quote' } },
    { { trig = 'definition' } },
}

local callout_snippets = {}
for _, v in ipairs(callout_snippet_specs) do
    table.insert(callout_snippets, registerCallout(v[1], v[2]))
end

ls.add_snippets('markdown', callout_snippets, { type = "snippets", key = "callouts" })

return {}

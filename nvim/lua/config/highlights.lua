local function highlight(name, value)
    vim.api.nvim_set_hl(0, name, value)
end

-- CUSTOM HIGHLIGHTS
highlight("Visual", { reverse = true })
highlight("Search", { bg = "#2a324a" })
highlight("CurSearch", { reverse = true })
highlight("IncSearch", { reverse = true })
highlight("CursorLine", { bg = "#2a324a" })
highlight("CursorColumn", { bg = "#2a324a" })

-- TELESCOPE HIGHLIGHTS
highlight("TelescopeTitle", { reverse = true })
highlight("TelescopeSelection", { bg = '#34bfd0', fg = '#283347' })
highlight("TelescopePromptCounter", { fg = '#34bfd0' })

-- LAZY HIGHLIGHTS
highlight("LazyNormal", { blend = 0, link = 'none' })
highlight("LazyProp", { blend = 0, link = 'none' })
highlight("LazyDimmed", { blend = 0, link = 'none' })

-- MASON HIGHLIGHTS
highlight("MasonNormal", { blend = 0, link = 'none' })

-- TREESITTER-CONTEXT HIGHLIGHTS
highlight("TreesitterContext", { blend = 0, link = 'none' })
highlight("TreesitterContextBottom", { underdotted = true })
highlight("TreesitterContextLineNumberBottom", { fg = '#93a4c3', underdotted = true })

-- GIT HIGHLIGHTS
highlight("GitSignsUntracked", { fg = "#34bfd0" })
highlight("GitSignsUntrackedLn", { fg = "#34bfd0" })
highlight("GitSignsUntrackedNr", { fg = "#34bfd0" })
highlight("DiffAdd", { fg = "#03C988", bg = "#d6ffd6" })
highlight("DiffDelete", { fg = "#FC2947", bg = "#ffeeee" })

-- CUSTOM FIDGET HIGHLIGHTS
highlight("FidgetTitle", { fg = "#41a7fc", bg = "NONE" })
highlight("FidgetTask", { fg = "#93a4c3", bg = "NONE" })
highlight("FloatBorder", { fg = "#455574", bg = "NONE" })

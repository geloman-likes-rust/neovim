---@diagnostic disable: missing-fields
return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    event = "InsertEnter",
    opts = {},
    config = function()
        vim.defer_fn(function()
            require('nvim-treesitter.configs').setup {
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ['aa'] = '@parameter.outer',
                            ['ia'] = '@parameter.inner',
                            ['af'] = '@function.outer',
                            ['if'] = '@function.inner',
                            ['ac'] = '@class.outer',
                            ['ic'] = '@class.inner',
                        }
                    },
                }

            }
        end, 0)
    end
}

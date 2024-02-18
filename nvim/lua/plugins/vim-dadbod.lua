return {
    "tpope/vim-dadbod",
    cmd = { "DB", "DBUI", "DBUIToggle" },
    keys = { { "<leader>db", function() vim.cmd("DBUIToggle") end, desc = "DBUIToggle" } },
    dependencies = { "kristijanhusak/vim-dadbod-ui", "kristijanhusak/vim-dadbod-completion" },
}

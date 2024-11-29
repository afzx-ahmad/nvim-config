vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.opt.number = true
vim.opt.relativenumber = true

vim.g.mapleader = " "

vim.keymap.set("n", "<ESC>", function()
        if(vim.v.hlsearch == 1) then
            vim.cmd("nohlsearch")
        else
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<ESC>", true, false, true), "n", false)
        end
    end, { desc = "Clear search highlight" }
)

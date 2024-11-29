return {
    {
         "williamboman/mason.nvim",
         config = function()
             require("mason").setup()
         end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "cssls", "tailwindcss", "eslint" },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({})
            lspconfig.cssls.setup({})
            lspconfig.tailwindcss.setup({})
            lspconfig.eslint.setup({})

            vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end
    }
}

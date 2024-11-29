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

            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.cssls.setup({
                capabilities = capabilities
            })
            lspconfig.tailwindcss.setup({
                capabilities = capabilities
            })

            vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end
    }
}

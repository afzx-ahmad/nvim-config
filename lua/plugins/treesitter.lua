return {
    "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
            -- require('nvim-treesitter.install').compilers = { "gcc", "clang" }

            require("nvim-treesitter.configs").setup({
                ensure_installed = { "lua", "javascript", "typescript", "python", "html", "css" },
                auto_install = true, -- Automatically use precompiled parsers
                highlight = { enable = true },
                compilers = { "gcc" }
            })
      end
}

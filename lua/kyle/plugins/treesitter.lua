return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    local auto_tag = require("nvim-ts-autotag")

    require("nvim-treesitter.install").compilers = { "gcc" }

    treesitter.setup({
      highlight = { enable = true },
      indent = { enable = true },

      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "lua",
        "bash",
        "vim",
        "gitignore",
        "c_sharp",
        "python",
        "scss",
        "sql",
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-e>",
          node_incremental = "<C-e>",
          scope_incremental = false,
          node_decremental = "<bs>",
        }
      }
    })

    auto_tag.setup({
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false
      },
    })
  end,
}

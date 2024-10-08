return {
  "epwalsh/obsidian.nvim",
  ft = "markdown",
  lazy = true,
  dependencies = { "nvim-lua/plenary.nvim" },
  
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal",
      },
    },
    ui = {
      enable = false
    }
  },

  keys = {
    { "<leader>oo", ":ObsidianOpen ", desc = "Open file in Obsidian App"},
    { "<leader>on", ":ObsidianNew ", desc = "Create new file in Obsidian vault"},
  },
}

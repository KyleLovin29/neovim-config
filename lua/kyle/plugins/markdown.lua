return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
  opts = {},
  keys = {
    { "<leader>rm", "<cmd>RenderMarkdown toggle<cr>", desc = "Render Markdown"}
  }
}

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      'nvim-tree/nvim-web-devicons',
      'folke/todo-comments.nvim',
    },

    config = function()
      local builtin = require('telescope.builtin')
      local keymap = vim.keymap
            
      require('telescope').setup({
        defaults = {
          path_display = { 'smart' },
          layout_strategy = 'horizontal',
        },
      })
      

      keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
      keymap.set('n', '<leader>fc', builtin.oldfiles, { desc = 'Telescope recent files' })
      keymap.set('n', '<leader>ft', "<cmd>TodoTelescope<cr>", { desc = 'Find TODO Comments'})
      keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'Telescope git commits' })
      keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Telescope git status' })
    end
}

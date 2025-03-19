-- plugins/neo-tree.lua

return {
  -- Source Install
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },

  -- Config Setup
  config = function()
    require("neo-tree").setup({
      -- Custom Window Mappings
      window = {
        mappings = {
          ["B"] = function(state)
            local node = state.tree:get_node()
            if node and node.type == "file" then
              vim.cmd('badd ' .. node.path)
            end
          end,
        },
      },

      -- Auto-display Files / Buffers / Git tabs
      source_selector = {
        winbar = true,
        statusline = true,
      },
    })

    -- Navigation
    vim.keymap.set('n', '<C-f>', ':Neotree filesystem reveal left<CR>', {})
    vim.keymap.set('n', '<C-b>', ':Neotree buffers    reveal left<CR>', {})
    vim.keymap.set('n', '<C-g>', ':Neotree git_status reveal left<CR>', {})

    -- Auto Open Sidebar
    vim.api.nvim_create_autocmd("VimEnter", { command = "set nornu nonu | Neotree toggle" })
    vim.api.nvim_create_autocmd("BufEnter", { command = "set rnu nu"})
  end
}

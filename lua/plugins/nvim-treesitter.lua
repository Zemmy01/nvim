-- plugins/nvim-treesitter.lua

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function ()
    local config = require('nvim-treesitter.configs')
    config.setup({
      ensure_installed = { "lua", "xml", "python", },
      highlight = { enabled = true },
      indent = { enabled = true },
    })
  end,
}


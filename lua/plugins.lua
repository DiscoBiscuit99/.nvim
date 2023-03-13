vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- packer can manage itself
  use('wbthomason/packer.nvim')

  --[[ color schemes ]]--

  use('morhetz/gruvbox')

  --[[
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  --]]

  --[[ utilities ]]--

  use({
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  })

  use({
    'nvim-treesitter/nvim-treesitter',
    { run = ':TSUpdate' }
  })
  use('nvim-treesitter/playground')
  use('HiPhish/nvim-ts-rainbow2')

  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {

      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

  use('nvim-tree/nvim-web-devicons')
  use({'romgrk/barbar.nvim', requires = 'nvim-web-devicons'})

  use('preservim/nerdtree')

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  })

  use('aca/emmet-ls')

  use('windwp/nvim-autopairs')

  use('https://github.com/s1n7ax/nvim-terminal')
end)

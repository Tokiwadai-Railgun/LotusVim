-- Setting up lines 
vim.o.number = true
-- Syncing clipboard
vim.o.clipboard = "unnamedplus"




return {
	-- Comfort
	-- autopairs
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup {}
		end
	},

	-- Git related apparence
	{
		'lewis6991/gitsigns.nvim',
		opts = {
			signs = {
				add = {text = '+' },
				change = { text = '~'},
				delete = { text = '_'},
				topdelete = { text = '-'},
				changedelete = { text = '~'},
			}
		}
	},
	-- Add indentation guides on blankline
	{
		'lukas-reineke/indent-blankline.nvim',
	},
	-- "gc" to comment
	{ "numToStr/Comment.nvim", opts = {}},

	-- Higilight, edit, and navigate 
	{
		'nvim-treesitter/nvim-treesitter',
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		build = ":TSUpdate",
		config = function()
			local configs = require('nvim-treesitter.configs')

			configs.setup({
				ensure_installed = { "c", "c_sharp", "lua", "vim", "vimdoc", "query", "query", "elixir", "heex", "javascript", "html"},
				sync_install = false,
				highlight = { enable = true},
				indent = { enable = true}
			})
		end
	},


	-- Autocompletion 
	{"hrsh7th/nvim-cmp",
		dependencies = {
			 -- Snippet Engine & its associated nvim-cmp source
		      'L3MON4D3/LuaSnip',
		      'saadparwaiz1/cmp_luasnip',

		      -- Adds LSP completion capabilities
		      'hrsh7th/cmp-nvim-lsp',
		      'hrsh7th/cmp-path',

		      -- Adds a number of user-friendly snippets
		      'rafamadriz/friendly-snippets',
		},
    opts = {
      window = {
        completion = {
          border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
          winhighlight = "Normal:CmpPmenu,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None",
        },
        documentation = {
          border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
          winhighlight = "Normal:CmpPmenu,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None",
        },
      },
    },
	},
  {"OmniSharp/omnisharp-vim"},

	-- Other
	{ "tpope/vim-sleuth" },
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
  },
  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },
  { "zbirenbaum/copilot.lua"},
  {
    "zbirenbaum/copilot-cmp",
    config = function ()
      require("copilot_cmp").setup()
    end
  }

}

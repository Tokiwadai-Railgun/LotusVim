return {
	-- Configuring Alpha to display a butiful welcome screen
	{ 
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons"},
		config = function()
			require"alpha".setup(require'alpha.themes.dashboard'.config)
		end
	},
	{ 
		"nvim-lualine/lualine.nvim",
		dependencies = { 'nvim-tree/nvim-web-devicons'},
		opts = {
			options = {
				icons_enabled = true,
				component_separators = "|",
				section_separators = '',
			}
		}
	},
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{
				'nvim-telescope/telescope-fzf-native.nvim',
				build = "make",
				cond = function()
					return vim.fn.executable 'make' == 1
				end
			},
		},
		config = {
		  defaults = {
		    mapping = {
		      i = {
			['<C-u>'] = false,
			['<C-d>'] = false,
		      }
		    }
		  }
		}
	},
	-- Nvim-Tree to move with a folder tree and devicons for better icons on tree
	{
		"nvim-tree/nvim-tree.lua",
		config = {
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true
			}	,
			filters = {
				dotfiles = true
			}
		}
	},
	{ 
		"nvim-tree/nvim-web-devicons"
	},
}

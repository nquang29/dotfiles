return {
  'aklt/plantuml-syntax',
  'bronson/vim-visual-star-search',
  {
    'chentoast/marks.nvim',
    config = function ()
      require("marks").setup()
    end
  },
  'ellisonleao/gruvbox.nvim',
  'godlygeek/tabular',
  'itspriddle/vim-marked',
  -- 'ludovicchabant/vim-gutentags',
  'leafOfTree/vim-svelte-plugin',
  'mfussenegger/nvim-jdtls',
  'neovim/nvim-lspconfig',
  'nvim-lua/plenary.nvim',
  'tpope/vim-commentary',
  'tpope/vim-fugitive',
  'tpope/vim-repeat',
  'tpope/vim-rhubarb',
  'tpope/vim-surround',
  'tpope/vim-unimpaired',
  'tyru/open-browser.vim',
  'andymass/vim-matchup',
  'vim-test/vim-test',
--   'navarasu/onedark.nvim',
  'fatih/vim-go',
  'kdheepak/lazygit.nvim',
  'junegunn/fzf',
  'junegunn/fzf.vim',
  'voldikss/vim-floaterm',
  'vim-airline/vim-airline-themes',
  'airblade/vim-gitgutter',
  'tveskag/nvim-blame-line',
  'iberianpig/tig-explorer.vim',
  'rbgrouleff/bclose.vim',
  'scrooloose/nerdTree',

  'weirongxu/plantuml-previewer.vim',
  {
    'folke/trouble.nvim',
    config = function()
      require("trouble").setup({
        mode = "document_diagnostics"
      })
    end
  },
  {
    'folke/which-key.nvim',
    config = function()
      require("which-key").setup()
    end
  },
  {
    'gelguy/wilder.nvim',
    config = function() require('config/wilder') end,
  },
  {
    'goolord/alpha-nvim',
    config = function ()
        require('alpha').setup(require'alpha.themes.startify'.config)
    end
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'onsails/lspkind.nvim',
    },
    config = function() require('config/nvim-cmp') end,
  },
  {
    'mfussenegger/nvim-dap',
    config = function() require('config/nvim-dap') end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      require('gruvbox').load()
    end
  },
  -- {
  --  'navarasu/onedark.nvim',
  --  config = function()
  --    require('onedark').load()
 --   end
  -- },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup {
        options = { theme = 'onedark' },
      }
    end
  },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-telescope/telescope-dap.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      'nvim-telescope/telescope-ui-select.nvim',
    },
    config = function() require('config/telescope') end,
  },
  {
    'nvim-tree/nvim-web-devicons',
  },
  {
'ryanoasis/vim-devicons',
  },
   --{
     --'nvim-treesitter/nvim-treesitter',
     --build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
     --config = function() require('config/nvim-treesitter') end,
   --},
   {
      'nvim-treesitter/nvim-treesitter',
  opts = function(_, opts)
    opts.ignore_install = { 'help' }

    if type(opts.ensure_installed) == 'table' then
      vim.list_extend(opts.ensure_installed, {
        'dockerfile',
        'git_config',
        'jsdoc',
        'make',
        'toml',
        'vimdoc',
      })
    end
  end,
   },
  {
    'preservim/vim-pencil',
    dependencies = {
      'preservim/vim-litecorrect',
      'kana/vim-textobj-user',
      'preservim/vim-textobj-quote',
      'preservim/vim-textobj-sentence',
    },
    config = function()
      local augroup = vim.api.nvim_create_augroup
      local autocmd = vim.api.nvim_create_autocmd
      augroup('pencil', { clear = true })
      autocmd('FileType', {
        group = 'pencil',
        pattern = { "markdown" ,"text" },
        callback = function()
          vim.cmd("call pencil#init({'wrap': 'hard'})")
          vim.cmd("call litecorrect#init()")
          vim.cmd("call textobj#quote#init()")
          vim.cmd("call textobj#sentence#init()")
        end
      })
    end
  },
  {
    'simrat39/symbols-outline.nvim',
    config = function()
      require("symbols-outline").setup {
        auto_close = true,
      }
    end
  },
  {
    'stevearc/oil.nvim',
    config = function()
      require("oil").setup({
        skip_confirm_for_simple_edits = true,
      })
    end
  },
  {
    'anuvyklack/pretty-fold.nvim',
    config = function ()
      require('pretty-fold').setup()
    end
  },
  {
    'anuvyklack/fold-preview.nvim',
    config = function ()
      require('fold-preview').setup({
         -- Your configuration goes here.
         --
          })
    end
  },
  {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }
  },
  {
    'folke/noice.nvim',
    config = function ()
      require('noice').setup({
        lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
      })
    end
  },
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
    config = function()
      require('venv-selector').setup {
        -- Your options go here
        -- name = "venv",
        -- auto_refresh = false
    }
    end,
    keys = {
      -- Keymap to open VenvSelector to pick a venv.
      { '<leader>vs', '<cmd>VenvSelect<cr>' },
      -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
      { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
    },
  }
}

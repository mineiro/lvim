-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "dracula"
-- vim.opt.timeoutlen = 500

require "user.keys"
require "user.bufferline"
require "user.plugins"
require "user.settings"
require "user.treesitter"

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1
-- vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]
-- Builtins
lvim.builtin.dap.active = true
lvim.builtin.bufferline.active = true
lvim.builtin.cmp.experimental.ghost_text = false
lvim.builtin.telescope.defaults.path_display = { "smart" }
lvim.builtin.project.patterns = { ".git" }
lvim.builtin.project.detection_methods = { "pattern" }
lvim.builtin.fancy_statusline = { active = true } -- enable/disable fancy statusline
-- lvim.builtin.lualine.options.theme = ""
-- if lvim.builtin.fancy_statusline.active then
--   require("user.lualine").config()
-- end

-- LSP
lvim.lsp.diagnostics.virtual_text = false
-- vim.g.nvim_tree_indent_markers = 1 --"0 by default, this option shows indent markers when folders are open
vim.list_extend(lvim.lsp.override, { "java", "jdtls" })

vim.cmd [[ au CmdWinEnter * quit ]]
-- TODO: q quits in spectr_panel ft
-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {{ "BufRead", "*", "set formatoptions-=cro"}}

-- *Must* be *S*olidity not solidity
require("nvim-treesitter.parsers").get_parser_configs().solidity = {
  install_info = {
    url = "https://github.com/JoranHonig/tree-sitter-solidity",
    files = { "src/parser.c" },
    requires_generate_from_grammar = true,
  },
  filetype = "solidity",
}


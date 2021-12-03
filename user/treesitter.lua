lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
  "go",
  "fish",
  "hcl",
  "ruby"
}

lvim.builtin.treesitter.autotag = {
  enable = true,
  disable = { "xml" },
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.playground.enable = true

lvim.builtin.treesitter.textobjects = {
  -- lsp_interop = {
  --      enable = true,
  --      border = 'single',
  --      peek_definition_code = {
  --        ["<leader>df"] = "@function.outer",
  --        ["<leader>dF"] = "@class.outer",
  --      },
  --    },
  move = {
    enable = true,
    set_jumps = true, -- whether to set jumps in the jumplist
    goto_next_start = {
      ["]m"] = "@function.outer",
      ["]]"] = "@class.outer",
    },
    goto_next_end = {
      ["]M"] = "@function.outer",
      ["]["] = "@class.outer",
    },
    goto_previous_start = {
      ["[m"] = "@function.outer",
      ["[["] = "@class.outer",
    },
    goto_previous_end = {
      ["[M"] = "@function.outer",
      ["[]"] = "@class.outer",
    },
  },
}

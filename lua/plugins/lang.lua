return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lsp.ConfigurationItem
      servers = {
        asm_lsp = {},
        arduino_language_server = {},
        bashls = {},
        powershell_es = {},
        autohotkey_lsp = {},
        gitlab_ci_ls = {},
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "asm",
        "arduino",
        "disassembly",
        "powershell",
        "nginx",
        "desktop",
        "http",
        "ini",
        "xml",
        "scss",
        "swift",
        "csv",
        "verilog",
        "vhdl",
      })
    end,
  },
}

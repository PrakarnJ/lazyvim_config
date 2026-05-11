return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "lua", "python", "javascript", "typescript", "bash", "json", "yaml", "markdown", "vim", "vimdoc" },
      highlight = { enable = true },
    },
  },
{ "nvim-treesitter/nvim-treesitter-textobjects" },
}

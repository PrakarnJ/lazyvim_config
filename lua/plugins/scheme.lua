return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "craftzdog/solarized-osaka.nvim",
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
      ---colorscheme = "kanagawa-wave",
      ---colorscheme = "catppuccin",
    },
  },
}

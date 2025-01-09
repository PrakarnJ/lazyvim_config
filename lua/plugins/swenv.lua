-- file: ~/.config/nvim/lua/plugins/swenv.lua
return {
  {
    "AckslD/swenv.nvim",
    -- You can make it load on certain events or commands (if desired)
    -- but here's a basic setup with no lazy loading:
    lazy = false,

    -- Optional: if you want to use Telescope for picking venvs:
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },

    config = function()
      require("swenv").setup({
        -- Should return a list of tables with a `name` and a `path` entry each.
        -- Gets the argument `venvs_path` set below.
        -- By default just lists the entries in `venvs_path`.
        get_venvs = function(venvs_path)
          return require("swenv.api").get_venvs(venvs_path)
        end,
        -- Path passed to `get_venvs`.
        venvs_path = vim.fn.expand("~/venvs"),
        -- Something to do after setting an environment, for example call vim.cmd.LspRestart
        post_set_venv = nil,
      })

      -- If you use telescope-swenv, you can load its extension:
      -- require("telescope").load_extension("swenv")
    end,

    -- Optional: add a nice keymap to quickly pick a virtual environment
    keys = {
      {
        "<leader>sv",
        function()
          -- swenv provides a built-in selection menu if you don't want telescope
          require("swenv.api").pick_venv()
        end,
        desc = "Pick a Python virtual environment",
      },
    },
  },
}

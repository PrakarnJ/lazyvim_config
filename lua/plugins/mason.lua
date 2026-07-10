return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "actionlint",
        "api-linter",
        "autopep8",
        "buf",
        "clang-format",
        "clangd",
        "cmake-language-server",
        "cmakelang",
        "cmakelint",
        "codelldb",
        "codespell",
        "cortex-debug",
        "cpplint",
        "cpptools",
        "docker-compose-language-service",
        "docker-language-server",
        "dockerfile-language-server",
        "dotenv-linter",
        "flake8",
        "hadolint",
        "helm-ls",
        "json-lsp",
        "kube-linter",
        "lua-language-server",
        "markdown-toc",
        "markdownlint-cli2",
        "marksman",
        "neocmakelsp",
        "protolint",
        "protols",
        "pylint",
        "pyright",
        "ruff",
        "rust-analyzer",
        "rust_hdl",
        "shellcheck",
        "sonarlint-language-server",
        "sqlfluff",
        "tailwindcss-language-server",
        "terraform",
        "terraform-ls",
        "tflint",
        "tfsec",
        "vtsls",
        "yaml-language-server",
      },
    },
    config = function(_, opts)
      require("mason").setup(opts)
      local mr = require("mason-registry")
      mr:on("package:install:success", function()
        vim.defer_fn(function()
          require("lazy.core.handler.event").trigger({
            event = "FileType",
            buf = vim.api.nvim_get_current_buf(),
          })
        end, 100)
      end)
      mr.refresh(function()
        for _, tool in ipairs(opts.ensure_installed) do
          local ok, p = pcall(mr.get_package, tool)
          if ok and not p:is_installed() and not p:is_installing() then
            p:install()
          end
        end
      end)
    end,
  },
}

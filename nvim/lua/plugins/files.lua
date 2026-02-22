return {
  -- disable neo-tree (LazyVim default)
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  {
    "echasnovski/mini.files",
    version = false,
    opts = {
      windows = {
        preview = true,
        width_focus = 30,
        width_preview = 50,
      },
      options = {
        use_as_default_explorer = true,
      },
    },
    keys = {
      {
        "<leader>e",
        function()
          require("mini.files").open(vim.fn.getcwd())
        end,
        desc = "Open file explorer (project root)",
      },
      {
        "-",
        function()
          local buf = vim.api.nvim_buf_get_name(0)
          require("mini.files").open(buf ~= "" and buf or vim.fn.getcwd())
        end,
        desc = "Open file explorer (current file)",
      },
    },
  },
}


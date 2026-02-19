return {
  "jvgrootveld/telescope-zoxide",
  dependencies = { "nvim-telescope/telescope.nvim" },
  keys = {
    { "<leader>fz", "<cmd>Telescope zoxide list<cr>", desc = "Zoxide" },
  },
  config = function()
    require("telescope").load_extension("zoxide")
  end,
}

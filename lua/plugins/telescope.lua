return { 
  {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    config = function()
      local telescope_builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", telescope_builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      local telescope = require("telescope")

      telescope.setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      })
      telescope.load_extension("ui-select")
    end
  }
}

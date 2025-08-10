return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      local toggleterm = require("toggleterm")
      toggleterm.setup({
        open_mapping = [[<c-\>]],
        size = 16,
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = "horizontal",
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
          border = "curved",
          winblend = 0,
          highlights = {
            border = "Normal",
            background = "Normal",
          },
        },
      })

      local Terminal = require("toggleterm.terminal").Terminal
      local function new_terminal()
        vim.ui.input({ prompt = "Enter terminal name: " }, function (input)
          if input and input ~= "" then
            local new_term = Terminal:new({
              name = input,
            })
            new_term:toggle()
          else
            print("Terminal name is required.")
          end
        end)
      end

      vim.keymap.set("n", "<leader>tn", new_terminal, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>tl", ":TermSelect<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>ta", ":ToggleTermToggleAll", { noremap = true, silent = true })

    end
  },
}

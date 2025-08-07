return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<C-\>]],
        shade_terminals = true,
        auto_scroll = true,
        close_on_exit = true,
        float_opts = {
          winblen = 3,
          highlights ={
            border = "Normal",
            backgroud = "Normal"
          },
          border = 'curved',
          title_pos = 'center'
        }
      })
    end
  },
}

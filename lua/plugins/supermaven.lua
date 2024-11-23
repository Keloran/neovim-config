return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<Tab>",
          clear_suggestion = "<C-]>",
          accept_word = "<C-j>",
        },
        color = {
          suggestion_color = "#FFFFFF",
          cterm = 244,
        },
        condition = function()
          return false
        end,
      })
    end,
  },
}

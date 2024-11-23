return {
  "kurama622/profile.nvim",
  dependencies = {
    "3rd/image.nvim",
  },
  config = function()
    require("profile").setup({
      avatar_path = "https://avatars.githubusercontent.com/u/200350?v=4",
      user = "keloran"
    })
    vim.api.nvim_set_keymap("n", "<leader>p", "<cmd>Profile<cr>", {
      silent = true
    })
  end
}

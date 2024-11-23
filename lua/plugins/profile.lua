return {
  "Kurama622/profile.nvim",
  dependencies = { "3rd/image.nvim" },
  config = function()
    local comp = require("profile.components")
    local win_width = vim.o.columns
    require("profile").setup({
      avatar_path = "/home/keloran/.config/nvim/profile/image.png",
      -- avatar position options
      avatar_opts = {
        avatar_width = 20,
        avatar_height = 20,
        avatar_x = math.floor((win_width - 20) / 2),
        avatar_y = 7,
        force_blank = true,   -- if true, will create some blank lines (avatar_height + avatar_y)
      },

      -- git user
      user = "keloran",
      git_contributions = {
        start_week = 1, -- The minimum is 1
        end_week = 53, -- The maximum is 53
        empty_char = " ",
        full_char = { "", "󰧞", "", "", "" },
        fake_contributions = nil,
      },
      hide = {
        statusline = true,
        tabline = true,
      },
    })
    vim.api.nvim_set_keymap("n", "<leader>p", "<cmd>Profile<cr>", { silent = true })
  end,
}


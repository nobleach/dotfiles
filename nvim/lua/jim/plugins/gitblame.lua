return {
  "tveskag/nvim-blame-line",
  config = function()
    local blame = require("nvim-blame-line")

    blame.setup{}

    local keymap = vim.keymap -- for conciseness

    keymap.set('n', '<leader>b', '<cmd>ToggleBlameLine<CR>', {noremap = true, silent = true})
  end,
}

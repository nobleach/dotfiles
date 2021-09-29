require("sidebar-nvim").setup({
  disable_default_keybindings = 0,
  bindings = {
    ["gq"] = function() require("sidebar-nvim").close() end,
  },
  open = false,
  side = "right",
  initial_width = 50,
  update_interval = 1000,
  sections = { "datetime", "git-status", "lsp-diagnostics" },
  section_separator = "-----"
})

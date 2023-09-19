require("toggleterm").setup{
size = function(term)
    if term.direction == "horizontal" then
      return 30
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_terminals = true,
  direction = 'horizontal',
  start_in_insert = true,
}



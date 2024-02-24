require("jim.core")
require("jim.lazy")

vim.cmd([[set completeopt=menuone,noselect]])

vim.cmd([[ hi IndentBlankLineChar guifg=#46424c gui=nocombine ]])
vim.cmd([[ hi IndentBlankLineSpaceChar guifg=#00ff00 gui=nocombine ]])
vim.cmd([[ hi IndentBlankLineSpaceCharBlankLine guifg=#00ffff gui=nocombine ]])
vim.cmd([[ hi IndentBlankLineContextHighlight guifg=#e98d26 gui=nocombine ]])

local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

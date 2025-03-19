-- vim-options

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.o.mouse = ""

vim.keymap.set({"n"}, "gt", ":bnext<CR>",     { silent = true })
vim.keymap.set({"n"}, "gT", ":bprevious<CR>", { silent = true })

vim.api.nvim_create_autocmd("BufEnter", { command = "set number norelativenumber" })

require("config.lazy")
-- require("lazy").setup("plugins");
vim.opt.showmode = false
vim.opt.guicursor = ""
vim.opt.fillchars = { eob = " " }
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.number = true

vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('WQ', 'wq', {})
vim.api.nvim_create_user_command('Q', 'q!', {})
vim.keymap.set('i', '<C-4>', '<Esc>$i', { noremap = true, silent = true })
vim.keymap.set('n', '<C-4>', '<Esc>$i', { noremap = true, silent = true })

vim.o.updatetime = 400

vim.diagnostic.config({
  virtual_text = false,  -- ne pas afficher inline
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    show_header = true,
    source = "always",
    border = "rounded",
    focusable = false,
  },
})

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end
})

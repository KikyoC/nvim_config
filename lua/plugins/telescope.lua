return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',

	vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })

}

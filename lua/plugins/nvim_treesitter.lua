return {
    'nvim-treesitter/nvim-treesitter',

    build = ':TSUpdate',
    event = { 'BufReadPost', 'BufNewFile' },
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
        'JoosepAlviste/nvim-ts-context-commentstring',
        'nvim-treesitter/nvim-treesitter-refactor',
        'windwp/nvim-ts-autotag',
        'nvim-treesitter/playground',
    },
}
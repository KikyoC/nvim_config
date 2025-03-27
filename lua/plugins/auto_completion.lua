return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-calc',
        'hrsh7th/cmp-emoji',
        'hrsh7th/cmp-nvim-lua',
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
    },
    event = 'InsertEnter',
    config = function()
        local cmp = require('cmp')
        local luasnip = require('luasnip')

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = {
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                ['<C-e>'] = cmp.mapping.close(),
                ['<C-n>'] = cmp.mapping.select_next_item(),
                ['<C-p>'] = cmp.mapping.select_prev_item(),
            },
            sources = {
                { name = 'nvim_lsp' },
                { name = 'buffer' },
                { name = 'path' },
                { name = 'calc' },
                { name = 'emoji' },
                { name = 'nvim_lua' },
            },
        })
    end,
    opts = {
        completion = {
            completeopt = 'menu,menuone,noinsert',
        },
        -- mapping = {
        --     ['<C-Space>'] = cmp.mapping.complete(),
        --     ['<CR>'] = cmp.mapping.confirm({ select = true }),
        --     ['<C-e>'] = cmp.mapping.close(),
        --     ['<C-n>'] = cmp.mapping.select_next_item(),
        --     ['<C-p>'] = cmp.mapping.select_prev_item(),
        -- },
    },
    cmdline = {
        { 'cmdline', sources = { { name = 'path' } } },
        { '/', sources = { { name = 'buffer' } } },
        { '?', sources = { { name = 'buffer' } } },
    },
    -- Setup for cmdline completion
    -- cmdline = {
    --     { ':', sources = cmp.config.sources({ { name = 'cmdline' } }) },
    --     { '/', sources = cmp.config.sources({ { name = 'buffer' } }) },
    --     { '?', sources = cmp.config.sources({ { name = 'buffer' } }) },
    -- },
    -- Setup for path completion
    path = {
        { name = 'path' },
    },
    -- Setup for buffer completion
    buffer = {
        { name = 'buffer' },
    },
    -- Setup for calc completion
    calc = {
        { name = 'calc' },
    },
}
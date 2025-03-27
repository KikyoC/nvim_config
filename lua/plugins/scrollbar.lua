return {
    'petertriho/nvim-scrollbar',
    event = 'BufReadPost',
    config = function()
        require('scrollbar').setup({
            handle = {
                color = '#A89984',
            },
            marks = {
                Search = { color = '#FF8800' },
                Error = { color = '#FF0000' },
                Warn = { color = '#FFA500' },
                Info = { color = '#00FF00' },
                Hint = { color = '#0000FF' },
            },
            excluded_filetypes = {
                'prompt',
                'TelescopePrompt',
                'noice',
                'notify',
            },
        })
    end,
}
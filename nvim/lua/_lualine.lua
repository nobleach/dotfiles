require('lualine').setup {
    options = {
        theme = 'jellybeans',
        tabline = {
            lualine_a = {'filename'},
            lualine_b = {'branch'},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {}
        }
    }
}

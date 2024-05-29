vim.opt.termguicolors = true

require("bufferline").setup{
    options = {
        show_buffer_icons = false, -- disable filetype icons for buffers
        hover = {
            enabled = false,
            delay = 150,
            reveal = {'close'}
        },
    }
}

-- transparency
local transparency = 0.98
vim.g.neovide_transparency=0.0
vim.g.transparency=transparency
vim.g.neovide_background_color=string.format("#282C34%x", transparency * 255)

-- floating window blur
local blur = 2.0
vim.g.neovide_floating_blur_amount_x = blur
vim.g.neovide_floating_blur_amount_y = blur

-- remember window size
vim.g.neovide_remember_window_size = true


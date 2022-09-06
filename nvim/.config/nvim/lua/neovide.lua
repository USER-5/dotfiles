-- transparency
transparency = 0.9
bg_color = "#282C34"
vim.g.neovide_transparency=0.0
vim.g.transparency=transparency
vim.g.neovide_background_color=bg_color .. string.format("%x", transparency * 255)

-- floating window blur
blur = 2.0
vim.g.neovide_floating_blur_amount_x = blur
vim.g.neovide_floating_blur_amount_y = blur

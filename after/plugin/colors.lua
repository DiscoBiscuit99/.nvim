function color_my_pencils(color)
	color = color or 'gruvbox'
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
	vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'StatusLine', { bg = '#7c6f64' })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = '#665c54' })
  vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'VertSplit', { fg = 'gray', bg = 'none' })
end

color_my_pencils()

return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "[F]ind [F]iles" })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "[F]ind [H]elp" })
		vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "[F]ind [K]eymaps" })
		vim.keymap.set('n', '<leader>fg', function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end, { desc = "[F]ind [G]rep" })
	end
}

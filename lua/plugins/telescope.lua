return {
	'nvim-telescope/telescope.nvim', 
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fa', function() 
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
	end
}

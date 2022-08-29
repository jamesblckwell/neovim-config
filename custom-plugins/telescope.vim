" hide vendor, node_modules folders from results
lua require('telescope').setup{ defaults = { file_ignore_patterns = {"vendor", "node_modules"} } }

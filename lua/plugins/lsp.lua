return {
	"neovim/nvim-lspconfig",
	lazy = false,
	keys = {
		{ "<leader>k", vim.diagnostic.open_float, { desc = "[D]iagnostic" } },
		{ "<leader>ld", vim.lsp.buf.definition, { desc = "[L]SP [D]efitinion" } },
		{ "<leader>lr", vim.lsp.buf.references, { desc = "[L]SP [R]eferences" } },
		{ "<leader>lD", vim.lsp.buf.declaration, { desc = "[L]SP [D]eclaration" } },
		{ "<leader>lT", vim.lsp.buf.type_definition, { desc = "[L]SP [T]ype Definition" } },
		{ "<leader>lT", vim.lsp.buf.type_definition, { desc = "[L]SP [T]ype Definition" } },
		{ "<leader>cr", vim.lsp.buf.rename, { desc = "[L]SP [C]ode [R]ename" } },
		{ "<leader>ca", vim.lsp.buf.code_action, { desc = "[L]SP [C]ode [A]ction" } },
	},
	dependencies = {
		-- Mason
		{
			"mason-org/mason-lspconfig.nvim",
			opts = {
				ensure_installed = { "ts_ls", "gopls", "svelte" },
				handlers = function(server_name)
					require("lspconfig")[server_name].setup({
						capabilities = require("blink.cmp").get_lsp_capabilities(),
					})
				end,
			},
			dependencies = {
				"mason-org/mason.nvim",
				build = function()
					---@diagnostic disable-next-line: param-type-mismatch
					pcall(vim.cmd, "MasonUpdate")
				end,
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
					},
				},
			},
		},

		-- Blink
		{
			"saghen/blink.cmp",
			event = { "BufEnter" },
			build = "cargo +nightly build --release",
			dependencies = {
				"rafamadriz/friendly-snippets",
			},
			opts = {
				snippets = { preset = "luasnip" },
				sources = {
					default = { "lsp", "path", "snippets", "buffer" },
				},
			},
		},
		-- Conform
		{
			"stevearc/conform.nvim",
			opts = {
				format_on_save = {
					timeout_ms = 500,
					lsp_format = "fallback",
				},
			},
			dependencies = {
				"zapling/mason-conform.nvim",
			},
		},
	},
	config = function()
		-- lua-language-server installed through Mason doesn't work for arch/wsl (idk I can't tell which), so using the one provided by pacman 2025-12-05
		vim.lsp.enable("lua_ls")

		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "✘",
					[vim.diagnostic.severity.WARN] = "▲",
					[vim.diagnostic.severity.HINT] = "⚑",
					[vim.diagnostic.severity.INFO] = "»",
				},
			},
		})
	end,
}

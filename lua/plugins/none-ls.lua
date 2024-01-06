return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,

				-- python
				null_ls.builtins.diagnostics.pylint,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.flake8,

				-- cpp
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.diagnostics.cpplint,
				null_ls.builtins.diagnostics.cppcheck,

				-- cmake
				null_ls.builtins.formatting.cmakelang,
				null_ls.builtins.diagnostics.checkmake,
				null_ls.builtins.diagnostics.clang_check,

				-- golang
				null_ls.builtins.formatting.gofmt,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.diagnostics.golangci_lint,

				-- markdown
				null_ls.builtins.formatting.markdownlint,

				-- xml
				null_ls.builtins.formatting.xmllint,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}

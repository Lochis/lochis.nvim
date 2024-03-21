local home = os.getenv("HOME")
require("formatter").setup({
	logging = false,
	filetype = {
		javascript = {
			-- prettier
			function()
				return {
					exe = "prettierd",
					args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
					stdin = true,
				}
			end,
		},
		rust = {
			-- Rustfmt
			function()
				return {
					exe = "rustfmt",
					args = { "--edition=2018", "--emit=stdout" },
					stdin = true,
				}
			end,
		},
		go = {
			function()
				return {
					exe = "gofmt",
					args = { vim.api.nvim_buf_get_name(0) },
					stdin = true,
				}
			end,
		},
		lua = {
			function()
				return {
					exe = "ast-grep",
					args = { "-" },
					stdin = true,
				}
			end,
		},
		java = {
			function()
				return {
					exe = "java",
            		-- Formatter uses '-' as stdin
					args = { "-jar", home .. "/.local/jars/google-java-format.jar", "-" },
					stdin = true,
				}
            end,
        },
    },
})


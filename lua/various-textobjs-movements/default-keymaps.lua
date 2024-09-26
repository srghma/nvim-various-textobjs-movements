local M = {}
--------------------------------------------------------------------------------

function M.setup(config)
	vim.keymap.set(
		{ "n", "x" },
		config.go_to_indentation_top_withBlanks,
		'<cmd>lua require("various-textobjs-movements.movements").go_to_indentation("top", "inner", "inner", "withBlanks")<CR>',
		{ desc = "go to top of indentation" }
	)
	vim.keymap.set(
		{ "n", "x" },
		config.go_to_indentation_bottom_withBlanks,
		'<cmd>lua require("various-textobjs-movements.movements").go_to_indentation("bottom", "inner", "inner", "withBlanks")<CR>',
		{ desc = "go to bottom of indentation" }
	)
	vim.keymap.set(
		{ "n", "x" },
		config.go_to_indentation_bottom_noBlanks,
		'<cmd>lua require("various-textobjs-movements.movements").go_to_indentation("top", "inner", "inner", "noBlanks")<CR>',
		{ desc = "go to top of indentation (stop on blank line)" }
	)
	vim.keymap.set(
		{ "n", "x" },
		config.go_to_indentation_bottom_noBlanks,
		'<cmd>lua require("various-textobjs-movements.movements").go_to_indentation("bottom", "inner", "inner", "noBlanks")<CR>',
		{ desc = "go to bottom of indentation (stop on blank line)" }
	)
end

--------------------------------------------------------------------------------
return M

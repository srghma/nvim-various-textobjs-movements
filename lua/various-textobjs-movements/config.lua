local M = {}
--------------------------------------------------------------------------------
---@class config
---@field go_to_indentation_top_withBlanks? string
---@field go_to_indentation_bottom_withBlanks? string
---@field go_to_indentation_top_noBlanks? string
---@field go_to_indentation_bottom_noBlanks? string

---@type config
local defaultConfig = {
	go_to_indentation_top_withBlanks = "K",
	go_to_indentation_bottom_withBlanks = "J",
	go_to_indentation_top_noBlanks = "<C-M-k>",
	go_to_indentation_bottom_noBlanks = "<C-M-j>",
}
M.config = defaultConfig

---optional setup function
---@param userConfig? config
function M.setup(userConfig)
	M.config = vim.tbl_deep_extend("force", M.config, userConfig or {})

	require("various-textobjs-movements.default-keymaps").setup(M.config)
end

--------------------------------------------------------------------------------
return M

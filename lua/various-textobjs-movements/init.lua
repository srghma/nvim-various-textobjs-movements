local M = {}

---optional setup function
---@param userConfig? config
function M.setup(userConfig) require("various-textobjs-movements.config").setup(userConfig) end

--------------------------------------------------------------------------------

-- redirect calls to this module to the charwise-textobjs submodule
setmetatable(M, {
	__index = function(_, key)
		return function(scope)
			local module = "movements"
			require("various-textobjs-movements." .. module)[key](scope)
		end
	end,
})

--------------------------------------------------------------------------------
return M

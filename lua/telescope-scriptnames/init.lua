local conf = require("telescope.config").values
local finders = require("telescope.finders")
local pickers = require("telescope.pickers")

local TelescopeScriptnames = {}

TelescopeScriptnames.VERSION = "0.0.1" -- x-release-please-version

local function results_builder()
	local names = {}
	local command = vim.api.nvim_exec2("scriptnames", { output = true })

	for name in command.output:gmatch("[^\r\n]+") do
		table.insert(names, string.match(name, ": (.*)"))
	end

	return names
end

TelescopeScriptnames.list_scriptnames = function(opts)
	opts = opts or {}
	pickers
		.new(opts, {
			prompt_title = "scriptnames",
			finder = finders.new_table({
				results = results_builder(),
			}),
			sorter = conf.generic_sorter(opts),
		})
		:find()
end

return TelescopeScriptnames

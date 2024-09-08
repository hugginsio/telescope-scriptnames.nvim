return require("telescope").register_extension({
	exports = {
		scriptnames = require("telescope-scriptnames").list_scriptnames,
	},
})

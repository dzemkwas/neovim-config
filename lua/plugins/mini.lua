return {
    {
	'nvim-mini/mini.nvim',
	config = function()
	    local statusline = require("mini.statusline")
	    statusline.setup { use_icons = true }
	    local surround = require("mini.surround")
	    surround.setup {}
	    local auto_pair = require("mini.pairs")
	    auto_pair.setup {}
	    local bracketed = require("mini.bracketed")
	    bracketed.setup {}
	    local show_intent = require("mini.indentscope")
	    show_intent.setup {}
	end
    },
}

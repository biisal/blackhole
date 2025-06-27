local colors = require("blackhole.colors").colors
local M = {}

function M.get_highlights(opts)
	local transparent = opts.transparent or false
	local bg = transparent and colors.none or colors.bg
	return {

		Normal       = { fg = colors.fg, bg = bg },
		NormalFloat  = { fg = colors.fg, bg = bg },
		FloatBorder  = { fg = colors.fg, bg = bg },
		CursorLine   = { bg = colors.visualbg },
		CursorColumn = { bg = colors.visualbg },
		CursorLineNr = { fg = colors.orange, bold = true },
		LineNr       = { fg = colors.comment },
		SignColumn   = { bg = bg },
		Visual       = { bg = colors.visualbg },
		VisualNOS    = { bg = colors.visualbg },
		Search       = { bg = colors.yellow, fg = colors.black },
		IncSearch    = { bg = colors.orange, fg = colors.black },
		Substitute   = { bg = colors.red, fg = colors.black },

		-- === STATUSLINE & MENUS ===
		StatusLine   = { bg = colors.black, fg = colors.blue },
		StatusLineNC = { bg = colors.black, fg = colors.comment },
		Pmenu        = { bg = colors.black, fg = colors.fg },
		PmenuSel     = { bg = colors.blue, fg = colors.black },
		PmenuSbar    = { bg = colors.black },
		PmenuThumb   = { bg = colors.comment },
		WildMenu     = { bg = colors.blue, fg = colors.black },
		-- === TABS ===
		TabLine      = { bg = "#1a1a1a", fg = colors.comment },
		TabLineFill  = { bg = "#0d1117" },
		TabLineSel   = { bg = colors.bg, fg = colors.cyan, bold = true },
		TabLineClose = { bg = "#1a1a1a", fg = colors.red },
		TabLineMod   = { bg = "#1a1a1a", fg = colors.orange },


		-- === SPLITS & BORDERS ===
		VertSplit    = { fg = colors.comment },
		WinSeparator = { fg = colors.comment },


		-- === MESSAGES ===
		ErrorMsg                   = { fg = colors.red, bold = true },
		WarningMsg                 = { fg = colors.yellow, bold = true },
		MoreMsg                    = { fg = colors.green },
		ModeMsg                    = { fg = colors.blue },

		-- === SYNTAX HIGHLIGHTING ===
		Comment                    = { fg = colors.comment, italic = true },
		Constant                   = { fg = colors.cyan },
		String                     = { fg = colors.green },
		Character                  = { fg = colors.green },
		Number                     = { fg = colors.orange },
		Boolean                    = { fg = colors.orange },
		Float                      = { fg = colors.orange },

		Identifier                 = { fg = colors.blue },
		Function                   = { fg = colors.crimson },

		Statement                  = { fg = colors.red },
		Conditional                = { fg = colors.magenta },
		Repeat                     = { fg = colors.magenta },
		Label                      = { fg = colors.red },
		Operator                   = { fg = colors.white },
		Keyword                    = { fg = colors.red },
		Exception                  = { fg = colors.red },

		PreProc                    = { fg = colors.magenta },
		Include                    = { fg = "#FF00A0" },
		Define                     = { fg = colors.magenta },
		Macro                      = { fg = colors.magenta },
		PreCondit                  = { fg = colors.magenta },

		Type                       = { fg = colors.cyan },
		StorageClass               = { fg = colors.cyan },
		Structure                  = { fg = colors.cyan },
		Typedef                    = { fg = colors.cyan },

		Special                    = { fg = colors.orange },
		SpecialChar                = { fg = colors.orange },
		Tag                        = { fg = colors.red },
		Delimiter                  = { fg = colors.white },
		SpecialComment             = { fg = colors.comment },
		Debug                      = { fg = colors.red },

		-- === LSP DIAGNOSTICS ===
		DiagnosticError            = { fg = colors.red },
		DiagnosticWarn             = { fg = colors.yellow },
		DiagnosticInfo             = { fg = colors.blue },
		DiagnosticHint             = { fg = colors.cyan },
		DiagnosticUnderlineError   = { undercurl = true, sp = colors.red },
		DiagnosticUnderlineWarn    = { undercurl = true, sp = colors.yellow },
		DiagnosticUnderlineInfo    = { undercurl = true, sp = colors.blue },
		DiagnosticUnderlineHint    = { undercurl = true, sp = colors.cyan },

		-- === LSP REFERENCES ===
		LspReferenceText           = { bg = colors.visualbg },
		LspReferenceRead           = { bg = colors.visualbg },
		LspReferenceWrite          = { bg = colors.visualbg },

		-- === TREESITTER ===
		["@variable"]              = { fg = colors.fg },
		["@variable.builtin"]      = { fg = colors.cyan },
		["@variable.parameter"]    = { fg = colors.orange },
		["@variable.member"]       = { fg = colors.blue },

		["@constant"]              = { fg = colors.cyan },
		["@constant.builtin"]      = { fg = colors.orange },
		["@constant.macro"]        = { fg = colors.magenta },

		["@string"]                = { fg = colors.green },
		["@string.escape"]         = { fg = colors.orange },
		["@string.special"]        = { fg = colors.orange },

		["@character"]             = { fg = colors.green },
		["@character.special"]     = { fg = colors.orange },

		["@number"]                = { fg = colors.orange },
		["@number.float"]          = { fg = colors.orange },

		["@boolean"]               = { fg = colors.orange },

		["@function"]              = { fg = colors.crimson },
		["@function.builtin"]      = { fg = colors.cyan },
		["@function.call"]         = { fg = colors.crimson },
		["@function.macro"]        = { fg = colors.magenta },

		["@function.method"]       = { fg = colors.crimson },
		["@function.method.call"]  = { fg = colors.crimson },

		["@constructor"]           = { fg = "#00EEFF" },

		["@operator"]              = { fg = colors.white },

		["@keyword"]               = { fg = colors.red },
		["@keyword.function"]      = { fg = colors.red },
		["@keyword.operator"]      = { fg = colors.red },
		["@keyword.return"]        = { fg = colors.red },
		["@keyword.conditional"]   = { fg = colors.magenta },
		["@keyword.repeat"]        = { fg = colors.magenta },
		["@keyword.exception"]     = { fg = colors.red },

		["@type"]                  = { fg = colors.cyan },
		["@type.builtin"]          = { fg = colors.cyan },
		["@type.definition"]       = { fg = colors.cyan },

		["@attribute"]             = { fg = colors.magenta },
		["@property"]              = { fg = colors.blue },

		["@label"]                 = { fg = colors.red },

		["@punctuation.delimiter"] = { fg = colors.white },
		["@punctuation.bracket"]   = { fg = "#f9e2af" },
		["@punctuation.special"]   = { fg = colors.orange },

		["@comment"]               = { fg = colors.comment, italic = true },
		["@comment.documentation"] = { fg = colors.comment },

		["@tag"]                   = { fg = "#FC7AFF" },
		["@tag.attribute"]         = { fg = colors.green },
		["@tag.delimiter"]         = { fg = colors.white },

		["@module"]                = { fg = "#89dceb" },

		-- === NVIM-TREE ===
		NvimTreeNormal             = { fg = colors.fg, bg = transparent and colors.none or colors.bg },
		NvimTreeFolderIcon         = { fg = colors.blue },
		NvimTreeFolderName         = { fg = colors.blue },
		NvimTreeOpenedFolderName   = { fg = colors.blue, bold = true },
		NvimTreeFileIcon           = { fg = colors.fg },
		NvimTreeFileName           = { fg = colors.fg },
		NvimTreeExecFile           = { fg = colors.green },
		NvimTreeImageFile          = { fg = colors.magenta },
		NvimTreeSpecialFile        = { fg = colors.yellow },
		NvimTreeSymlink            = { fg = colors.cyan },
		NvimTreeRootFolder         = { fg = colors.red, bold = true },
		NvimTreeGitDirty           = { fg = colors.yellow },
		NvimTreeGitNew             = { fg = colors.green },
		NvimTreeGitDeleted         = { fg = colors.red },
		NvimTreeIndentMarker       = { fg = colors.comment },

		-- === TELESCOPE ===
		TelescopeNormal            = { fg = colors.fg, bg = bg },
		TelescopeBorder            = { fg = colors.comment, bg = bg },
		TelescopePromptNormal      = { fg = colors.fg, bg = bg },
		TelescopePromptBorder      = { fg = colors.blue, bg = bg },
		TelescopePromptTitle       = { fg = colors.blue, bold = true },
		TelescopePreviewTitle      = { fg = colors.green, bold = true },
		TelescopeResultsTitle      = { fg = colors.red, bold = true },
		TelescopeSelection         = { bg = colors.visualbg },
		TelescopeSelectionCaret    = { fg = colors.red },
		TelescopeMatching          = { fg = colors.yellow, bold = true },

		-- === GIT SIGNS ===
		GitSignsAdd                = { fg = colors.green },
		GitSignsChange             = { fg = colors.yellow },
		GitSignsDelete             = { fg = colors.red },

		-- === DIFF ===
		DiffAdd                    = { bg = "#2d4a2a" },
		DiffChange                 = { bg = "#4a4a2d" },
		DiffDelete                 = { bg = "#4a2d2d" },
		DiffText                   = { bg = "#6b6b2d" },

		-- === FOLD ===
		Folded                     = { fg = colors.comment, bg = colors.black },
		FoldColumn                 = { fg = colors.comment, bg = bg },

		-- === SPELL ===
		SpellBad                   = { undercurl = true, sp = colors.red },
		SpellCap                   = { undercurl = true, sp = colors.blue },
		SpellLocal                 = { undercurl = true, sp = colors.cyan },
		SpellRare                  = { undercurl = true, sp = colors.magenta },

		EndOfBuffer                = { fg = colors.black }
	}
end

return M

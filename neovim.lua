return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg         = "#171717",
        dark_bg    = "#171717",
        darker_bg  = "#101010",
        lighter_bg = "#2a2a2a",

        fg         = "#CCD0CF",
        dark_fg    = "#959c95",
        light_fg   = "#dadedd",
        bright_fg  = "#e7eae9",
        muted      = "#878e87",   -- comments (gray-green, one step above cyan), AA on bg + CursorLine

        -- Greek Noir palette, all syntax roles AA (>=4.5:1) on bg:
        red        = "#F25623",   -- errors (vermilion, color02 — the unique alarm color)
        orange     = "#f0913a",   -- numbers / constants (amber, derived — not the terminal magenta)
        yellow     = "#aeab94",   -- keywords / types (beige, color01)
        green      = "#9cab76",   -- strings (moss, derived — calm for the most frequent token)
        cyan       = "#7b837b",   -- members / fields (gray-green, color06)
        blue       = "#88A57D",   -- functions / methods (sage, color04)
        purple     = "#F56E0F",   -- control keywords (orange, color05 — the loud one)
        brown      = "#81816d",   -- deprecated / special (dim gray-olive, derived)

        -- brights: same hue, lifted ~12-25% so bold-bright is distinguishable
        bright_red    = "#f5805a",
        bright_yellow = "#b9b7a3",
        bright_green  = "#aab789",
        bright_cyan   = "#a6ada6",
        bright_blue   = "#99b28f",
        bright_purple = "#f89a57",

        accent               = "#F25623",
        cursor               = "#aeab94",
        foreground           = "#CCD0CF",
        background           = "#171717",
        selection             = "#3a3a3a",
        selection_foreground = "#CCD0CF",
        selection_background = "#171717",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = "#202020" }
        -- ":" cmdline + "/" search popup (noice.nvim): accent border + icon
        hl.NoiceCmdlinePopupBorder       = { fg = c.accent }
        hl.NoiceCmdlineIcon              = { fg = c.accent }
        hl.NoiceCmdlinePopupBorderSearch = { fg = c.accent }
        hl.NoiceCmdlineIconSearch        = { fg = c.accent }
        hl.CursorLineNr = { fg = c.yellow, bold = true }
        hl.LspReferenceText = { bg = c.selection, fg = c.bright_fg }
        hl.LspReferenceRead = hl.LspReferenceText
        hl.LspReferenceWrite = hl.LspReferenceText
        -- Picker path/dir legible: muted gray-green, AA on bg
        hl.SnacksPickerDir         = { fg = c.muted }
        hl.SnacksPickerPathHidden  = { fg = c.muted }
        hl.SnacksPickerPathIgnored = { fg = c.muted }
        -- Picker hover row matches hl.CursorLine above
        hl.SnacksPickerListCursorLine = { bg = "#202020" }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}

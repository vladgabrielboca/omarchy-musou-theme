-- Musou ships this file so neovim can override bg_visual and paint added
-- lines sage. Keep the colors in sync with colors.toml: green stays indigo
-- everywhere, and sage #8ba790 is used only for diff additions (+ lines).
return {
  {
    "omacom/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg = "#0b0b0b",
        dark_bg = "#060606",
        darker_bg = "#000000",
        lighter_bg = "#181818",

        fg = "#dcdcdc",
        dark_fg = "#7c7c7c",
        light_fg = "#c8c8c8",
        bright_fg = "#f0f0f0",
        muted = "#707070",

        red = "#a86870",
        yellow = "#9e9e9e",
        orange = "#bfbfbf",
        green = "#948cc0",
        cyan = "#948cc0",
        blue = "#948cc0",
        magenta = "#9c94c8",
        brown = "#646464",

        bright_red = "#c2848c",
        bright_yellow = "#c4c4c4",
        bright_green = "#9c94c8",
        bright_cyan = "#b0a8d8",
        bright_blue = "#b0a8d8",
        bright_magenta = "#b0a8d8",

        accent = "#9c94c8",
        cursor = "#f0f0f0",
        foreground = "#dcdcdc",
        background = "#0b0b0b",
        selection = "#3a3a3a",
        selection_foreground = "#f0f0f0",
        selection_background = "#3a3a3a",
      },
      -- Visual selection one step above the #3a3a3a terminal selection, so it
      -- stays visible on the cursor line (aether draws that at fg 20% = #353535).
      on_colors = function(c)
        c.bg_visual = "#424242"
        -- Sage belongs to additions only. Aether derives these from green
        -- before on_colors runs, so repaint them here: #2b322c is sage
        -- #8ba790 at 25% over the #0b0b0b background.
        c.diff.add = "#2b322c"
        c.git.add = "#8ba790"
      end,
      on_highlights = function(hl)
        hl.diffAdded = { fg = "#a6bfaa", bg = "#2b322c" }
        hl.DiffviewStatusAdded = { fg = "#8ba790" }
        hl.DiffviewFilePanelInsertions = { fg = "#8ba790" }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}

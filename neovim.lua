-- Musou ships this file so neovim can override bg_visual. Keep the colors
-- in sync with colors.toml.
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
        green = "#8ba790",
        cyan = "#948cc0",
        blue = "#948cc0",
        magenta = "#9c94c8",
        brown = "#646464",

        bright_red = "#c2848c",
        bright_yellow = "#c4c4c4",
        bright_green = "#a6bfaa",
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

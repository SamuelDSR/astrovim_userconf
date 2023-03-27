return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin", enable = true },
  {
    "catppuccin",
    opts = {
      flavour = "frappe", -- latte, frappe, macchiato, mocha
      background = {
        light = "latte",
        dark = "frappe",
      },
      transparent_background = false,
      show_end_of_buffer = false, -- show the '~' characters after the end of buffers
      term_colors = false,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      no_italic = false, -- Force no italic
      no_bold = false,   -- Force no bold
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {},
      custom_highlights = {},
      integrations = {
        cmp        = true,
        gitsigns   = true,
        nvimtree   = true,
        telescope  = true,
        notify     = true,
        mini       = false,
        dap        = true,
        Special    = true,
        treesitter = true,
        mason      = true,
        markdown   = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        -- https://github.com/catppuccin/nvim
      }
    }
  }
  -- { import = "astrocommunity.colorscheme.gruvbox" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}

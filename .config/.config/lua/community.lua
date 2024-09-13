
-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme/catppuccin" },
  { import = "astrocommunity.colorscheme/citruszest-nvim" },
  { import = "astrocommunity.colorscheme/tokyonight-nvim" },
  { import = "astrocommunity.colorscheme/vim-dogrun" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  -- import/override with your plugins folder
}

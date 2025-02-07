return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Optional: for icons
  config = function()
    require('lualine').setup({
      options = {
        theme = 'catppuccin',                               -- Set the theme (e.g., 'auto', 'onedark', 'gruvbox')
        component_separators = { left = '|', right = '|' }, -- Separators between components
        section_separators = { left = '', right = '' },     -- Separators between sections
      },
      sections = {
        lualine_a = { 'mode' },                               -- Leftmost section (mode)
        lualine_b = { 'branch', 'diff', 'diagnostics' },      -- Branch, Git diff, and diagnostics
        lualine_c = { 'filename' },                           -- Current filename
        lualine_x = { 'encoding', 'fileformat', 'filetype' }, -- Encoding, file format, and file type
        lualine_y = { 'progress' },                           -- Progress through the file
        lualine_z = { 'location' }                            -- Cursor location
      },
      inactive_sections = {
        lualine_a = {},             -- Inactive leftmost section
        lualine_b = {},             -- Inactive branch, Git diff, and diagnostics
        lualine_c = { 'filename' }, -- Inactive filename
        lualine_x = { 'location' }, -- Inactive cursor location
        lualine_y = {},             -- Inactive progress
        lualine_z = {}              -- Inactive rightmost section
      },
    })
  end
}

require('telescope').setup {
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      height = 0.75,
      preview_height = 0.25,
      prompt_position = 'bottom'
    }
  }
}
require('telescope').load_extension('fzy_native')

local actions = require 'telescope.actions'
local actions_state = require 'telescope.actions.state'
local pickers = require 'telescope.pickers'
local finders = require 'telescope.finders'
local sorters = require 'telescope.sorters'
local themes = require 'telescope.themes'
local dropdown = themes.get_dropdown()

function next_color(prompt_bufnr)
  actions.move_selection_next(prompt_bufnr)
  local selection = actions_state.get_selected_entry()
  local cmd = 'colorscheme ' .. selection[1]
  vim.cmd(cmd)
end

function prev_color(prompt_bufnr)
  actions.move_selection_previous(prompt_bufnr)
  local selection = actions_state.get_selected_entry()
  local cmd = 'colorscheme ' .. selection[1]
  vim.cmd(cmd)
end

function enter(prompt_bufnr)
  local selection = actions_state.get_selected_entry()
  local cmd = 'colorscheme ' .. selection[1]
  vim.cmd(cmd)
end

local colors = vim.fn.getcompletion('', 'color')

local opts = {
  finder = finders.new_table(colors),
  sorter = sorters.get_generic_fuzzy_sorter({}),

  attach_mappings = function(prompt_bufnr, map)
    map('i', '<cr>', enter)
    map('i', '<C-J>', next_color)
    map('i', '<C-K>', prev_color)

    return true
  end
}
local colors = pickers.new(dropdown, opts)

--colors:find()

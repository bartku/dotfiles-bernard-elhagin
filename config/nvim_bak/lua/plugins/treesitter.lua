local status_ok, configs = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

configs.setup {
  ensure_installed = 'maintained',
  ignore_install = {''},
  highlight = {
    enable = true,
    disable = {''},
    additional_vim_regex_highlighting = true
  },
  indent = {
    enable = true
  },
  autotag = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil
  }
}


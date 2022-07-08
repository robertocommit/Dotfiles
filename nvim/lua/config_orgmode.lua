require('orgmode').setup_ts_grammar()
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = {'org'},
  },
  ensure_installed = {'org'},
}
require('orgmode').setup({
  org_agenda_files = {'~/Code/**/*.org'},
  org_default_notes_file = '~/Code/Org/notes.org',
  mappings = {
    prefix = '#',
    global = {
      org_agenda = 'gA',
      org_capture = 'gC'
    },
    capture = {
      org_capture_finalize = '<c-s>',
      org_capture_show_help = 'h'
    }
  }
})

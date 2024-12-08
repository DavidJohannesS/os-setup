require("meow")
vim.diagnostic.config({
  virtual_text = false
})
vim.g.coc_filetype_map = {
  ['yaml.ansible'] = 'ansible',
  ['yaml'] = 'ansible',
  ['yml'] = 'ansible',
}
-- Define the autocommand group for Ansible filetypes
vim.api.nvim_command('augroup AnsibleFileTypes')
vim.api.nvim_command('autocmd!')

-- Set filetype for Ansible playbooks
vim.api.nvim_command('autocmd BufRead,BufNewFile */group_vars/*.yml,*/host_vars/*.yml,*/tasks/*.yml,*/roles/*.yml,*/handlers/*.yml,*/playbooks/*.yml set filetype=yaml.ansible')
vim.api.nvim_command('autocmd BufRead,BufNewFile */group_vars/*.yaml,*/host_vars/*.yaml,*/tasks/*.yaml,*/roles/*.yaml,*/handlers/*.yaml,*/playbooks/*.yaml set filetype=yaml.ansible')
vim.api.nvim_command('autocmd BufRead,BufNewFile playbook.y(a)ml,site.y(a)ml,main.y(a)ml set filetype=yaml.ansible')

-- Set filetype for Jinja2 templates
vim.api.nvim_command('autocmd BufRead,BufNewFile *.j2 set filetype=jinja2')

-- Set filetype for Ansible hosts files
vim.api.nvim_command('autocmd BufRead,BufNewFile hosts set filetype=ansible_hosts')

vim.api.nvim_command('augroup END')


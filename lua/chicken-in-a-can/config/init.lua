require('chicken-in-a-can.config.settings')
require('chicken-in-a-can.config.bindings')

-- bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- set up all my plugins
require('lazy').setup({
    spec = {
        {import = 'chicken-in-a-can.plugins'}
    },
    install = {
        colorscheme = { 'onedark' },
    },
})

-- Keymap to activate lazy
vim.keymap.set('n', '<leader>l', vim.cmd.Lazy, {desc = '[L]azy Menu'})

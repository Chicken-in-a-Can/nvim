-- ██████╗ ██╗███╗  ██╗██████╗ ██╗███╗  ██╗ ██████╗  ██████╗   ██╗     ██╗   ██╗ █████╗
-- ██╔══██╗██║████╗ ██║██╔══██╗██║████╗ ██║██╔════╝ ██╔════╝   ██║     ██║   ██║██╔══██╗
-- ██████╦╝██║██╔██╗██║██║  ██║██║██╔██╗██║██║  ██╗ ╚█████╗    ██║     ██║   ██║███████║
-- ██╔══██╗██║██║╚████║██║  ██║██║██║╚████║██║  ╚██╗ ╚═══██╗   ██║     ██║   ██║██╔══██║
-- ██████╦╝██║██║ ╚███║██████╔╝██║██║ ╚███║╚██████╔╝██████╔╝██╗███████╗╚██████╔╝██║  ██║
-- ╚═════╝ ╚═╝╚═╝  ╚══╝╚═════╝ ╚═╝╚═╝  ╚══╝ ╚═════╝ ╚═════╝ ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝
----------------------------------------------------------------------------------------
-- @author Minh Nguyen
-- @github https://github.com/samminhch
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

local g = vim.g
local c = vim.cmd

g.mapleader = ' '
g.maplocalleader = ' '

local function nmap(binding, value)
    vim.keymap.set('n', binding, value, { silent = true })
end

vim.keymap.set({ 'n', 'v' }, '<space>', '<nop>', { silent = true })
nmap('<leader>ex', c.Ex)
nmap('<leader>gs', vim.cmd.Git)
nmap('<leader>u', vim.cmd.UndotreeToggle)

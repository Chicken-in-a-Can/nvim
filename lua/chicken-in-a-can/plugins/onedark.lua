return {
    'navarasu/onedark.nvim',
    lazy=false,
    priority=1000,
    enabled = not vim.g.vscode,
    config = function()
        -- load the colorscheme
        vim.cmd.colorscheme('onedark')
   end
}

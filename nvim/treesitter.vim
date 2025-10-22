lua <<LUA

require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = function(lang, bufnr)
          return string.find(vim.fn.expand('%:p'), "DOS") ~= nil
        end,
    }
}

LUA

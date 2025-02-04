return {
    "lervag/vimtex",
    init = function()
        if vim.fn.has('win32') == 1 then
            vim.g.vimtex_view_method = "general"
        elseif vim.fn.has('unix') == 1 then
            vim.g.vimtex_view_method = "zathura"
        end

        vim.g.vimtex_view_forward_search_on_start = false

        vim.g.vimtex_compiler_latexmk = {
            out_dir = "out",
            options = {
                "-pdf",
                "-interaction=nonstopmode",
                "-synctex=1",
            },
        }
    end,
}

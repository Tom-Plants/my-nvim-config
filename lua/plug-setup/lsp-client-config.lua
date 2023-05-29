require'ls-setup/typescript'


vim.keymap.set('n', '<space>ee', vim.diagnostic.open_float)
vim.keymap.set('n', '<space>ep', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<space>en', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>el', vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', '<space>dd', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', '<space>d', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', '<space>h', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<space>i', vim.lsp.buf.implementation, opts)
        --vim.keymap.set('n', '<space>si', vim.lsp.buf.signature_help, opts)
        --vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        --vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        --vim.keymap.set('n', '<space>wl', function()
		--print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        --end, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<space>r', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})

local isActive = false

local options_baq = {
    listchars = '',
}

local function trailer()
    if isActive then
        isActive = false
        vim.wo['list'] = false
        vim.o['listchars'] = options_baq['listchars']
    else
        isActive = true
        vim.wo['list'] = true
        options_baq['listchars'] = vim.o['listchars']
        vim.o['listchars'] = 'trail:☠'
        vim.api.nvim_command("hi Whitespace guifg=#ff0000")
    end
end

return {
    trailer = trailer,
}

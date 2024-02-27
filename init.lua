-- 使用 core/options.lua 文件
require("core/options")
require("core/keymaps")
require("plugins/plugins-setup")

require("plugins/colorscheme")
-- require("plugins/lualine")
require("plugins/nvim-tree")
require("plugins/treesitter")
require("plugins/lsp")
require("plugins/cmp")
require("plugins/comment")
require("plugins/autopairs")
require("plugins/bufferline")
-- require("plugins/gitsigns")
require("plugins/telescope")

local function split()
    vim.cmd('set splitright')
    vim.cmd('vsp')
end

function run()
    if vim.bo.filetype == 'cpp' then
        split()
        vim.cmd('term g++ "%" -o "%<" && ./"%<"')
    elseif vim.bo.filetype == 'python' then
        split()
        vim.cmd('term python3 "%"')
    end
end

-- 使用 core/options.lua 文件
require("core/options")
require("core/keymaps")

-- require("plugins/colorscheme")
-- require("plugins/lualine")
-- require("plugins/nvim-tree")
-- require("plugins/treesitter")
-- require("plugins/lsp")
-- require("plugins/cmp")
-- require("plugins/comment")
-- require("plugins/autopairs")
-- require("plugins/bufferline")
-- require("plugins/telescope")
-- require("plugins/gitsigns")


-- *********************************************************************** --
-- 自动安装 lazy 管理插件
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Directory plugins will be automatically merged in the main plugin spec{}
require("lazy").setup("plugins")
-- *********************************************************************** --

-- require("plugins/lspconfig")
-- bufferline
vim.opt.termguicolors = true



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
    elseif vim.bo.filetype == 'verilog' then
        split()
        vim.cmd('term iverilog "%" -o "%<"')
    end
end

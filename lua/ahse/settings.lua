function getHomeDir()
    local ENV_HOME = os.getenv("HOME");

    -- Linux and MacOS
    if type(ENV_HOME) == "string" then
        return ENV_HOME
    end

	local ENV_HOMEDRIVE = os.getenv("HOMEDRIVE");
    local ENV_HOMEPATH = os.getenv("HOMEPATH");

    -- Windows
    if type(ENV_HOMEDRIVE) == "string" and type(ENV_HOMEPATH) == "string" then 
        return string.gsub(ENV_HOMEDRIVE..ENV_HOMEPATH,"\\", "/")
    end


    return nil
end


vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = truei

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = getHomeDir() .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

local M = {}

local DEAULT_OPTS = {
  normalModeColor='red',
  insertModeColor='red'
}

local function mergeOpts(opt1)
  return function(opt2)
    return vim.tbl_deep_extend("force", opt1, opt2)
  end
end

local function execVimCmd(cmd)
  vim.api.nvim_command(cmd)
end


local function setupCursorColor(normalModeColor, insertModeColor)
  execVimCmd("hi Cursor guifg=" .. normalModeColor .. " guibg=" .. normalModeColor)
  execVimCmd("hi Cursor2 guifg=" .. insertModeColor .. " guibg=" .. insertModeColor)
  execVimCmd("set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50")
end


function M.setup(opts)
  opts = mergeOpts(DEAULT_OPTS)(opts or {})
  setupCursorColor(opts.normalModeColor, opts.insertModeColor)
end

return M


vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.timeoutlen = 2000
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.o.background = "dark"
vim.cmd.colorscheme("selenized")

-- fzf-lua: fuzzy file finder inside nvim
require('fzf-lua').setup({
  winopts = {
    preview = {
      layout = 'vertical',  -- preview below the file list
    },
  },
})

-- Keybindings
vim.keymap.set('n', '<leader>f', require('fzf-lua').files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>b', require('fzf-lua').buffers, { desc = 'Switch buffer' })

-- Buffer tabs: show open buffers as a tab line at the top
vim.opt.showtabline = 2  -- always show
vim.opt.tabline = '%!v:lua.Tabline()'

function Tabline()
  local s = ''
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(buf) and vim.bo[buf].buflisted then
      local name = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(buf), ':t')
      if name == '' then name = '[No Name]' end
      if buf == vim.api.nvim_get_current_buf() then
        s = s .. ' %#TabLineSel# ' .. name .. ' '
      else
        s = s .. ' %#TabLine# ' .. name .. ' '
      end
    end
  end
  return s .. '%#TabLineFill#'
end

-- Navigate between open buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', { silent = true })
-- L goes to end of line (easier than $ on Hungarian keyboard)
vim.keymap.set({'n', 'v'}, 'L', '$')

-- Close current buffer
vim.keymap.set('n', '<leader>x', ':bd<CR>', { silent = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function(args)
    vim.treesitter.start(args.buf, "markdown")
  end,
})
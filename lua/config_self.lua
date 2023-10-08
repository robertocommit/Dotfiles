local vim = vim

function SistemaAccenti()
  local from = {"E'", "a'", "e'", "i'", "o'", "u'"}
  local to = {"É", "á", "é", "í", "ó", "ú"}

  local last_line = vim.api.nvim_buf_line_count(0)
  local lines = vim.api.nvim_buf_get_lines(0, 0, last_line, true)

  local s_lines = ""
  for _, k in ipairs(lines) do
    s_lines = s_lines .. k
  end

  for i in ipairs(from) do
    if s_lines:match(from[i], 0) then
      vim.cmd(":%s/"..from[i].."/"..to[i].."/g")
    end
  end
end

function ParseJson()
  vim.cmd(":%!jq")
end

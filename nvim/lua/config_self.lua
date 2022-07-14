local vim = vim

function SistemaAccentiItaliani()
  vim.cmd(":%s/E'/É/g")
  vim.cmd(":%s/a'/á/g")
  vim.cmd(":%s/e'/é/g")
  vim.cmd(":%s/i'/í/g")
  vim.cmd(":%s/o'/ó/g")
  vim.cmd(":%s/u'/ú/g")
end

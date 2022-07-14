local status_ok, dap_py = pcall(require, "dap-python") 

if not status_ok then
  return
end

dap_py.test_runner = 'pytest'

dap_py.setup('~/.nvim_venv/debugpy/bin/python')

table.insert(require('dap').configurations.python, {
    type = 'python',
    request = 'launch',
    name = 'My custom launch configuration',
    program = '${file}',
    --env = { "API_STAGE" , "staging" },
})

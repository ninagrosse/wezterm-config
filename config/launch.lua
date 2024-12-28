local platform = require('utils.platform')

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'ubuntu2404' }
   options.launch_menu = {
      { label = 'PowerShell', args = { 'powershell' } },
      { label = 'Command Prompt', args = { 'cmd' } },
      {
         label = 'Git Bash',
         args = { 'C:\\Program Files\\Git\\bin\\bash.exe', '--login', '-i' },
      },
   }
elseif platform.is_mac then
   options.default_prog = { 'zsh', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
end

return options

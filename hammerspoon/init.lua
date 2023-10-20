hs.hotkey.bind({'shift', 'option'}, 'r',  hs.reload)

-- modules
require('modules.inputsource_aurora')

-- open application
hs.hotkey.bind({'shift', 'option'}, 'N', function()
    hs.application.launchOrFocus('Notion')
end)
hs.hotkey.bind({'shift', 'option'}, 'O', function()
    hs.application.launchOrFocus('Obsidian')
end)
hs.hotkey.bind({'shift', 'option'}, 'C', function()
    hs.application.launchOrFocus('Google Chrome')
end)
hs.hotkey.bind({'shift', 'option'}, 'M', function()  
  hs.application.launchOrFocus('https://abit.ly/theplaylist')
end)
hs.hotkey.bind({'shift', 'option'}, 'Y', function()
  hs.application.launchOrFocus('Dynalist')
end)
hs.hotkey.bind({'shift', 'option'}, 'I', function()
    hs.application.launchOrFocus('iTerm')
end)
hs.hotkey.bind({'shift', 'option'}, 'S', function()
  hs.application.launchOrFocus('Slack')
end)
hs.hotkey.bind({'shift', 'option'}, 'D', function()
  hs.application.launchOrFocus('Datagrip')
end)
hs.hotkey.bind({'shift', 'option'}, 'K', function()
  hs.application.launchOrFocus('KakaoTalk')
end)
hs.hotkey.bind({'shift', 'option'}, 'P', function()
  hs.application.launchOrFocus('Postman')
end)
hs.hotkey.bind({'shift', 'option'}, 'A', function()
  hs.application.launchOrFocus('Android Studio')
end)
hs.hotkey.bind({'shift', 'option'}, 'V', function()
  hs.application.launchOrFocus('Visual Studio Code')
end)
hs.hotkey.bind({'shift', 'option'}, 'U', function()
  hs.application.launchOrFocus('Unity')
end)
hs.hotkey.bind({'shift', 'option'}, 'L', function()
  hs.application.launchOrFocus('DeepL')
end)
hs.hotkey.bind({'shift', 'option'}, 'X', function()
  hs.application.launchOrFocus('Xcode')
end)

-- open url 
hs.hotkey.bind({'shift', 'option'}, '1', function()
  hs.urlevent.openURLWithBundle('https://calendar.google.com/calendar/u/0/r/week', 'com.google.Chrome')
end)
hs.hotkey.bind({'shift', 'option'}, '2', function()
  hs.urlevent.openURLWithBundle('https://teamab180.atlassian.net/jira/software/c/projects/ABRO/boards/107/backlog?issueLimit=100&assignee=557058%3A657aa302-5a72-43aa-bd7d-71b97d08e04f', 'com.google.Chrome')
end)
hs.hotkey.bind({'shift', 'option'}, '3', function()
  hs.urlevent.openURLWithBundle('https://teamab180.lightning.force.com/lightning/page/home', 'com.google.Chrome')
end)
hs.hotkey.bind({'shift', 'option'}, 'm', function()
  hs.urlevent.openURLWithBundle('https://abit.ly/theplaylist', 'com.google.Chrome')
end)

-- open file
local function openFileOrDirectory(mods, key, dir)
  local mods = mods or {}
  hs.hotkey.bind(mods, key, function()
      local shell_command = "open " .. dir
      hs.execute(shell_command)
  end)
end

openFileOrDirectory({'shift','option'}, "H", "~/Dropbox/dotfiles/hammerspoon/init.lua") 

-- ready
hs.alert.show('Hammerspoon ready!')

function changeVolume(diff)
  return function()
    local current = hs.audiodevice.defaultOutputDevice():volume()
    local new = math.min(100, math.max(0, math.floor(current + diff)))
    if new > 0 then
      hs.audiodevice.defaultOutputDevice():setMuted(false)
    end
    hs.alert.closeAll(0.0)
    hs.alert.show("Volume " .. new .. "%", {}, 0.5)
    hs.audiodevice.defaultOutputDevice():setVolume(new)
  end
end

hs.hotkey.bind({'shift', 'option'}, 'Down', changeVolume(-3))
hs.hotkey.bind({'shift', 'option'}, 'Up', changeVolume(3))
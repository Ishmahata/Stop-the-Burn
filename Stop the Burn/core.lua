--[[ Stop The Burn, a super simple small addon to stop messages in trade/general from a certain EU server that never speaks english
     Drop the folder in your addons folder. There will be no further updates to this. ]]

local function myChatFilter(self, event, msg, author, ...)
  if author:find("-BurningLegion") then
    return true
  end
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", myChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", myChatFilter)
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", myChatFilter)
-- ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", myChatFilter)

-- Uncomment the two rows above if you want to mute YELL and Whispers too

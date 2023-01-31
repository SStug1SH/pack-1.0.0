function bindSay (source, key, keyState, cmd, say)
  outputChatBox(getClientName(source) ..":".. say)
  end

function bindSay (source, cmd, key, say)
  if not key or not say then
    outputChatBox("/bind [klawisz] [tekst]", source, 255, 0, 0)
    return 1
    end
  bindKey (source, key, "down", parseBind, cmd, say)
  end

addCommandHandler("bindSay", broadcastMessage)

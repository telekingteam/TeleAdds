[Forwarded from Create Plugin]
local function parsed_url(link)
  local parsed_link = URL.parse(link)
  local parsed_path = URL.parse_path(parsed_link.path)
  return parsed_path[2]
end

function run(msg, matches)
  local hash = parsed_url(matches[1])   
  join = import_chat_link(hash,ok_cb,false)
  return reply_msg(msg.id,'سلام من سارا مرادى هستم ، ١٨ سالمه پايه دوستى و رفاقت هم هستم ، اگر گروه دارى لينكش رو پيوى يا همينجا بفرست من جوين ميشم ❤️ شما هم جوين شيد كانال داداشم ازش حمايت شه ❤️❤️ ايدى كانالش : @NeroTeam',ok_cb,false)
end


return {
  patterns = {
    "([Hh][Tt][Tt][Pp][Ss]://[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/%S+)",
  }, 
  run = run
}

end

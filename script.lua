local url = "https://raw.githubusercontent.com/Zxodee/Hydro/main/Scripts"

local games = {
    [4483381587] = "Baseplate";
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]

return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))()

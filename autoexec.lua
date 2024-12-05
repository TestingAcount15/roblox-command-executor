local repo = "https://raw.githubusercontent.com/TestingAcount15/roblox-command-executor/main/command.txt"
local success, cmd = pcall(function()
    return game:HttpGet(repo)
end)

local commands = {
    test = function()
        print("Test command executed!")
    end,
}

if success and commands[cmd] then
    commands[cmd]()
else
    print("Invalid or no command:", cmd or "Error fetching command")
end

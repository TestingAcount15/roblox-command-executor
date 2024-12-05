local repo = "https://raw.githubusercontent.com/TestingAcount15/roblox-command-executor/refs/heads/main/command.txt"
local cmd = game:HttpGet(repo)

local commands = {
    test = function()
        print("Test command executed!")
    end,
}

if commands[cmd] then
    commands[cmd]()
else
    print("Invalid or no command:", cmd)
end

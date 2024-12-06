local repo = "https://raw.githubusercontent.com/TestingAcount15/roblox-command-executor/main/command.txt"

-- Safely fetch the command from the GitHub repository
local success, cmd = pcall(function()
    return game:HttpGet(repo)
end)

-- Define your commands table
local commands = {
    test = function()
        print("Test command executed!")
    end,
    hello = function()
        print("Hello, world!")
    end,
    jump = function()
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end,
}

-- Execute the command if it exists
if success and commands[cmd] then
    commands[cmd]()
else
    print("Invalid or no command:", cmd or "Error fetching command")
end

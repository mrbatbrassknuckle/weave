-- Welcome to AWP!--lego

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- List of allowed UserIds
local AllowedUserIds = {
    3565534353 --krashoutbands on discord (1232804910320451624).
    ,8159226854 -- big bullet
}

-- Function to check if the player is allowed
local function isAllowedUser()
    for _, id in ipairs(AllowedUserIds) do
        if LocalPlayer.UserId == id then
            return true
        end
    end
    return false
end

-- Check if the player is allowed to run the script
if not isAllowedUser() then
    print("You're not authorized to run this script.")
    return  -- Stop the script if the player is not in the list
end


-- Gets your own character's Core part
local function getCharacterCore()
    for _, v in pairs(workspace.Live:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChild("Humanoid") and Players:GetPlayerFromCharacter(v) == LocalPlayer then
            return v:FindFirstChild("Core")
        end
    end
    return nil
end



local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

-- Whitelist of UserIds that won't be affected
local Whitelist = {
    8078230308, 2469715203, 8084337494, 5181814837, 
    8078230308, 2637345839, 8107065185, 1781630769, 
    8123730071, 8123833771, 8092178465, 8115803391, 
    8123987275, 2927207797, 8071035174, 8139822029, 
    8140944930, 8159245763, 8144316744, 8159260241, 
    4711574619, 7213185057, 8092178189
}

-- Function to check if a player is whitelisted
local function isWhitelisted(player)
    for _, id in ipairs(Whitelist) do
        if player.UserId == id then
            return true
        end
    end
    return false
end

-- Function to create the GUI
local function createGUI()
    -- GUI Setup
    local ScreenGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local EpicTrollzTab = Instance.new("Frame")
    local EpikFightTab = Instance.new("Frame")
    local PlayerScriptFrame = Instance.new("Frame")
    local TextBox = Instance.new("TextBox")
    local RunButton = Instance.new("TextButton")
    local PartyAllButton = Instance.new("TextButton")
    local FlingButton = Instance.new("TextButton")  -- Fling button
    local ConvertButton = Instance.new("TextButton")  -- Convert Bat to Shank button
    local EpicTrollzTabButton = Instance.new("TextButton")
    local EpikFightTabButton = Instance.new("TextButton")

    ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")  -- Put GUI in PlayerGui for persistence

    -- Main Frame
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    MainFrame.Size = UDim2.new(0, 300, 0, 200)
    MainFrame.Position = UDim2.new(0.4, 0, 0.3, 0)
    MainFrame.BorderSizePixel = 2
    MainFrame.Active = true
    MainFrame.Draggable = true

    -- Tab Setup
    EpicTrollzTab.Parent = MainFrame
    EpicTrollzTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    EpicTrollzTab.Size = UDim2.new(1, 0, 1, 0)
    EpicTrollzTab.Visible = true

    EpikFightTab.Parent = MainFrame
    EpikFightTab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    EpikFightTab.Size = UDim2.new(1, 0, 1, 0)
    EpikFightTab.Visible = false

    -- Buttons to Switch Tabs
    EpicTrollzTabButton.Parent = MainFrame
    EpicTrollzTabButton.Text = "Epic Trollz"
    EpicTrollzTabButton.Size = UDim2.new(0.5, 0, 0, 30)
    EpicTrollzTabButton.Position = UDim2.new(0, 0, 0, 5)
    EpicTrollzTabButton.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
    EpicTrollzTabButton.TextSize = 18
    EpicTrollzTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)

    EpikFightTabButton.Parent = MainFrame
    EpikFightTabButton.Text = "Epik Fight"
    EpikFightTabButton.Size = UDim2.new(0.5, 0, 0, 30)
    EpikFightTabButton.Position = UDim2.new(0.5, 0, 0, 5)
    EpikFightTabButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
    EpikFightTabButton.TextSize = 18
    EpikFightTabButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Get the local player and define the helper function
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- This function gets the Core part of your character dynamically
local function getCharacterCore()
    for _, v in pairs(workspace.Live:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChild("Humanoid") and Players:GetPlayerFromCharacter(v) == LocalPlayer then
            return v:FindFirstChild("Core")
        end
    end
    return nil
end


    -- Switching Tabs
    EpicTrollzTabButton.MouseButton1Click:Connect(function()
        EpicTrollzTab.Visible = true
        EpikFightTab.Visible = false
    end)

    EpikFightTabButton.MouseButton1Click:Connect(function()
        EpicTrollzTab.Visible = false
        EpikFightTab.Visible = true
    end)

    -- Player Script Frame
    PlayerScriptFrame.Parent = EpicTrollzTab
    PlayerScriptFrame.Size = UDim2.new(1, 0, 1, 0)
    PlayerScriptFrame.BackgroundTransparency = 1

    -- Player Name Input (Below "Fling All (Stronger)" button)
    TextBox.Parent = PlayerScriptFrame
    TextBox.PlaceholderText = "Enter Player Name"
    TextBox.Size = UDim2.new(1, -10, 0, 30)
    TextBox.Position = UDim2.new(0, 5, 0, 150)  -- Position below the Fling button
    TextBox.Text = ""
    TextBox.TextSize = 14
    TextBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)

local stopSpamButton = Instance.new("TextButton")
stopSpamButton.Parent = PlayerScriptFrame
stopSpamButton.Text = "no spam"
stopSpamButton.Size = UDim2.new(0.4, -5, 0, 25)  -- Makes it smaller in width and height
stopSpamButton.Position = UDim2.new(0, 5, 0, 250)  -- Keeps it to the left

stopSpamButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Red button
stopSpamButton.TextSize = 16
stopSpamButton.TextColor3 = Color3.fromRGB(255, 255, 255)

local stopSpamming = false

stopSpamButton.MouseButton1Click:Connect(function()
    stopSpamming = true
end)

-- Force Join Party Button
local ForceJoinButton = Instance.new("TextButton")
ForceJoinButton.Parent = PlayerScriptFrame
ForceJoinButton.Text = "Force Join Party"
ForceJoinButton.Size = UDim2.new(1, -10, 0, 30)
ForceJoinButton.Position = UDim2.new(0, 5, 0, 185)  -- Positioned right below the TextBox
ForceJoinButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)  -- Blue button
ForceJoinButton.TextSize = 16
ForceJoinButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Spam Force Join Party Button
local SpamForceJoinButton = Instance.new("TextButton")
SpamForceJoinButton.Parent = PlayerScriptFrame
SpamForceJoinButton.Text = "Spam Force Join Party"
SpamForceJoinButton.Size = UDim2.new(1, -10, 0, 30)
SpamForceJoinButton.Position = UDim2.new(0, 5, 0, 220)  -- Positioned below Force Join Button
SpamForceJoinButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)  -- Red button
SpamForceJoinButton.TextSize = 16
SpamForceJoinButton.TextColor3 = Color3.fromRGB(255, 255, 255)

    -- Spam Screen With Text Button
    RunButton.Parent = PlayerScriptFrame
    RunButton.Text = "Spam Screen With Text"
    RunButton.Size = UDim2.new(1, -10, 0, 30)
    RunButton.Position = UDim2.new(0, 5, 0, 40)
    RunButton.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
    RunButton.TextSize = 18

    -- Party Text Spam ALL Button
    PartyAllButton.Parent = PlayerScriptFrame
    PartyAllButton.Text = "Party Text Spam ALL"
    PartyAllButton.Size = UDim2.new(1, -10, 0, 30)
    PartyAllButton.Position = UDim2.new(0, 5, 0, 75)
    PartyAllButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50) -- Red button
    PartyAllButton.TextSize = 16
    PartyAllButton.TextColor3 = Color3.fromRGB(255, 255, 255)

    -- Fling Button (New Button for Flinging Players)
    FlingButton.Parent = PlayerScriptFrame
    FlingButton.Text = "Fling All (Stronger)"
    FlingButton.Size = UDim2.new(1, -10, 0, 30)
    FlingButton.Position = UDim2.new(0, 5, 0, 110)
    FlingButton.BackgroundColor3 = Color3.fromRGB(255, 150, 50) -- Orange button
    FlingButton.TextSize = 16
    FlingButton.TextColor3 = Color3.fromRGB(255, 255, 255)

        -- Convert Bat to Shank Button
    ConvertButton.Parent = EpikFightTab
    ConvertButton.Text = "Convert Bat to Shank"
    ConvertButton.Size = UDim2.new(1, -10, 0, 30)
    ConvertButton.Position = UDim2.new(0, 5, 0, 40)  -- Positioned in the EpikFightTab
    ConvertButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)  -- Blue button
    ConvertButton.TextSize = 16
    ConvertButton.TextColor3 = Color3.fromRGB(255, 255, 255)

    -- Add the Savage+Bat Combo Button (below Convert Button)
    local SavageBatComboButton = Instance.new("TextButton")
    SavageBatComboButton.Parent = EpikFightTab
    SavageBatComboButton.Text = "Savage+Bat Combo"
    SavageBatComboButton.Size = UDim2.new(1, -10, 0, 30)
    SavageBatComboButton.Position = UDim2.new(0, 5, 0, 75)  -- Positioned below Convert Button
    SavageBatComboButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)  -- Green button
    SavageBatComboButton.TextSize = 16
    SavageBatComboButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- legit speed (left side half button)
local legitSpeedButton = Instance.new("TextButton")
legitSpeedButton.Parent = EpikFightTab  -- Make sure it's under the right tab
legitSpeedButton.Text = "Legit Speed"
legitSpeedButton.Size = UDim2.new(0.5, -7, 0, 30)  -- Half width of parent, with a little margin
legitSpeedButton.Position = UDim2.new(0, 5, 0, 165)  -- Same Y position, left aligned
legitSpeedButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)  -- Orange button
legitSpeedButton.TextSize = 16
legitSpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- unfair speed (right side half button, red)
local unfairSpeedButton = Instance.new("TextButton")
unfairSpeedButton.Parent = EpikFightTab  -- Make sure it's under the right tab
unfairSpeedButton.Text = "Unfair Speed"
unfairSpeedButton.Size = UDim2.new(0.5, -7, 0, 30)  -- Half width of parent, with a little margin
unfairSpeedButton.Position = UDim2.new(0.5, 5, 0, 165)  -- Positioned on the right of Legit Speed
unfairSpeedButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Red button
unfairSpeedButton.TextSize = 16
unfairSpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)



local hitmanButton = Instance.new("TextButton")
hitmanButton.Parent = EpikFightTab
hitmanButton.Text = "Hitman 2 Hit Comboz ONLY!"
hitmanButton.Size = UDim2.new(1, -10, 0, 30) 
hitmanButton.Position = UDim2.new(0, 5, 0, 110)
hitmanButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
hitmanButton.TextSize = 16
hitmanButton.TextColor3 = Color3.fromRGB(255, 255, 255)

hitmanButton.MouseButton1Click:Connect(function()
    local ohString1 = "Equip"
    local ohString2 = "Hitman"

    game:GetService("Players").LocalPlayer.Communicate.Interface.RemoteEvent:FireServer(ohString1, ohString2)

    while true do 
        wait(0.1)

        local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()

        local scriptPath = getCharacterCore()
        if not scriptPath then return end

        local closureName = "Unnamed function"
        local upvalueIndex = 9
        local closureConstants = {
            [1] = "Health",
            [2] = "GetState",
            [3] = "Enum",
            [4] = "HumanoidStateType",
            [5] = "Dead",
            [6] = Enum.HumanoidStateType.Dead
        }

        local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
        local currentValue = debug.getupvalue(closure, upvalueIndex)["Combo"]

        if currentValue == 2 then
            debug.getupvalue(closure, upvalueIndex)["Combo"] = 3
        elseif currentValue == 4 then
            debug.getupvalue(closure, upvalueIndex)["Combo"] = 1
        end
    end
end)


local muayThaiButton = Instance.new("TextButton")
muayThaiButton.Parent = EpikFightTab  -- Make sure it's under the right tab
muayThaiButton.Text = "Muay Thai Kicks Only"
muayThaiButton.Size = UDim2.new(1, -10, 0, 30) 
muayThaiButton.Position = UDim2.new(0, 5, 0, 135)  -- Positioned below Hitman button
muayThaiButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)  -- Orange button
muayThaiButton.TextSize = 16
muayThaiButton.TextColor3 = Color3.fromRGB(255, 255, 255)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function getCharacterCore()
    for _, v in pairs(workspace.Live:GetChildren()) do
        if v:IsA("Model") and v:FindFirstChild("Humanoid") and Players:GetPlayerFromCharacter(v) == LocalPlayer then
            return v:FindFirstChild("Core")
        end
    end
    return nil
end

-- 🔘 Button click listener
muayThaiButton.MouseButton1Click:Connect(function()
    local ohString1 = "Equip"
    local ohString2 = "Muay Thai"

    LocalPlayer.Communicate.Interface.RemoteEvent:FireServer(ohString1, ohString2)

    while true do 
        wait(0.1)

        local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()

        local scriptPath = getCharacterCore()
        if not scriptPath then continue end

        local closureName = "Unnamed function"
        local upvalueIndex = 9
        local closureConstants = {
            [1] = "Health",
            [2] = "GetState",
            [3] = "Enum",
            [4] = "HumanoidStateType",
            [5] = "Dead",
            [6] = Enum.HumanoidStateType.Dead
        }

        local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
        local currentValue = debug.getupvalue(closure, upvalueIndex)["Combo"]

        if currentValue == 3 then
            debug.getupvalue(closure, upvalueIndex)["Combo"] = 1
        end
    end
end)

--LEGIT SPEED FUNCTION
legitSpeedButton.MouseButton1Click:Connect(function()
    local madebyspxifyerplr = game.Players.LocalPlayer
    local plrs = game:GetService("Players")
    local gthr = plrs:GetPlayers()

    local m4deb4spxifyer = game:GetService("ReplicatedStorage").Classes
    SpxifyermadeDis = require(m4deb4spxifyer)

    print(SpxifyermadeDis)

    for i, v in pairs(gthr) do
        g = v.Character.HumanoidRootPart
        lp = madebyspxifyerplr.Name

        print(" Editing... " .. lp .. "'s Thank You For Buying :D  !... ")

        wait()

        local function _pause()
            wait(2)
        end

        SpxifyermadeDis.Bones.Speed = 1.6
        print(" edittng bones speed")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Amateur.Speed = 1.25
        print(" editing amateur speed..! ")
        _pause()
        print(" done! ")
        SpxifyermadeDis["CRASH OUT"].Speed = 1.5
        print(" editing crash out...! ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Boxer.Speed = 1.4
        SpxifyermadeDis.Boxer.Damage = 666
        print(" editing boxah! ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Kicker.Speed = 1.5
        print(" Editing 'Kicker' Class Stats...! ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Karate.Speed = 1.4
        print(" editing karate! ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Striker.Speed = 1.5
        print(" editing striker! ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Ninja.Speed = 1.45
        print(" editing ninja speed ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Aggressive.Speed = 1.4
        print(" editing aggressive speed! ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Philly.Speed = 2
        print(" editing philli speed! ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Baddie.Speed = 1.4
        print(" editing baddie speed! ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Squabble.Speed = 1.7
        print(" Editing Squabble Stats. ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.SAVAGE.Speed = 1.35
        print(" editing savage speed (LMAO it came out with like 14-15 damage or smth idk what typa crack ethourah was smoking) ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Stud.Speed = 1.6
        print(" editing lesbian (stud) speed! ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Hitman.Speed = 1.9
        print(" editing hitmane speed ")
        _pause()
        print(" done! ")
        SpxifyermadeDis.Hawk.Speed = 1.9
        print(" editing hawk tuah speed! ")
        _pause()
        print(" done! ")
        SpxifyermadeDis["Peak A Boo"].Speed = 1.5
        print(" editing peak a boo speed ")
        _pause()
        print(" done! ")
        SpxifyermadeDis["Slap Boxer"].Speed = 1.5
        print(" editing slap boxa speed! ")
        _pause()
        print(" done! ")
        SpxifyermadeDis["Heavy Hitter"].Speed = 1.3
        print(" editing temu crashout(heavy hitter) speed ")
        _pause()
        print(" done! ")
        SpxifyermadeDis["Muay Thai"].Speed = 1.75
        print(" changing that brazillian jiu jitsu ahh style speed ")
        _pause()
        print(" done! ")
        SpxifyermadeDis["Jaw Breaker"].Speed = 1.65
        print(" changing jaw breaker speed! ")
        _pause()
        print(" done ")
    end

    wait(2)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "class stats done",
        Text = "enjoy. i love you❤️",
        Duration = 6
    })
end)


-- Unfair Speed Button
local unfairSpeedButton = Instance.new("TextButton")
unfairSpeedButton.Parent = EpikFightTab  -- Make sure it's under the right tab
unfairSpeedButton.Text = "Unfair Speed"
unfairSpeedButton.Size = UDim2.new(0.5, -7, 0, 30)  -- Half width of parent, with a little margin
unfairSpeedButton.Position = UDim2.new(0.5, 5, 0, 165)  -- Positioned on the right of Legit Speed
unfairSpeedButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Red button
unfairSpeedButton.TextSize = 16
unfairSpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Functionality for Unfair Speed
unfairSpeedButton.MouseButton1Click:Connect(function()
    local speed = 3  -- Unfair speed multiplier
    local madebyspxifyerplr = game.Players.LocalPlayer
    local plrs = game:GetService("Players")
    local gthr = plrs:GetPlayers()

    local m4deb4spxifyer = game:GetService("ReplicatedStorage").Classes
    SpxifyermadeDis = require(m4deb4spxifyer)

    print("Now we're entering the danger zone...")

    for i, v in pairs(gthr) do
        local g = v.Character.HumanoidRootPart
        local lp = madebyspxifyerplr.Name

        print("Thank you for buying... I love you, " .. lp .. " enjoy your menu!")

        wait()

        local function _pause()
            wait(1)
        end

        -- Unfair speed changes (the crazy part)
        SpxifyermadeDis.Bones.Speed = speed
        print("Bone-crushing speed coming your way...")
        _pause()
        print("Done! Next victim...")

        SpxifyermadeDis.Amateur.Speed = speed
        print("Amateur class... but not so amateur now!")
        _pause()
        print("Done! Moving on...")

        SpxifyermadeDis["CRASH OUT"].Speed = speed
        print("CRASH OUT... Let's show them a REAL crashout.")
        _pause()
        print("Finished! Keep up the pace!")

        SpxifyermadeDis.Boxer.Speed = speed
        SpxifyermadeDis.Boxer.Damage = 10
        print("Boxer class: we onnat mike tyson timing now!")
        _pause()
        print("Done! Getting crazier...")

        SpxifyermadeDis.Kicker.Speed = speed
        print("Kicker, we out.")
        _pause()
        print("Done! Who's next...")

        SpxifyermadeDis.Karate.Speed = speed
        print("Karate class... HOOOYAAA!")
        _pause()
        print("Done! You’re on fire!")

        SpxifyermadeDis.Striker.Speed = speed
        print("Striker class... STRIIIIKE!!")
        _pause()
        print("Done! You're a blur!")

        SpxifyermadeDis.Ninja.Speed = speed
        print("Ninja class, HOOYAAA!")
        _pause()
        print("Done! Keep up the pace!")

        SpxifyermadeDis.Aggressive.Speed = speed
        print("Aggressive?!")
        _pause()
        print("Done! Next!")

        SpxifyermadeDis.Philly.Speed = speed
        print("Philly class... like a speeding bullet!")
        _pause()
        print("Done! Who's still standing?")

        SpxifyermadeDis.Baddie.Speed = speed
        print("Baddie class is now untouchable!")
        _pause()
        print("Done! Next one...")

        SpxifyermadeDis.Squabble.Speed = speed
        print("Squabble class going full speed ahead!")
        _pause()
        print("Done! The pace is picking up!")

        SpxifyermadeDis.SAVAGE.Speed = speed
        print("Savage class? That 3 Hit Combo gonna hit now!!")
        _pause()
        print("Done! We're speeding through!")

        SpxifyermadeDis.Stud.Speed = speed
        print("Stud class speed going uppppp!!")
        _pause()
        print("Done! We're almost there!")

        SpxifyermadeDis.Hitman.Speed = speed
        print("Hitman class? Let's just say... good luck!")
        _pause()
        print("Done! Let's keep this going!")

        SpxifyermadeDis.Hawk.Speed = speed
        print("Hawk TUAH For Da Win!")
        _pause()
        print("Done! Speed is key!")

        SpxifyermadeDis["Peak A Boo"].Speed = speed
        print("Peak A Boo class... you're too fast to even see!")
        _pause()
        print("Done! Almost done!")

        SpxifyermadeDis["Slap Boxer"].Speed = speed
        print("Slap Boxer... now slapping at lightning speed!")
        _pause()
        print("Done! Just a couple more!")

        SpxifyermadeDis["Heavy Hitter"].Speed = speed
        print("Heavy Hitter , more like heavy shittah!")
        _pause()
        print("Done! We're almost done!")

        SpxifyermadeDis["Muay Thai"].Speed = speed
        print("Muay Thai? More like Muay Fast!")
        _pause()
        print("Done! On to the next!")

        SpxifyermadeDis["Jaw Breaker"].Speed = speed
        print("Jaw Breaker class... editing speed! Done, All done! Enjoy the madness!")
        _pause()
    end

    wait(2)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "class stats done",
        Text = "enjoy. lighting fast hits. i love you❤️",
        Duration = 6
    })
end)


    -- Savage+Bat Combo Button Functionality
    SavageBatComboButton.MouseButton1Click:Connect(function()
        StarterGui:SetCore("SendNotification",{
            Title = "Script Executed",
            Text = "Savage+Bat Combo Activated",
            Duration = 6
        })

        -- Savage+Bat Combo Script
        local ohString1 = "Equip"
        local ohString2 = "SAVAGE"

        game:GetService("Players").LocalPlayer.Communicate.Interface.RemoteEvent:FireServer(ohString1, ohString2)

        game:GetService("Players").LocalPlayer.Server.Current_Weapon.Value = ""

         while true do
        if stopSpamming then
            break -- Stop the loop if stopSpamming is true
        end
        wait(0.1)
            -- Generated by Hydroxide's Upvalue Scanner: https://github.com/Upbolt/Hydroxide/revision/ohaux.lua

            local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()

            local scriptPath = getCharacterCore()
            local closureName = "Unnamed function"
            local upvalueIndex = 9
            local closureConstants = {
                [1] = "Health",
                [2] = "GetState",
                [3] = "Enum",
                [4] = "HumanoidStateType",
                [5] = "Dead",
                [6] = Enum.HumanoidStateType.Dead
            }

            local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
            local value = 2
            local elementIndex = "Combo"

            -- Modify the Combo element for the combo effect
            debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
        end
    end)

-- Force Join Party Functionality
ForceJoinButton.MouseButton1Click:Connect(function()
    local playerName = TextBox.Text  -- Get the player's name from the TextBox
    if playerName == "" then return end  -- Prevent errors if input is empty

    local ohString1 = "AcceptPartyInvite"
    local ohInstance2 = game:GetService("Players"):FindFirstChild(playerName)  -- Find player dynamically

    if ohInstance2 then
        game:GetService("Players").LocalPlayer.Communicate.Interface.RemoteEvent:FireServer(ohString1, ohInstance2)
    else
        StarterGui:SetCore("SendNotification", {
            Title = "Error",
            Text = "Player not found!",
            Duration = 3
        })
    end
end)

-- Spam Force Join Party Functionality
SpamForceJoinButton.MouseButton1Click:Connect(function()
    local playerName = TextBox.Text  -- Get the player's name from the TextBox
    if playerName == "" then return end  -- Prevent errors if input is empty

    StarterGui:SetCore("SendNotification", {
        Title = "Script Running",
        Text = "Spamming Force Join Party...",
        Duration = 3
    })

     while true do
        if stopSpamming then
            break -- Stop the loop if stopSpamming is true
        end
        task.wait(0.1)

        local ohString1 = "AcceptPartyInvite"
        local ohInstance2 = game:GetService("Players"):FindFirstChild(playerName)  -- Find player dynamically

        if ohInstance2 then
            game:GetService("Players").LocalPlayer.Communicate.Interface.RemoteEvent:FireServer(ohString1, ohInstance2)
        end
    end
end)


    -- Convert Button Functionality
    ConvertButton.MouseButton1Click:Connect(function()
        -- Convert Bat to Shank
        game:GetService("Players").LocalPlayer.Server.Current_Weapon.Value = "Shank"
    end)

    -- Player Name Box Functionality (Below "Fling All (Stronger)" Button)
RunButton.MouseButton1Click:Connect(function()
    local playerName = TextBox.Text
    if playerName == "" then return end

     while true do
        if stopSpamming then
            break -- Stop the loop if stopSpamming is true
        end
        wait(0.1)

        local ohString1 = "AcceptPartyInvite"
        local ohInstance2 = game:GetService("Players")[playerName] -- Access player using the variable

        game:GetService("Players").LocalPlayer.Communicate.Interface.RemoteEvent:FireServer(ohString1, ohInstance2)

        wait(0.020)
        local ohString1 = "Leave_Party"
        local ohInstance2 = game:GetService("Players")[playerName] -- Access again using the variable

        game:GetService("Players").LocalPlayer.Communicate.Interface.RemoteEvent:FireServer(ohString1, ohInstance2)
    end
end)


    -- Party Text Spam ALL Button Functionality
    PartyAllButton.MouseButton1Click:Connect(function()
        StarterGui:SetCore("SendNotification",{
            Title = "Script Executed";
            Text = "Party Text Spam ALL";
            Duration = 6;
        })

        -- List of UserIds that won't be affected
        local Whitelist = {
            8078230308, 2469715203, 8084337494, 5181814837, 
            8078230308, 2637345839, 8107065185, 1781630769, 
            8123730071, 8123833771, 8092178465, 8115803391, 
            8123987275, 2927207797, 8071035174, 8139822029, 
            8140944930, 8159245763, 8144316744, 8159260241, 
            4711574619, 7213185057, 8092178189
        }

        -- Function to check if a player is whitelisted
        local function isWhitelisted(player)
            for _, id in ipairs(Whitelist) do
                if player.UserId == id then
                    return true
                end
            end
            return false
        end

        -- Main loop to process all players except whitelisted ones
         while true do
        if stopSpamming then
            break -- Stop the loop if stopSpamming is true
        end
        wait(0.1)

            for _, player in pairs(Players:GetPlayers()) do
                if not isWhitelisted(player) then
                    local ohString1 = "AcceptPartyInvite"
                    local ohInstance2 = player

                    game:GetService("Players").LocalPlayer.Communicate.Interface.RemoteEvent:FireServer(ohString1, ohInstance2)

                    wait(0.02)
                    local ohString1 = "Leave_Party"
                    local ohInstance2 = player

                    game:GetService("Players").LocalPlayer.Communicate.Interface.RemoteEvent:FireServer(ohString1, ohInstance2)
                end
            end
        end
    end)

    -- Fling Button Functionality
FlingButton.MouseButton1Click:Connect(function()
    StarterGui:SetCore("SendNotification",{
        Title = "Script Executed";
        Text = "Fling All (Stronger)";
        Duration = 6;
    })

    -- Fling Function Implementation
    local function StrongFling(TargetPlayer)
        if isWhitelisted(TargetPlayer) then return end

        local Character = Players.LocalPlayer.Character
        local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
        local RootPart = Humanoid and Humanoid.RootPart

        local TCharacter = TargetPlayer.Character
        local TRootPart = TCharacter and TCharacter:FindFirstChild("HumanoidRootPart")

        if not Character or not Humanoid or not RootPart or not TRootPart then return end

        -- **Forceful Fling Function**
        local function Fling(BasePart)
            local StartTime = tick()
            local FlingTime = 1.5 -- Time before stopping
            local Angle = 0

            repeat
                if RootPart and TRootPart then
                    Angle = Angle + 200 -- Faster rotation
                    RootPart.CFrame = BasePart.CFrame * CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(Angle), 0, 0)
                    RootPart.Velocity = Vector3.new(1e9, 1e9 * 2, 1e9) -- Extreme force
                    RootPart.RotVelocity = Vector3.new(1e10, 1e10, 1e10) -- More intense spin
                else
                    break
                end
                task.wait()
            until BasePart.Velocity.Magnitude > 1000 or tick() > StartTime + FlingTime
        end

        -- **Make Sure Parts Don't Get Deleted**
        workspace.FallenPartsDestroyHeight = math.huge

        -- **Extreme Force BodyVelocity**
        local BV = Instance.new("BodyVelocity")
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(1e10, 1e10, 1e10) -- Higher force
        BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        Fling(TRootPart)
        BV:Destroy()
    end

    -- Fling all players except whitelisted ones in a loop
    while true do
        for _, target in ipairs(Players:GetPlayers()) do
            if target ~= Players.LocalPlayer and not isWhitelisted(target) then
                StrongFling(target)
            end
        end
        task.wait(0.5) -- **Faster looping**
    end
end)
end


local player = Players.LocalPlayer

local function onCharacterAdded()
    task.wait(1) -- Small delay to allow GUI to load properly
    createGUI()
end

-- Connect the function to respawning
player.CharacterAdded:Connect(onCharacterAdded)

-- Call createGUI() only if the player already has a character (for first spawn)
if player.Character then
    createGUI()
end
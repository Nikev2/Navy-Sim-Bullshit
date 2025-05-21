----Adonis Bypass
print("bypassing adonis")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/refs/heads/main/Source.lua"))()

COREGUI = game:GetService("CoreGui")
PARENT = nil
local Lib = loadstring(game:HttpGet("https://pastebin.com/raw/AEzBp2zj"))()
local UIS = game:GetService("UserInputService")
local plr = game.Players.LocalPlayer
function GoToShip(name)
    local Char = plr.Character
    local name = string.upper(name)
    game:GetService("ReplicatedStorage").ShipSpawns.ShipSpawn:FireServer(name, Char)
end
local plr = game.Players.LocalPlayer
function GetPlane()
    local Planes = workspace.Planes:GetChildren()
    for i, v in pairs(Planes) do
        if v.Important.PilotSeat:FindFirstChild("SeatWeld") then
            local SeatWeld = v.Important.PilotSeat:FindFirstChild("SeatWeld")
            print(SeatWeld.Part1.Parent.Name)
        end
    end
end

function GetPlayerFromSeatWeld(Part1)
    return Part1.Parent
end

PARENT = Lib:MakeGUI(COREGUI, "knmd2o0d", "Navy Sim Fucker")
local ScrollingFrame = Instance.new("ScrollingFrame")
local SpawnShip = Instance.new("TextButton")
local LockShip = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local UnlockShip = Instance.new("TextButton")
local ShipType = Instance.new("TextBox")
local RepairShip = Instance.new("TextButton")
local ShipNameVal = Instance.new("StringValue")
ShipNameVal.Parent = ScrollingFrame
Lib:Dragify(ScrollingFrame)
PARENT.Frame:Destroy()
ScrollingFrame.Parent = PARENT
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Position = UDim2.new(0.561, 0, 0.145, 0)
ScrollingFrame.Size = UDim2.new(0, 216, 0, 361)

function CreateGuiElement(Element, Text, Name, LayoutOrder)
    local X = Instance.new(Element)

    X.Parent = ScrollingFrame
    if LayoutOrder == nil then
    else
        X.LayoutOrder = LayoutOrder
    end

    if Name == nil then
    else
        X.Name = Name
    end
    if Text == nil then
    else
        X.TextColor3 = Color3.fromRGB(0, 0, 0)
        X.TextScaled = true
        X.TextSize = 14.000
        X.TextWrapped = true
        X.Text = Text
        X.Font = Enum.Font.SourceSans
    end
    X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    X.Size = UDim2.new(0, 170, 0, 50)

    return X
end

local ShowPlaneShop = CreateGuiElement("TextButton", "Show Plane Shop", "ShowPlaneShop", 8)
ShowPlaneShop.MouseButton1Click:Connect(
    function()
        local PlaneGUIClicker = game:GetService("Workspace").Islands.PirateSpawn.EssentialWorkers.PlaneShop.Clicker
        fireclickdetector(PlaneGUIClicker)
        print("Success")
    end
)
local FireClickDistance = nil
frame = ScrollingFrame
frame.Draggable = true
frame.Active = true
frame.Selectable = true
SpawnShip.LayoutOrder = 3
SpawnShip.Name = "SpawnShip"
SpawnShip.Parent = ScrollingFrame
SpawnShip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpawnShip.Size = UDim2.new(0, 170, 0, 50)
SpawnShip.Font = Enum.Font.SourceSans
SpawnShip.Text = "Spawn Ship"
SpawnShip.TextColor3 = Color3.fromRGB(0, 0, 0)
SpawnShip.TextScaled = true
SpawnShip.TextSize = 14.000
SpawnShip.TextWrapped = true
LockShip.LayoutOrder = 4
LockShip.Name = "LockShip"
LockShip.Parent = ScrollingFrame
LockShip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LockShip.Size = UDim2.new(0, 170, 0, 50)
LockShip.Font = Enum.Font.SourceSans
LockShip.Text = "Lock Ship"
LockShip.TextColor3 = Color3.fromRGB(0, 0, 0)
LockShip.TextScaled = true
LockShip.TextSize = 14.000
LockShip.TextWrapped = true

ShipName = Instance.new("TextBox")
ShipName.Parent = ScrollingFrame
ShipName.LayoutOrder = 1
ShipName.Name = "ShipName"
ShipName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShipName.Size = UDim2.new(0, 170, 0, 50)
ShipName.Font = Enum.Font.SourceSans
ShipName.Text = "Boat Name Here"
ShipName.TextColor3 = Color3.fromRGB(0, 0, 0)
ShipName.TextScaled = true
ShipName.TextSize = 14.000
ShipName.TextWrapped = true

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UnlockShip.LayoutOrder = 5
UnlockShip.Name = "Unlock Ship"
UnlockShip.Parent = ScrollingFrame
UnlockShip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UnlockShip.Position = UDim2.new(0, 0, 0.284900278, 0)
UnlockShip.Size = UDim2.new(0, 170, 0, 50)
UnlockShip.Font = Enum.Font.SourceSans
UnlockShip.Text = "Unlock Ship"
UnlockShip.TextColor3 = Color3.fromRGB(0, 0, 0)
UnlockShip.TextScaled = true
UnlockShip.TextSize = 14.000
UnlockShip.TextWrapped = true
ShipType.LayoutOrder = 2
ShipType.Name = "ShipType"
ShipType.Parent = ScrollingFrame
ShipType.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShipType.Position = UDim2.new(0, 0, 0.304600835, 0)
ShipType.Size = UDim2.new(0, 170, 0, 50)
ShipType.Font = Enum.Font.SourceSans
ShipType.Text = "Boat Type Here"
ShipType.TextColor3 = Color3.fromRGB(0, 0, 0)
ShipType.TextScaled = true
ShipType.TextSize = 14.000
ShipType.TextWrapped = true
RepairShip.Name = "RepairShip"
RepairShip.Parent = ScrollingFrame
RepairShip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RepairShip.LayoutOrder = 6
RepairShip.Position = UDim2.new(0.0327868834, 0, 0.0425531901, 0)
RepairShip.Size = UDim2.new(0, 170, 0, 50)
RepairShip.Font = Enum.Font.SourceSans
RepairShip.Text = "Repair Ship"
RepairShip.TextColor3 = Color3.fromRGB(0, 0, 0)
RepairShip.TextScaled = true
RepairShip.TextSize = 14.000
RepairShip.TextWrapped = true
function RepairShip1()
    local ShipData = workspace.Ships:FindFirstChild(ShipNameVal.Value):GetDescendants()
    local Plr = game.Players.LocalPlayer
    local b = Plr:FindFirstChild("Backpack")
    local RepairT = b.Repair.Server.Repair
    for i, Ship in pairs(ShipData) do
        if Ship.ClassName == "Part" then
            RepairT:FireServer(Ship)
        elseif Ship.ClassName == "UnionOperation" then
            RepairT:FireServer(Ship)
        elseif Ship.ClassName == "WedgePart" then
            RepairT:FireServer(Ship)
            print("Repaired" .. (Ship.Name))
        elseif Ship.ClassName == "CornerWedgePart" then
            RepairT:FireServer(Ship)
        elseif Ship.ClassName == "MeshPart" then
            RepairT:FireServer(Ship)
        end
    end
end
RepairShip.MouseButton1Click:Connect(
    function()
        RepairShip1()
    end
)
SpawnShip.MouseButton1Click:Connect(
    function()
        ShipNameVal.Value = string.upper(ShipName.Text)
        game:GetService("ReplicatedStorage").Shops.BuyShip:FireServer(
            ShipType.Text,
            workspace.Islands.PirateSpawn.EssentialWorkers.ShipSpawnLocations.Bluewater1,
            workspace.Islands.PirateSpawn.EssentialWorkers.ShipShop.ShopConfig,
            ShipNameVal.Value,
            false
        )
    end
)
LockShip.MouseButton1Click:Connect(
    function()
        local CanLock = workspace.Ships:FindFirstChild(ShipNameVal.Value).Comms.CanLock
        if CanLock.Value == true then
            workspace.Ships:FindFirstChild(ShipNameVal.Value).Comms.Lock:FireServer()
        else
            workspace.Ships:FindFirstChild(ShipNameVal.Value).Comms.Park:FireServer()
        end
    end
)
UnlockShip.MouseButton1Click:Connect(
    function()
        workspace.Ships:FindFirstChild(ShipNameVal.Value).Comms.Unlock:Fire()
    end
)
-- Script generated by TurtleSpy, made by Intrer#0421

local plantC4 = Instance.new("TextButton")
plantC4.LayoutOrder = 6
plantC4.Name = "PlantC4"
plantC4.Parent = ScrollingFrame
plantC4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
plantC4.Size = UDim2.new(0, 170, 0, 50)
plantC4.Font = Enum.Font.SourceSans
plantC4.Text = "PlantC4"
plantC4.TextColor3 = Color3.fromRGB(0, 0, 0)
plantC4.TextScaled = true
plantC4.TextSize = 14.000
plantC4.TextWrapped = true
plantC4.MouseButton1Click:Connect(
    function()
        local C4promt = workspace.Islands.Bank.EssentialWorkers.C4.Base.Prompt
        local VaultDestroyed = game:GetService("Workspace").Islands.Bank.EssentialWorkers.IsVaultDoorDestroyed
        local C4Planted = game:GetService("Workspace").Islands.Bank.EssentialWorkers.IsC4Planted
        fireproximityprompt(C4promt, 20)
    end
)
local collectgold = Instance.new("TextButton")
collectgold.LayoutOrder = 7
collectgold.Name = "CollectGold"
collectgold.Parent = ScrollingFrame
collectgold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
collectgold.Size = UDim2.new(0, 170, 0, 50)
collectgold.Font = Enum.Font.SourceSans
collectgold.Text = "CollectGold"
collectgold.TextColor3 = Color3.fromRGB(0, 0, 0)
collectgold.TextScaled = true
collectgold.TextSize = 14.000
collectgold.TextWrapped = true
collectgold.MouseButton1Click:Connect(
    function()
        local VaultDestroyed = game:GetService("Workspace").Islands.Bank.EssentialWorkers.IsVaultDoorDestroyed
        local Goldbars = game:GetService("Workspace").Islands.Bank.EssentialWorkers.GoldBars
        if VaultDestroyed.Value == true then
            for i, v in pairs(Goldbars:GetChildren()) do
                fireclickdetector(v.Clicker)
            end
        end
    end
)

local RaidA52 = CreateGuiElement("TextButton", "Raid A52", "RaidA52", 9)
RaidA52.MouseButton1Click:Connect(
    function()
        local Prompts = {}
        local Area52 = game:GetService("Workspace").Islands["Area 52"].EssentialWorkers
        for i, v in pairs(Area52:GetDescendants()) do
            if v.Name == "Prompt" then
                if v.Parent.Parent.Active.Value == false then
                    print(v.Name)
                    fireproximityprompt(v, 200)
                    print("planted")
                end
            end
        end
    end
)
local Plane = nil
local PlayerName = plr.Name
function RegisterPlane()
    for i, k in pairs(game:GetService("Workspace").Planes:GetDescendants()) do
        if k.Name == "SeatWeld" then
            local Char = GetPlayerFromSeatWeld(k.Part1)
            if Char.Name == PlayerName then
                Plane = k.Parent.Parent.Parent
                print(Plane)
            end
        end
    end
end

local plr = game.Players.LocalPlayer
function FakeScript()
    local UIS = game:GetService("UserInputService")
    local BackSlash = Enum.KeyCode.BackSlash
    local function BS()
        return UIS:IsKeyDown(BackSlash)
    end
    local function Eq()
        return UIS:IsKeyDown(Enum.KeyCode.Equals)
    end
    UIS.InputBegan:Connect(
        function(input, gameProcessedEvent)
            if BS() then
                print(ScrollingFrame.Visible)
                if ScrollingFrame.Visible == true then
                    ScrollingFrame.Visible = false
                elseif ScrollingFrame.Visible == false then
                    ScrollingFrame.Visible = true
                end
            end

            if Eq() then
                local Plr = game.Players.LocalPlayer
                local b = Plr:FindFirstChild("Backpack")
                local RepairT = b.Repair.Server.Repair
                print("Equals")
                RegisterPlane()
                for i, plane in pairs(Plane:GetDescendants()) do
                    if plane.ClassName == "Part" then
                        RepairT:FireServer(plane)
                        print("Repaired " .. (plane.Name))
                    elseif plane.ClassName == "UnionOperation" then
                        RepairT:FireServer(plane)
                        print("Repaired " .. (plane.Name))
                    elseif plane.ClassName == "WedgePart" then
                        RepairT:FireServer(plane)
                        print("Repaired" .. (plane.Name))
                    elseif plane.ClassName == "CornerWedgePart" then
                        RepairT:FireServer(plane)
                        print("Repaired" .. (plane.Name))
                    elseif plane.ClassName == "MeshPart" then
                        RepairT:FireServer(plane)
                        print("Repaired" .. (plane.Name))
                    end
                end
            end
        end
    )
end
FakeScript()
local KillAllPlaneEngines = CreateGuiElement("TextButton", "Kill All Planes", "KillAllPlanes", 10)

KillAllPlaneEngines.MouseButton1Click:Connect(
    function()
        local Planes = workspace.Planes:GetDescendants()

        for i, v in pairs(Planes) do
            if v.Name == "SetEngine" then
                v:FireServer(false)
                print("Fired " .. (v.Name))
                print(v.Parent.Parent)
            end
        end
    end
)

function ConstantRepair(BoolVal)
    repeat
        wait(0.1)
        RepairShip1()
    until BoolVal.Value == false
end

local FireDistance = CreateGuiElement("TextButton", "Fire Click Distance", "FCD", 11)

local IndustructibleShip = CreateGuiElement("Frame", nil, "Frame", 11)
IndustructibleShip.Parent = ScrollingFrame

local Bool1 = Instance.new("BoolValue", IndustructibleShip)
Bool1.Value = false
local T = Instance.new("TextButton")
T.Parent = IndustructibleShip
T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
T.Position = UDim2.new(0.482352942, 0, 0, 0)
T.Size = UDim2.new(0, 88, 0, 50)
T.Font = Enum.Font.SourceSans
T.Text = "True"
T.TextColor3 = Color3.fromRGB(0, 0, 0)
T.TextSize = 14.000
local F = Instance.new("TextButton")
F.Parent = IndustructibleShip
F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
F.Position = UDim2.new(0.482352942, 0, 0, 0)
F.Size = UDim2.new(0, 88, 0, 50)
F.Font = Enum.Font.SourceSans
F.Text = "False"
F.TextColor3 = Color3.fromRGB(0, 0, 0)
F.TextSize = 14.000
local RTT = Instance.new("UIListLayout")
RTT.Parent = IndustructibleShip
RTT.FillDirection = Enum.FillDirection.Horizontal
T.MouseButton1Click:Connect(
    function()
        T.BackgroundColor = BrickColor.Green()
        F.BackgroundColor = BrickColor.White()
        Bool1.Value = true
        ConstantRepair(Bool1)
    end
)
F.MouseButton1Click:Connect(
    function()
        F.BackgroundColor = BrickColor.Green()
        T.BackgroundColor = BrickColor.White()
        Bool1.Value = false
    end
)

function TeleportToPiratesBase()
    game:GetService("ReplicatedStorage").Missions.AirfieldTeleportPirates:FireServer(
        game:GetService("Players").LocalPlayer
    )
end
local TeleportToPBase = CreateGuiElement("TextButton", "Teleport To Pirate Base", "Teleport To Pirate Base", 12)
TeleportToPBase.MouseButton1Click:Connect(TeleportToPiratesBase)
local goToShip = CreateGuiElement("TextButton", "Go To Ship", "Go To Ship", 13)
goToShip.MouseButton1Click:Connect(
    function()
        GoToShip(ShipNameVal.Value)
    end
)
function GetPlane()
    local plr = game.Players.LocalPlayer
    local Planes = workspace.Planes:GetChildren()
    for i, v in pairs(Planes) do
        if v.Important:FindFirstChild("PilotSeat") then
            local PilotSeat = v.Important:FindFirstChild("PilotSeat")
            if PilotSeat:FindFirstChild("SeatWeld") then
                local SeatWeld = PilotSeat:FindFirstChild("SeatWeld")
                if SeatWeld.Part1.Parent.Name == plr.Name then
                    return SeatWeld.Parent.Parent.Parent
                end
            end
        end
    end
end
function RepairPlaneFunc()
    local PlaneParts = GetPlane():GetDescendants()
    local Plr = game.Players.LocalPlayer
    local b = Plr:FindFirstChild("Backpack")
    local RepairT = b.Repair.Server.Repair
    for i, plane in pairs(PlaneParts) do
        if plane.ClassName == "Part" then
            RepairT:FireServer(plane)
        elseif plane.ClassName == "UnionOperation" then
            RepairT:FireServer(plane)
        elseif plane.ClassName == "WedgePart" then
            RepairT:FireServer(plane)
        elseif plane.ClassName == "CornerWedgePart" then
            RepairT:FireServer(plane)
        elseif plane.ClassName == "MeshPart" then
            RepairT:FireServer(plane)
        end
    end
end
local RepairPlane = CreateGuiElement("TextButton", "Repair Plane", "Repair Plane", 14)
RepairPlane.MouseButton1Click:Connect(RepairPlaneFunc)
UIS.InputBegan:Connect(
    function(Input, IsChatting)
        if Input.KeyCode == Enum.KeyCode.J then
            RepairPlaneFunc()
        end
    end
)
local Breakout = CreateGuiElement("TextButton", "Breakout", "Breakout", 15)
Breakout.MouseButton1Click:Connect(
    function()
        game:GetService("ReplicatedStorage").Jail.Breakout:FireServer()
    end
)

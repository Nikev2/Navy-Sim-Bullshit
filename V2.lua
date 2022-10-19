-----IN PROGRESS!!!------
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))()
local CoreGui = game.CoreGui
local name = "Navy Sim Bullshit"
local plr = game.Players.LocalPlayer
local Char= plr.Character
local Ships = workspace.Ships
function MakeValue(t)
    local Format = string.sub(t,1,1):upper()..string.sub(t,2)
    return Instance.new(Format.."Value",CoreGui[name])
end    
if CoreGui:FindFirstChild(name) then
    CoreGui[name]:Destroy()
    Gui = lib.new(name)
    
else
    Gui = lib.new(name)
end
local ShipData = Gui:addPage("Ship Data")
local ShipSpawner = ShipData:addSection("Ship Spawner")
local ShipNameVal = MakeValue("string")
local ShipName = ShipSpawner:addTextbox("Ship Name", "name", function(text, fl) 
    if fl then
      ShipNameVal.Value = text  
    end    
end)
local ShipListTable = {"LandingCraft", "Gunboat", "PatrolSpeedboat", "Corvette", "TorpedoBoat", "Cutter", "Frigate", "Destroyer", "Cruiser"}
local ShipTypeVal = MakeValue("String")
local ShipType = ShipSpawner:addDropdown("Ship Type", ShipListTable, function(selected) 
    ShipTypeVal.Value = selected
end)
function GetShipSpawnLocation()
    if plr.Team.Name == "Pirates" then
        print("Is a pirate")
        return {game.Workspace.Islands.PirateSpawn.EssentialWorkers.ShipSpawnLocations.Bluewater1,workspace.Islands.PirateSpawn.EssentialWorkers.ShipShop.ShopConfig}
    elseif plr.Team.Name == "Prisoners" then
        return {game.Workspace.Islands.SEASpawn.EssentialWorkers.ShipSpawnLocations.Bluewater1, workspace.Islands.SEASpawn.EssentialWorkers.ShipShop.ShopConfig}
    elseif  plr.Team.Name == "SEA Military" then 
         return {game.Workspace.Islands.SEASpawn.EssentialWorkers.ShipSpawnLocations.Bluewater1, workspace.Islands.SEASpawn.EssentialWorkers.ShipShop.ShopConfig}
    end    
end    
local SpawnShip = ShipSpawner:addButton("Spawn Ship", function() 
    local BuyShip = game:GetService("ReplicatedStorage").Shops.BuyShip
    local Location = GetShipSpawnLocation()
 BuyShip:FireServer(ShipTypeVal.Value,Location[1],Location[2], ShipNameVal.Value, false)

end)
local ShipTeleports = ShipData:addSection("Ship Teleports")
local TeleportToSelectedShipVal = MakeValue("String")
function UpdateShipTable()
    local t = {}
for i,v in pairs(Ships:GetChildren()) do
    table.insert(t,v.Name)
end
    return t
end
local ShipTeleportList = ShipTeleports:addDropdown("Ship List", UpdateShipTable(),function(text)
    TeleportToSelectedShipVal.Value = text
end)
Ships.ChildAdded:Connect(function() 
ShipTeleports:updateDropdown(ShipTeleportList,"Ship List", UpdateShipTable())    
end) 
Ships.ChildRemoved:Connect(function() 
ShipTeleports:updateDropdown(ShipTeleportList,"Ship List", UpdateShipTable())    
end) 
ShipTeleports:addButton("Teleport To Ship", function() 
    local plr = game.Players.LocalPlayer
    local Char= plr.Character
    print("Clicked")
    game:GetService("ReplicatedStorage").ShipSpawns.ShipSpawn:FireServer(TeleportToSelectedShipVal.Value, Char) 
end)
ShipTeleports:addButton("Teleport To Your Ship", function() 
    local plr = game.Players.LocalPlayer
    local Char= plr.Character
    game:GetService("ReplicatedStorage").ShipSpawns.ShipSpawn:FireServer(ShipNameVal.Value,Char) 
    print("Clicked")
end)
function RepairShip(name)
    local shipstuff = workspace.Ships:FindFirstChild(name):GetDescendants()
	local Plr = game.Players.LocalPlayer
	local b = Plr:FindFirstChild("Backpack")
	local RepairT = b.Repair.Server.Repair
	for i, Ship in pairs(shipstuff) do
		if Ship.ClassName == "Part" then
			RepairT:FireServer(Ship)
			
			 elseif Ship.ClassName == "UnionOperation" then
			 RepairT:FireServer(Ship)
			
			
			elseif Ship.ClassName == "WedgePart" then
			 RepairT:FireServer(Ship)
			print("Repaired"..(Ship.Name))
			
			elseif Ship.ClassName == "CornerWedgePart" then
			 RepairT:FireServer(Ship)
			
			
			elseif Ship.ClassName == "MeshPart" then
			RepairT:FireServer(Ship)
			
			
		  
		end
		 
		end
end   
local PersonalShip = ShipData:addSection("Personal Ship")
PersonalShip:addButton("Repair Ship", function() 
    RepairShip(ShipNameVal.Value)    
end)
PersonalShip:addButton("Repair Ship Key", Enum.KeyCode.KeypadOne, function() 
    RepairShip(ShipNameVal.Value)   
end)
local PersonalShipFunctions = PersonalShip
local LockPShip = PersonalShipFunctions:addButton("Lock Ship", function() 
    local Ship = workspace.Ships:FindFirstChild(ShipNameVal.Value)
    local CanLock = Comms.CanLock
    local Lock = Ship.Comms.Lock
    local Park = Ship.Comms.Park
    if CanLock.Value == true then
       Lock:FireServer()
    elseif CanLock.Value == false then
       Park:FireServer()
       Gui:Notify("Error", "Your ship could not be locked its either in a spawn aera or near enemies. It has been parked")
    end   
end)
local ParkPShip = PersonalShipFunctions:addButton("Park Ship", function() 
    local Ship = workspace.Ships:FindFirstChild(ShipNameVal.Value)
    local Park = Ship.Comms.Park
    Park:FireServer()
end)
local Id = MakeValue("Int")
local SongId = PersonalShipFunctions:addTextbox("Radio Id","Id", function(text, fl)
    if fl then
    Id.Value = text
    end
end)
local PlaySongId = PersonalShipFunctions:addButton("Play Radio Id", function()
local Ship = workspace.Ships:FindFirstChild(ShipNameVal.Value)
   local Play = game:GetService("ReplicatedStorage").PlayShipRadio
   Play:FireServer(Id.Value, Ships[ShipNameVal.Value].DriverSeat.Radio)
end)

















































local http=game:GetService("HttpService")
local FileName = "Bullshit.JSON"
local FileData = {GuiToggle = "BackSlash"}
local Encoded = http:JSONEncode(FileData)
if not isfile(FileName) then
    writefile(FileName,Encoded)
    else
    local file = http:JSONDecode(readfile(FileName))
end
function ChangeValueFromFile(name, val)
    local file = readfile(FileName)
    local filedata = http:JSONDecode(file)
    filedata[name] = val
    local NewFileData = http:JSONEncode(filedata)
    delfile(FileName)
    writefile(FileName, NewFileData)
end    
local Settings = Gui:addPage("Settings")
local Keybinds = Settings:addSection("Keybinds")
local f = http:JSONDecode(readfile(FileName))
Keybinds:addKeybind("Gui Toggle", Enum.KeyCode[f.GuiToggle], function() 
Gui:toggle()    
end, 
function(Input) 
    local NewInput = Input.KeyCode.Name
    ChangeValueFromFile("GuiToggle", NewInput)
    Gui:Notify("Saved","Saved Value to file")
end)














































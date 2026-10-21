
--deobf by cimkarta https://discord.gg/S8BQWyjyvN

loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

local LocalPlatform = Instance.new("Part")
LocalPlatform.Name = "TheRevengePlat"
LocalPlatform.Size = Vector3.new(50, 3, 50)
LocalPlatform.Position = Vector3.new(0, 0, 99999)
LocalPlatform.CanCollide = true
LocalPlatform.Locked = true
LocalPlatform.CastShadow = false
LocalPlatform.Color = Color3.fromRGB(50, 50, 50)
LocalPlatform.Material = Enum.Material.SmoothPlastic
LocalPlatform.Parent = workspace

local grid = Instance.new("Texture")
grid.Texture = "http://roblox.com"
grid.Name = "GridTexture"
grid.Face = Enum.NormalId.Top
grid.StudsPerTileU = 10
grid.StudsPerTileV = 10
grid.Transparency = 0.4
grid.Color3 = Color3.new(1, 1, 1)
grid.Parent = LocalPlatform
grid.OffsetStudsU = 0
grid.OffsetStudsV = 0

task.spawn(function()
    local Players = game:GetService('Players')
    local TweenService = game:GetService('TweenService')
    local RunService = game:GetService('RunService')
    local Stats = game:GetService('Stats')
    local plr = Players.LocalPlayer
    
    local gui = plr:WaitForChild('PlayerGui'):WaitForChild('MenuGui')
    local TopRight = gui:WaitForChild('TopRight')
    local CoinsFrame = TopRight:WaitForChild('CoinsFrame')
    local CoinsDisplay = CoinsFrame:WaitForChild('CoinsDisplay')
    local CoinImage = CoinsDisplay:WaitForChild('CoinImage')
    local Coins = CoinsDisplay:WaitForChild('Coins')
    local CoinsButton = CoinsFrame:WaitForChild('CoinsButton')

    for _, v in ipairs(CoinsFrame:GetChildren()) do
        if v:IsA('UICorner') or v:IsA('UIStroke') or v:IsA('UIPadding') or v:IsA('UIGradient') then
            v:Destroy()
        end
    end
    for _, v in ipairs(CoinsDisplay:GetChildren()) do
        if v:IsA('UIListLayout') then
            v:Destroy()
        end
    end

    local blur = Instance.new('ImageLabel')
    blur.Name = 'GlassBlur'
    blur.BackgroundTransparency = 1
    blur.Size = UDim2.new(1, 0, 1, 0)
    blur.Position = UDim2.new(0, 0, 0, 0)
    blur.Image = 'rbxassetid://8992230677'
    blur.ImageTransparency = 0.88
    blur.ScaleType = Enum.ScaleType.Stretch
    blur.ZIndex = CoinsFrame.ZIndex - 1
    blur.Parent = CoinsFrame
    
    CoinsFrame.BackgroundColor3 = Color3.fromRGB(12, 14, 18)
    CoinsFrame.BackgroundTransparency = 0.35
    CoinsFrame.AutomaticSize = Enum.AutomaticSize.X
    CoinsFrame.Size = UDim2.new(0, 0, 0, 74)
    
    local corner = Instance.new('UICorner')
    corner.CornerRadius = UDim.new(0, 16) 
    corner.Parent = CoinsFrame
    
    local padding = Instance.new('UIPadding')
    padding.PaddingLeft = UDim.new(0, 15)
    padding.PaddingRight = UDim.new(0, 15)
    padding.Parent = CoinsFrame
    
    local stroke = Instance.new('UIStroke')
    stroke.Thickness = 1
    stroke.Transparency = 0.6
    stroke.Color = Color3.fromRGB(135, 206, 235)
    stroke.Parent = CoinsFrame
    
    local borderGrad = Instance.new('UIGradient')
    borderGrad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(135, 206, 235)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 206, 235)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(135, 206, 235)),
    })
    borderGrad.Parent = stroke

    task.spawn(function()
        while CoinsFrame and CoinsFrame.Parent do
            for i = 0, 360, 2 do
                if not borderGrad or not borderGrad.Parent then break end
                borderGrad.Rotation = i
                task.wait(0.01)
            end
        end
    end)
    
    TweenService:Create(CoinsFrame, TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {BackgroundTransparency = 0.25}):Play()

    CoinsDisplay.BackgroundTransparency = 1
    CoinsDisplay.AutomaticSize = Enum.AutomaticSize.X
    CoinsDisplay.Size = UDim2.new(0, 0, 1, 0)

    local layout = Instance.new('UIListLayout')
    layout.FillDirection = Enum.FillDirection.Horizontal
    layout.VerticalAlignment = Enum.VerticalAlignment.Center
    layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
    layout.Padding = UDim.new(0, 12)
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Parent = CoinsDisplay
    
    CoinImage.LayoutOrder = 1
    CoinImage.BackgroundTransparency = 1
    CoinImage.Size = UDim2.new(0, 50, 0, 50)
    CoinImage.ImageColor3 = Color3.fromRGB(135, 206, 235)
    CoinImage.AnchorPoint = Vector2.new(0, 0.5)
    CoinImage.Position = UDim2.new(0, 0, 0.5, 0)

    task.defer(function()
        CoinImage.Image = 'rbxassetid://7355674024'
    end)
    
    TweenService:Create(CoinImage, TweenInfo.new(2.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
        Position = CoinImage.Position + UDim2.new(0, 0, 0, -2),
    }):Play()

    Coins.LayoutOrder = 2
    Coins.BackgroundTransparency = 1
    Coins.AutomaticSize = Enum.AutomaticSize.X
    Coins.TextXAlignment = Enum.TextXAlignment.Left
    Coins.TextYAlignment = Enum.TextYAlignment.Center
    Coins.Font = Enum.Font.GothamBold
    Coins.TextSize = 22 
    Coins.Text = tostring(Coins.Text)

    local textGrad = Instance.new('UIGradient')
    textGrad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(135, 206, 235)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 206, 235)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(135, 206, 235)),
    })
    textGrad.Parent = Coins

    task.spawn(function()
        while Coins and Coins.Parent do
            for i = 0, 360, 4 do
                if not textGrad or not textGrad.Parent then break end
                textGrad.Rotation = i
                task.wait(0.01)
            end
        end
    end)

    local statsContainer = Instance.new('Frame')
    statsContainer.Name = 'StatsContainer'
    statsContainer.LayoutOrder = 3
    statsContainer.BackgroundTransparency = 1
    statsContainer.AutomaticSize = Enum.AutomaticSize.X
    statsContainer.Size = UDim2.new(0, 0, 0, 45) 
    statsContainer.Parent = CoinsDisplay

    local verticalLayout = Instance.new('UIListLayout')
    verticalLayout.FillDirection = Enum.FillDirection.Vertical
    verticalLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    verticalLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
    verticalLayout.Padding = UDim.new(0, 2) 
    verticalLayout.Parent = statsContainer

    local fpsLabel = Instance.new('TextLabel')
    fpsLabel.Name = 'FpsDisplay'
    fpsLabel.BackgroundTransparency = 1
    fpsLabel.AutomaticSize = Enum.AutomaticSize.X
    fpsLabel.Size = UDim2.new(0, 0, 0, 18)
    fpsLabel.Font = Enum.Font.GothamBold
    fpsLabel.TextSize = 15
    fpsLabel.TextColor3 = Color3.fromRGB(135, 206, 235)
    fpsLabel.TextXAlignment = Enum.TextXAlignment.Left
    fpsLabel.Text = '60 fps'
    fpsLabel.Parent = statsContainer

    local pingLabel = Instance.new('TextLabel')
    pingLabel.Name = 'PingDisplay'
    pingLabel.BackgroundTransparency = 1
    pingLabel.AutomaticSize = Enum.AutomaticSize.X
    pingLabel.Size = UDim2.new(0, 0, 0, 18)
    pingLabel.Font = Enum.Font.GothamBold
    pingLabel.TextSize = 15
    pingLabel.TextColor3 = Color3.fromRGB(135, 206, 235)
    pingLabel.TextXAlignment = Enum.TextXAlignment.Left
    pingLabel.Text = '0 ms'
    pingLabel.Parent = statsContainer

    local FrameTimer = tick()
    local FrameCounter = 0
    local FPS = 60

    local StatsConnection
    StatsConnection = RunService.RenderStepped:Connect(function()
        if not statsContainer or not statsContainer.Parent then
            if StatsConnection then StatsConnection:Disconnect() end
            return
        end
        
        FrameCounter = FrameCounter + 1
        if (tick() - FrameTimer) >= 1 then
            FPS = FrameCounter
            FrameTimer = tick()
            FrameCounter = 0
        end

        local pingValue = 0
        pcall(function()
            pingValue = math.floor(Stats.Network.ServerStatsItem['Data Ping']:GetValue())
        end)

        fpsLabel.Text = string.format('%s fps', math.floor(FPS))
        pingLabel.Text = string.format('%s ms', pingValue)
    end)

    CoinsButton.BackgroundTransparency = 1
    CoinsButton.Text = ''
    CoinsButton.Size = UDim2.new(1, 0, 1, 0)
    CoinsButton.ZIndex = CoinsFrame.ZIndex + 5

    local function localTween(obj, ti, props)
        if obj and obj.Parent then
            TweenService:Create(obj, ti, props):Play()
        end
    end

    CoinsButton.MouseEnter:Connect(function()
        localTween(stroke, TweenInfo.new(0.2), {Transparency = 0.15})
    end)
    CoinsButton.MouseLeave:Connect(function()
        localTween(stroke, TweenInfo.new(0.2), {Transparency = 0.6})
    end)
    CoinsButton.MouseButton1Down:Connect(function()
        localTween(CoinsFrame, TweenInfo.new(0.08), {Size = UDim2.new(0, 0, 0, 71)})
    end)
    CoinsButton.MouseButton1Up:Connect(function()
        localTween(CoinsFrame, TweenInfo.new(0.2, Enum.EasingStyle.Back), {Size = UDim2.new(0, 0, 0, 74)})
    end)
end)

local repo = "https://raw.githubusercontent.com/white558/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

local function safeGetCustomAsset(path)
    if getcustomasset then return getcustomasset(path)
    elseif getsynasset then return getsynasset(path)
    elseif syn and syn.get_custom_asset then return syn.get_custom_asset(path)
    else return nil, "getcustomasset не поддерживается" end
end

local function safeMakeFolder(path)
    if isfolder and not isfolder(path) then makefolder(path)
    elseif makefolder then pcall(makefolder, path) end
end

local pendingUrl = ""

local function getScreenGui()
    if Library.ScreenGui and Library.ScreenGui.Parent then return Library.ScreenGui end
    local playerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui", 5)
    if not playerGui then return nil end
    for _, gui in ipairs(playerGui:GetChildren()) do
        if gui:IsA("ScreenGui") then
            for _, child in ipairs(gui:GetChildren()) do
                if child:IsA("TextButton") and child.Name == "Main" then return gui end
            end
        end
    end
    return nil
end

local function applyBackground(assetId)
    local screenGui = getScreenGui()
    if not screenGui then Library:Notify("Ошибка: ScreenGui не найден") return false end
    local count = 0
    for _, mainFrame in ipairs(screenGui:GetChildren()) do
        if mainFrame:IsA("TextButton") and mainFrame.Name == "Main" then
            for _, child in ipairs(mainFrame:GetChildren()) do
                if child:IsA("ImageLabel") and child.Name == "CustomBackground" then child:Destroy() end
            end
            local bg = Instance.new("ImageLabel")
                    bg.Name = "CustomBackground"
                    bg.Image = assetId
                    bg.Position = UDim2.fromScale(0, 0)
                    bg.Size = UDim2.fromScale(1, 1)
                    bg.ScaleType = Enum.ScaleType.Stretch
                    bg.ZIndex = 999
                    bg.BackgroundTransparency = 1
                    bg.ImageTransparency = 0.7

                    local corner = Instance.new("UICorner")
                    local existingCorner = mainFrame:FindFirstChildOfClass("UICorner")
                        corner.CornerRadius = existingCorner and existingCorner.CornerRadius or UDim.new(0, 10)
                        corner.Parent = bg
                    bg.Parent = mainFrame
            count = count + 1
        end
    end
    return count > 0
end

local function removeBackground()
    local screenGui = getScreenGui()
    if not screenGui then return end
    for _, mainFrame in ipairs(screenGui:GetChildren()) do
        if mainFrame:IsA("TextButton") and mainFrame.Name == "Main" then
            for _, child in ipairs(mainFrame:GetChildren()) do
                if child:IsA("ImageLabel") and child.Name == "CustomBackground" then child:Destroy() end
            end
        end
    end
end

local DraggableLabel = Library:AddDraggableLabel("The Revenge")
DraggableLabel:SetVisible(false)
 
local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;
 
local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;
 
    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;
 
    DraggableLabel:SetText(('The Revenge v2.7 | %s fps | %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);

local Options = Library.Options
local Toggles = Library.Toggles


local Stats = game:GetService("Stats")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local targetNotifyConnections = {}

local Loading = Library:CreateLoading({
    Title = "The Revenge",
    Icon = 7355674024,
    TotalSteps = 4
})

Loading:SetMessage("Initializing...")
Loading:SetDescription("Waiting for game to load...")
task.wait(1)
 
Loading:SetCurrentStep(1)
Loading:SetDescription("Loading configuration...")
task.wait(1)

Loading:SetCurrentStep(2)
Loading:ShowSidebarPage(true)
Loading.Sidebar:AddLabel("User: " .. game.Players.LocalPlayer.Name)
Loading.Sidebar:AddLabel("Game: Fling Things And People")
Loading.Sidebar:AddLabel("Script Version: v2.7")
Loading.Sidebar:AddLabel("Premium Version: Active")
task.wait(1)
 
Loading:SetCurrentStep(3)
Loading:SetDescription("Ready.")
task.wait(1)
 
Loading:SetCurrentStep(4)
Loading:Continue()
local Window = Library:CreateWindow({
    Title = "<b>The Revenge</b>",
    Size = UDim2.fromOffset(735, 635),
    Icon = "7355674024",
    NotifySide = "Right",
    ShowCustomCursor = true,
	EnableCompacting = true,
	SidebarCompacted = true,
	CornerRadius = 30,
	CornerElements = false
})

ThemeManager:SetLibrary(Library) 
ThemeManager:SetDefaultTheme({ 
    BackgroundColor = Color3.fromRGB(0, 0, 0),
    MainColor = Color3.fromRGB(0, 0, 0),
    AccentColor = Color3.fromRGB(234, 234, 234), 
    OutlineColor = Color3.fromRGB(40, 40, 40),
    FontColor = Color3.fromRGB(226, 226, 226),
    FontFace = "BuilderSans", 
})

local Tabs = {
    Information = Window:AddTab("Information", "book-open", "Information script"),
    Player = Window:AddTab("Player", "user", "Character Movement"),
    Defence = Window:AddTab("Defense", "shield", "Anti Functions"),
    Target = Window:AddTab("Target", "swords", "Target Features"),
    Blobman = Window:AddTab("Blobman Functions", "brain", "Blobman Features"),
    Grabs = Window:AddTab("Grabs", "hand", "Advanced Grab Features"),
    Anchor = Window:AddTab("Anchor", "anchor", "Anchor and object control toggles"),
    Teleport = Window:AddTab("Teleport", "map-pin", "Travel and Farming"),
    Visuals = Window:AddTab("Visuals", "eye", "Visual Features"),
    Server = Window:AddTab("Server", "server", "Server Features"),
    Keybinds = Window:AddTab("Keybinds", "keyboard", "Keybind Features"),
    Miscs = Window:AddTab("Miscs", "palette", "Misc Features"),
    Fun = Window:AddTab("Fun", "smile", "Fun Features"),
    UISettings = Window:AddTab("UI Settings", "settings", "Main Settings"),
}

local fullText = "The Revenge v2.7 My revenge has just begun. | FTAP"
local delayTime = 0.20
local holdTime = 2.0

task.spawn(function()
    while true do
        for i = 1, #fullText do
            local currentText = string.sub(fullText, 1, i)
            Window:SetFooter(currentText)
            task.wait(delayTime)
        end
        
        task.wait(holdTime)
        
        for i = #fullText, 0, -1 do
            local currentText = string.sub(fullText, 1, i)
            Window:SetFooter(currentText)
            task.wait(delayTime)
        end
        
        task.wait(1.0)
    end
end)

_G.ShurikenAntiKick = false
_G.NewPlotAntiKick = false
_G.DestroyBarriersActive = false
_G.BarriersDestroyed = false
_G.AutoSitBlobZ = false
_G.FreezeBlobZ = false
_G.AntiInputLag = false
_G.AutoAttacker = false
_G.CounterMode = "Fling"
_G.GucciBusy = false

local connections = {}
local antiGrabProc = false
local AGWalk = false
local AGConnections = {}
local ragdollLoopD = false
local kickNotifyConnection = nil
local packetLagTask = nil
local loopKillTask = nil
local ownershipKickTask = nil
local ownershipRagdollTask = nil
local snowballRagdollTask = nil
local loopKickBlobTask = nil
local lagLineTask = nil
local antiOwnershipTask = nil
local antiExplosionConnection = nil
local antiBurnConnection = nil
local tpConnection = nil
local antiAntiKickTask = nil
local antiAntiLagTask = nil
local destroyGucciTask = nil
local jerkOffAnimTrack = nil
local platformTPActive = false
local platformTPKey = Enum.KeyCode.X
local platformTPConnection = nil
local platformPart = nil
local oldPlatformPos = nil
local traceBeam = nil
local traceConnection = nil
local killDodgeTask = nil
local flyingResetConnection = nil
local antiRagBlobConnections = {}
local jerkOffKey = Enum.KeyCode.Q
local bangKey = Enum.KeyCode.B


local packetLagNotifyEnabled = false
local lastLagSource = false
local packetLagActive = false
local loopKillActive = false
local ownershipKickActive = false
local ownershipKickOffsetX = 0
local ownershipKickOffsetY = 0
local ownershipKickOffsetZ = 0
local ownershipRagdollActive = false
local snowballRagdollActive = false
local loopKickBlobActive = false
local loopKickSpinGrabBlobActive = false
local loopKickSpinGrabTask = nil
local lagLineActive = false
local LagServer = false
local LinesCount = 250
local antiOwnershipActive = false
local loopTPActive = false
local antiExplosionActive = false
local antiBurnActive = false
local antiVoidActive = false
local tpEnabled = false
local slideTeleportBusy = false
local rabbitModeEnabled = true
local antiAntiKickActive = false
local antiAntiLagEnabled = false
local antiLagEnabled = false
local antiLagType = "Default"
local lastAntiLagLaggerNotify = nil
local autoAntiLagEnabled = false
local antiLagFpsThreshold = 15
local autoAntiLagApplied = false
local CreateGrabEvent = ReplicatedStorage:WaitForChild("GrabEvents"):WaitForChild("CreateGrabLine")
local autoResetEnabled = false
local paintPartsBackup = {}
local removeAntiKickAuraActive = false
local removeAntiKickRadius = 15
local useWhitelistRemoveAntiKick = true
local destroyGucciActive = false
local gucciRunId = 0
local bringOwnershipActive = false
local bringOwnershipTask = nil
local ownershipKickGrabEnabled = false
local ownershipKickGrabOffsetX = 0
local ownershipKickGrabOffsetY = 0
local ownershipKickGrabOffsetZ = 0
local ownershipKickSession = 0
local playJerkOffActive = false
local traceEnabled = false
local traceColor = Color3.fromRGB(255, 0, 0)
local antiBananaSitActive = false
local killDodgeActive = false
local flyingResetActive = false
local antiRagBlobActive = false

local function deleteAllPaintParts()
    for _, obj in ipairs(Workspace:GetDescendants()) do
        if obj:IsA("BasePart") and obj.Name == "PaintPlayerPart" then
            local clone = obj:Clone()
            clone.Archivable = true
            paintPartsBackup[obj:GetDebugId()] = { clone = clone, parent = obj.Parent }
            obj:Destroy()
        end
    end
end

local function restorePaintParts()
    for _, data in pairs(paintPartsBackup) do
        if data.clone and data.parent then
            data.clone.Parent = data.parent
        end
    end
    paintPartsBackup = {}
end

local function watchNewPaintParts()
    table.insert(connections, Workspace.DescendantAdded:Connect(function(obj)
        if obj:IsA("BasePart") and obj.Name == "PaintPlayerPart" then
            task.defer(function()
                if obj and obj.Parent then
                    local clone = obj:Clone()
                    clone.Archivable = true
                    paintPartsBackup[obj:GetDebugId()] = { clone = clone, parent = obj.Parent }
                    obj:Destroy()
                end
            end)
        end
    end))
end

local function disconnectWatchers()
    for _, conn in ipairs(connections) do
        if conn.Connected then conn:Disconnect() end
    end
    connections = {}
end

local function setTouchQuery(state)
    local char = Workspace:FindFirstChild(LocalPlayer.Name)
    if not char then return end
    for _, v in ipairs(char:GetChildren()) do
        if v:IsA("Part") or v:IsA("BasePart") then
            v.CanTouch = state
            v.CanQuery = state
        end
    end
end

local function notify(title, message, duration)
    Library:Notify({
        Title = title or "The Revenge",
        Description = message or "",
        Time = duration or 5,
    })
end

local function FWC(obj, name)
    return obj:WaitForChild(name)
end

local function Disc(name)
    if AGConnections[name] then
        AGConnections[name]:Disconnect()
        AGConnections[name] = nil
    end
end

local function toy_spawn(name, cframe, vector)
    local args = { name, cframe, vector }
    ReplicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer(unpack(args))
    local folder = Workspace:WaitForChild(LocalPlayer.Name .. "SpawnedInToys", 5)
    if folder then
        return folder:WaitForChild(name, 5)
    end
    return nil
end

local function grab(hitbox)
    if hitbox and hitbox.Parent then
        ReplicatedStorage.CharacterEvents.Grab:FireServer(hitbox)
    end
end

local function getClosestPlayer(pos)
    if not pos then return nil end
    local closestPlayer = nil
    local minDistance = math.huge
    
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character then
            local hrp = player.Character:FindFirstChild("HumanoidRootPart")
            if hrp then
                local distance = (hrp.Position - pos).Magnitude
                if distance < minDistance then
                    minDistance = distance
                    closestPlayer = player
                end
            end
        end
    end
    return closestPlayer
end

local function setWaterWalk(state)
    local workspaceMap = workspace:FindFirstChild("Map")
    if workspaceMap then
        local alwaysHere = workspaceMap:FindFirstChild("AlwaysHereTweenedObjects")
        if alwaysHere then
            local ocean = alwaysHere:FindFirstChild("Ocean")
            if ocean then
                local object = ocean:FindFirstChild("Object")
                if object then
                    local objectModel = object:FindFirstChild("ObjectModel")
                    if objectModel then
                        for _, child in pairs(objectModel:GetChildren()) do
                            if child:IsA("BasePart") then
                                child.CanCollide = state
                            end
                        end
                    end
                end
            end
        end
    end
end

local function IsTarget(obj)
    if not obj:IsA("BasePart") then return false end
    for _, name in ipairs(targetNames) do
        if string.lower(obj.Name) == string.lower(name) then
            return true
        end
    end
    return false
end

local function AutoSitLoop()
    while _G.AutoSitBlobZ do
        local plr = game.Players.LocalPlayer
        local char = plr.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        local hum = char and char:FindFirstChild("Humanoid")
        if not hrp or not hum then 
            task.wait(1)
            continue 
        end
        if hum.SeatPart then
            task.wait(0.5)
            continue
        end
        local folderName = plr.Name .. "SpawnedInToys"
        local folder = workspace:FindFirstChild(folderName)
        local blob = folder and folder:FindFirstChild("CreatureBlobman")
        if not blob then
            task.spawn(function()
                pcall(function()
                    game.ReplicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer("CreatureBlobman", hrp.CFrame, Vector3.zero)
                end)
            end)
            if not folder then
                folder = workspace:WaitForChild(folderName, 5)
            end
            if folder then
                blob = folder:WaitForChild("CreatureBlobman", 5)
            end
        end
        if blob then
            local seat = blob:WaitForChild("VehicleSeat", 5)
            if seat then
                local t = tick()
                repeat
                    if not hum.SeatPart then
                        hrp.CFrame = seat.CFrame + Vector3.new(0, 1, 0)
                        hrp.Velocity = Vector3.zero
                        seat:Sit(hum)
                    end
                    game:GetService("RunService").Heartbeat:Wait()
                until hum.SeatPart == seat or tick() - t > 1.5 or not _G.AutoSitBlobZ
            end
        end
        task.wait(0.5)
    end
end

local function FreezeBlobLoop()
    local savedPos = nil
    local frozenBlob = nil

    while _G.FreezeBlobZ do
        local plr = game.Players.LocalPlayer
        local char = plr.Character
        local hum = char and char:FindFirstChild("Humanoid")
        local seat = hum and hum.SeatPart

        if seat and seat.Parent and seat.Parent.Name == "CreatureBlobman" then
            local blob = seat.Parent
            local blobRoot = blob:FindFirstChild("HumanoidRootPart") or blob.PrimaryPart

            if blobRoot then
                if frozenBlob ~= blob then
                    frozenBlob = blob
                    savedPos = blobRoot.CFrame
                end

                blobRoot.CFrame = savedPos
                blobRoot.Velocity = Vector3.zero
                pcall(function()
                    blobRoot.AssemblyLinearVelocity = Vector3.zero
                    blobRoot.AssemblyAngularVelocity = Vector3.zero
                end)

                local vehicleSeat = blob:FindFirstChild("VehicleSeat")
                if vehicleSeat and vehicleSeat:IsA("VehicleSeat") then
                    vehicleSeat.ThrottleFloat = 0
                    vehicleSeat.SteerFloat = 0
                end
            end

            RunService.Heartbeat:Wait()
        else
            frozenBlob = nil
            savedPos = nil
            task.wait(0.2)
        end
    end
end

local function AntiOwnershipFunction()
    local Struggle = ReplicatedStorage.CharacterEvents.Struggle
    while antiOwnershipActive do
        local character = LocalPlayer.Character
        if character and character:FindFirstChild("Head") then
            local head = character.Head
            if head:FindFirstChild("PartOwner") then
                Struggle:FireServer(LocalPlayer)
                for _, part in pairs(character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.Anchored = true
                    end
                end
                local isHeld = LocalPlayer:FindFirstChild("IsHeld")
                while isHeld and isHeld.Value and antiOwnershipActive do
                    task.wait()
                end
                for _, part in pairs(character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.Anchored = false
                    end
                end
            end
        end
        task.wait(0.1)
    end
end

local function LoopTPFunction()
    local Player = game.Players.LocalPlayer
    while loopTPActive do
        local char = Player.Character
        if char then
            local hrp = char:FindFirstChild("HumanoidRootPart")
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hrp and hum then
                hum.PlatformStand = true
                local x = math.random(-500, 500)
                local y = math.random(30, 480)
                local z = math.random(-500, 500)
                hrp.CFrame = CFrame.new(x, y, z)
            end
        end
        task.wait(0.03)
    end
    local char = Player.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum then
            hum.PlatformStand = false
        end
    end
end

local function StartAntiExplosion()
    local char = LocalPlayer.Character
    if not char then return end
    local hrp = char:WaitForChild("HumanoidRootPart")
    antiExplosionConnection = workspace.ChildAdded:Connect(function(model)
        if model.Name == "Part" and antiExplosionActive then
            local mag = (model.Position - hrp.Position).Magnitude
            if mag <= 20 then
                hrp.Anchored = true
                task.wait(0.01)
                local rightArm = char:FindFirstChild("Right Arm")
                if rightArm then
                    local ragdollPart = rightArm:FindFirstChild("RagdollLimbPart")
                    if ragdollPart then
                        while ragdollPart.CanCollide and antiExplosionActive do
                            task.wait(0.001)
                        end
                    end
                end
                if antiExplosionActive then
                    hrp.Anchored = false
                end
            end
        end
    end)
end

local function StartAntiBurn()
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:WaitForChild("Humanoid")
    local hrp = char:WaitForChild("HumanoidRootPart")
    char.PrimaryPart = hrp
    
    antiBurnConnection = hum.FireDebounce.Changed:Connect(function(isBurning)
        if isBurning and antiBurnActive then
            local me = char
            local oldCF = hrp.CFrame
            local plots = workspace:FindFirstChild("Plots")
            
            if plots and plots:FindFirstChild("Plot2") then
                local plot2 = plots.Plot2
                local barrier = plot2:FindFirstChild("Barrier")
                local pb = barrier and barrier:FindFirstChild("PlotBarrier")
                
                if pb and pb:IsA("BasePart") then
                    local safeCF = pb.CFrame * CFrame.new(0, 6, 0)
                    me:SetPrimaryPartCFrame(safeCF)
                    task.wait(0.3)
                    
                    local firePart = me:FindFirstChild("FirePlayerPart", true)
                    if firePart then
                        for _, obj in ipairs(firePart:GetChildren()) do
                            if obj:IsA("Sound") then obj:Stop() end
                            if obj:IsA("Light") or obj:IsA("ParticleEmitter") then
                                obj.Enabled = false
                            end
                        end
                        
                        if firePart:FindFirstChild("CanBurn") then
                            firePart.CanBurn.Value = false
                        end
                        if hum:FindFirstChild("FireDebounce") then
                            hum.FireDebounce.Value = false
                        end
                    end
                    
                    task.wait(0.6)
                    if me and me.PrimaryPart and antiBurnActive then
                        me:SetPrimaryPartCFrame(oldCF)
                    end
                end
            end
        end
    end)
end

local function FWC(Parent, Name, Time) 
    return Parent:FindFirstChild(Name) or Parent:WaitForChild(Name, Time or 3) 
end

local function grab(prt) 
    ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(prt, prt.CFrame) 
end

loadstring([[
local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local LP = Players.LocalPlayer
local DestroyGrabLine = RS:WaitForChild("GrabEvents"):WaitForChild("DestroyGrabLine")
local SetNetworkOwner = RS:WaitForChild("GrabEvents"):WaitForChild("SetNetworkOwner")

local function lookAt(a, b)
    local d = (b - a).Unit
    local r = d:Cross(Vector3.new(0, 1, 0))
    return CFrame.fromMatrix(a, r, r:Cross(d))
end

local function snowShip(plr, cb)
    local my = LP.Character
    local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
    if not (my and my:FindFirstChild("HumanoidRootPart") and hrp) then return end
    local head = plr.Character:FindFirstChild("Head")
    local po = head and head:FindFirstChild("PartOwner")
    if po and po.Value == LP.Name then
        if cb then cb() end
        return true
    end
    if LP:DistanceFromCharacter(hrp.Position) <= 30 then
        SetNetworkOwner:FireServer(hrp, lookAt(my.HumanoidRootPart.Position, hrp.Position))
    end
end

local function onPartOwner(hitPart)
    if hitPart.Name ~= "PartOwner" or not _G.AutoAttacker then return end
    local other = Players:FindFirstChild(tostring(hitPart.Value))
    if not other or other == LP or not other.Character then return end
    local hum = other.Character:FindFirstChildOfClass("Humanoid")
    local root = other.Character:FindFirstChild("HumanoidRootPart")
    if not hum or not root then return end
    local mode = _G.CounterMode or "Fling"
    local cb
    if mode == "Fling" then
        cb = function()
            local cf = lookAt(LP.Character.HumanoidRootPart.Position, root.Position)
            local bv = Instance.new("BodyVelocity", root)
            bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bv.Velocity = Vector3.new(cf.LookVector.X, 0.5, cf.LookVector.Z) * 100
            task.wait()
            bv:Destroy()
            DestroyGrabLine:FireServer(root)
        end
    elseif mode == "Ownership" then
        cb = function() hum.WalkSpeed, hum.Sit, hum.JumpPower = 0, false, 0 end
    elseif mode == "Kill" then
        cb = function()
            if not root:FindFirstChild("SkyVelocity") then
                local bv = Instance.new("BodyVelocity", root)
                bv.Name, bv.Velocity, bv.MaxForce = "SkyVelocity", Vector3.new(0, 1e14, 0), Vector3.new(math.huge, math.huge, math.huge)
            end
            for _ = 0, 20 do
                hum.BreakJointsOnDeath = false
                hum:ChangeState(Enum.HumanoidStateType.Dead)
                hum.Jump, hum.Sit = true, true
            end
            task.wait()
            DestroyGrabLine:FireServer(root)
        end
    elseif mode == "Void" then
        cb = function()
            if not root:FindFirstChild("SkyVelocity") then
                local bv = Instance.new("BodyVelocity", root)
                bv.Name, bv.Velocity, bv.MaxForce = "SkyVelocity", Vector3.new(0, 1e14, 0), Vector3.new(math.huge, math.huge, math.huge)
            end
            task.wait(1)
            DestroyGrabLine:FireServer(root)
        end
    end
    if not cb then return end
    for _ = 1, 50 do
        if snowShip(other, cb) then break end
        task.wait()
    end
end

local function hookChar(char) char.DescendantAdded:Connect(onPartOwner) end
LP.CharacterAdded:Connect(hookChar)
if LP.Character then hookChar(LP.Character) end
]])()

local function toy_spawn_gucci(name, cframe, vector)
    local ToySpawn = ReplicatedStorage.MenuToys.SpawnToyRemoteFunction
    local InPlot, InOwnerPlot, CanSpawn = LocalPlayer.InPlot, LocalPlayer.InOwnedPlot, LocalPlayer.CanSpawnToy

    while InPlot.Value and not InOwnerPlot.Value and not CanSpawn.Value do
        task.wait(0.01)
    end

    task.spawn(function()
        ToySpawn:InvokeServer(name, cframe, vector or Vector3.new())
    end)
    
    local BackPack = Workspace:FindFirstChild(LocalPlayer.Name .. 'SpawnedInToys')
    local SpawnedToy
    BackPack.ChildAdded:Once(function(toy)
        if toy.Name == name and toy:IsA("Model") then
            SpawnedToy = toy
        end
    end)
    
    local time = tick()
    while not SpawnedToy do
        if tick()-time < 2 then
            task.wait(0.01)
        else
            return false
        end
    end
    return SpawnedToy
end

local function GucciAntiGrab()
    gucciRunId = gucciRunId + 1
    local MyId = gucciRunId
    
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local hum = FWC(char, "Humanoid")
    
    hum.Sit = true
    task.wait(0.02)
    hum.Sit = false
    task.wait(0.02)
    
    task.spawn(function()
        local time = tick()
        while tick()-time < 0.8 do
            for _,v in pairs(char:GetChildren()) do
                if v:IsA('BasePart') then
                    v.Velocity = Vector3.new()
                end
            end
            task.wait(0.01)
        end
    end)
    
    local autoGucciT, sitJumpT, Blob, BHead = true, false, nil, nil
    
    task.spawn(function()
        while not Blob and MyId == gucciRunId do
            task.wait(0.01)
        end
        if MyId ~= gucciRunId then return end
        
        BHead = FWC(Blob, "Head")
        local HitBox = FWC(Blob, "GrabbableHitbox")
        
        while MyId == gucciRunId and BHead and
        (not BHead:FindFirstChild("PartOwner") or BHead.PartOwner.Value ~= LocalPlayer.Name) do
            grab(HitBox)
            task.wait(0.01)
        end
    end)
    
    local hrp = FWC(char, "HumanoidRootPart")
    Blob = toy_spawn_gucci(
        "CreatureBlobman",
        hrp.CFrame * CFrame.new(0, 0, -5),
        Vector3.new(0, -15.716, 0)
    )
    
    if not Blob then return end
    
    local Seat = FWC(Blob, "VehicleSeat")
    
    task.defer(function()
        if not(char or hum) then return end
        
        local startTime = tick()
        while autoGucciT and MyId == gucciRunId and tick()-startTime < 0.3 do
            if Blob and Blob.Parent then
                if Seat and Seat.Parent and Seat.Occupant ~= hum then
                    Seat:Sit(hum)
                end
            end
            task.wait(0.03)
            if char and hum and hum.Parent then
                hum:ChangeState(Enum.HumanoidStateType.Jumping)
            end
            task.wait(0.03)
        end
        autoGucciT = false
        sitJumpT = false
    end)
    
    sitJumpT = true
    
    task.defer(function()
        while sitJumpT and MyId == gucciRunId do
            if char and hrp and hrp.Parent then
                ReplicatedStorage.CharacterEvents.RagdollRemote:FireServer(hrp, 0.095)
            end
            task.wait(0.01)
        end
    end)
    
    local index
    
    task.wait(0.4)
    
    if MyId ~= gucciRunId then return end
    
    hum.Sit = false
    Blob.Name = "Gucci"
    
    local BackPack = Workspace:FindFirstChild(LocalPlayer.Name .. 'SpawnedInToys')
    for i,v in pairs(BackPack:GetChildren()) do
        if v.Name == "Gucci" then
            index = i
            break
        end
    end
    
    for _,v in pairs(Blob:GetChildren()) do
        if v:IsA("BasePart") then
            v.CanCollide = false
            v.CanTouch = false
            v.CanQuery = false
        end
    end
    
    task.defer(function()
        while MyId == gucciRunId and Blob and BHead do
            BHead.CFrame = CFrame.new(BHead.Position.X, 1e5, BHead.Position.Z)
            task.wait(0.01)
        end
    end)
    
    local success, contents = pcall(function()
        return LocalPlayer.PlayerGui.MenuGui.Menu.TabContents.ToyDestroy.Contents
    end)
    
    if success and contents and index then
        for i,v in ipairs(contents:GetChildren()) do
            if v.Name == "CreatureBlobman" and i == index then
                local view = v.ViewItemButton
                view.Text = "GUCCI"
                view.TextScaled = true
                view.LowResImage.Image = ""
            end
        end
    end
end

local function destroyPlayerGucci(targetPlayer)
    if not targetPlayer or targetPlayer == LocalPlayer then return false end
    
    local folderName = targetPlayer.Name .. "SpawnedInToys"
    local toysFolder = Workspace:FindFirstChild(folderName)
    if not toysFolder then return false end
    
    for _, obj in ipairs(toysFolder:GetChildren()) do
        if obj.Name == "CreatureBlobman" then
            local seat = obj:FindFirstChild("VehicleSeat") or obj:FindFirstChildWhichIsA("VehicleSeat", true)
            if seat then
                local myChar = LocalPlayer.Character
                if not myChar then return false end
                
                local myHum = myChar:FindFirstChild("Humanoid")
                local myRoot = myChar:FindFirstChild("HumanoidRootPart")
                if not myHum or not myRoot then return false end
                
                local safeSpot = myRoot.CFrame
                myRoot.CFrame = seat.CFrame
                myRoot.Velocity = Vector3.zero
                seat:Sit(myHum)
                task.wait(0.3)
                
                if myHum.SeatPart == seat then
                    myHum.Sit = false
                    task.wait(0.1)
                    myRoot.CFrame = safeSpot
                    task.wait(0.5)
                    obj:Destroy()
                    return true
                else
                    myRoot.CFrame = safeSpot
                end
            end
        end
    end
    return false
end

local function StartDestroyGucciLoop()
    while destroyGucciActive do
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character then
                destroyPlayerGucci(player)
            end
        end
        task.wait(2)
    end
end

local function destroyAllPlayersGucci()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            destroyPlayerGucci(player)
        end
    end
end

local function StartJerkOff()
    local plr = LocalPlayer
    local char = plr.Character or plr.CharacterAdded:Wait()
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return end
    
    local animator = hum:FindFirstChildOfClass("Animator")
    if not animator then
        animator = Instance.new("Animator")
        animator.Parent = hum
    end
    
    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://168268306"
    jerkOffAnimTrack = animator:LoadAnimation(anim)
    jerkOffAnimTrack.Priority = Enum.AnimationPriority.Action
    jerkOffAnimTrack:Play()
    
    playJerkOffActive = true
    task.spawn(function()
        while playJerkOffActive do
            task.wait(0.1)
            if jerkOffAnimTrack and jerkOffAnimTrack.IsPlaying then
                jerkOffAnimTrack.TimePosition = 0.3
            end
        end
    end)
end

local function StopJerkOff()
    playJerkOffActive = false
    if jerkOffAnimTrack then
        jerkOffAnimTrack:Stop()
        jerkOffAnimTrack = nil
    end
end

local function RemoveAntiKickFunction()
    local RS = ReplicatedStorage
    local toyNames = {"NinjaKunai", "SpookyCandle1", "ClockAlarm", "FoodDonut", "FoodPlate", "NinjaShuriken", "AntiKick"}
    local setOwner = nil

    while antiAntiKickActive do
        if not setOwner or not setOwner.Parent then
            local grabEvents = RS:WaitForChild("GrabEvents", 10)
            setOwner = grabEvents and grabEvents:WaitForChild("SetNetworkOwner", 10)
        end

        if not setOwner then
            task.wait(0.15)
            continue
        end

        local targetName = Options.TargetPlayer and Options.TargetPlayer.Value or ""
        local target = (targetName ~= "") and Players:FindFirstChild(targetName) or nil
        local spawned = target and Workspace:FindFirstChild(target.Name .. "SpawnedInToys")

        if spawned then
            for _, toyName in ipairs(toyNames) do
                local toy = spawned:FindFirstChild(toyName)
                if toy then
                    local part = toy:FindFirstChild("SoundPart")
                    if part and part:IsA("BasePart") then
                        pcall(function()
                            setOwner:FireServer(part, part.CFrame)
                        end)
                        pcall(function()
                            local po = part:FindFirstChild("PartOwner")
                            if not po then
                                return
                            end
                            local isOurs = false
                            if po:IsA("ObjectValue") and po.Value == LocalPlayer then
                                isOurs = true
                            elseif po:IsA("StringValue") and po.Value == LocalPlayer.Name then
                                isOurs = true
                            end
                            if isOurs then
                                part.CFrame = CFrame.new(0, 1000, 0)
                            end
                        end)
                    end
                end
            end
        end

        task.wait(0.05)
    end
end

local function RemoveAllAntiInputFunction()
    local AllowedItems = {
        FoodHamburger = true,
        FoodCoconut = true,
        FoodPizzaCheese = true,
        FoodPizzaPepperoni = true,
        FoodHotdog = true,
        FoodMushroomPoison = true,
        FoodBread = true,
        FoodDippyEgg = true,
        FoodMayonnaise = true,
        FoodFrenchFries = true,
        FoodMeatStick = true,
        FoodDonut = true,
        FoodCakePink = true,
        InstrumentGuitarBanjo = true,
        InstrumentGuitarViolin = true,
        InstrumentGuitarUkulele = true,
        InstrumentWoodwindSaxophone = true,
        InstrumentWoodwindOcarina = true,
        InstrumentBrassVuvuzelaQwizik = true,
        InstrumentBrassTrumpet = true,
        InstrumentDrumBongos = true,
        InstrumentDrumSnare = true,
        InstrumentPianoMelodica = true,
        InstrumentVoiceMicrophone = true,
        CupMugWhite = true,
        CupMugBrown = true,
        PoopPile = true,
        PoopPileSparkle = true,
    }

    while antiAntiLagEnabled do
        local targetUser = Options.TargetPlayer and Options.TargetPlayer.Value or ""
        local targetPlr = targetUser ~= "" and Players:FindFirstChild(targetUser) or nil
        local toysFolder = targetPlr and Workspace:FindFirstChild(targetUser .. "SpawnedInToys")

        local char = LocalPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")

        if toysFolder and hrp and char then
            local burgers = {}
            for _, v in ipairs(toysFolder:GetDescendants()) do
                if
                    AllowedItems[v.Name]
                    and v:IsA("Model")
                    and v:FindFirstChild("HoldPart")
                then
                    table.insert(burgers, v)
                end
            end

            for _, b in ipairs(burgers) do
                char = LocalPlayer.Character
                hrp = char and char:FindFirstChild("HumanoidRootPart")
                if not hrp or not char then
                    break
                end
                if
                    b
                    and b.Parent
                    and b:IsDescendantOf(toysFolder)
                    and b:FindFirstChild("HoldPart")
                then
                    local hp = b.HoldPart
                    pcall(function()
                        hp.HoldItemRemoteFunction:InvokeServer(b, char)
                    end)
                    task.wait()
                    hrp = LocalPlayer.Character
                        and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if not hrp then
                        break
                    end
                    pcall(function()
                        hp.DropItemRemoteFunction:InvokeServer(
                            b,
                            CFrame.new(hrp.Position + Vector3.new(0, -2000, 0)),
                            Vector3.new(0, 0, 0)
                        )
                    end)
                end
            end
        end

        task.wait(0.05)
    end
end

local function RemoveAntiKickAuraFunction()
    local RS = game:GetService("ReplicatedStorage")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local GrabEvents = RS:WaitForChild("GrabEvents")
    local SetNetOwner = GrabEvents:WaitForChild("SetNetworkOwner")
    
    while removeAntiKickAuraActive do
        local myChar = LocalPlayer.Character
        local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
        if not myRoot then 
            task.wait(0.1)
            continue 
        end
        
        for _, target in ipairs(Players:GetPlayers()) do
            if target ~= LocalPlayer then
                if useWhitelistRemoveAntiKick and LocalPlayer:IsFriendsWith(target.UserId) then
                    continue
                end
                
                local tChar = target.Character
                local tRoot = tChar and tChar:FindFirstChild("HumanoidRootPart")
                if not tRoot then continue end
                
                if (tRoot.Position - myRoot.Position).Magnitude <= removeAntiKickRadius then
                    local spawned = workspace:FindFirstChild(target.Name .. "SpawnedInToys")
                    if spawned then
                        for _, toyName in ipairs({"NinjaKunai", "NinjaShuriken", "AntiKick"}) do
                            local toy = spawned:FindFirstChild(toyName)
                            if toy then
                                local part = toy:FindFirstChild("SoundPart")
                                if part then
                                    pcall(function()
                                        SetNetOwner:FireServer(part, part.CFrame)
                                    end)
                                    if part:FindFirstChild("PartOwner") and part.PartOwner.Value == LocalPlayer.Name then
                                        part.CFrame = CFrame.new(0, 1000, 0)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        task.wait(0.1)
    end
end

local function PlatformTPFunction()
    if not platformPart then
        platformPart = Instance.new("Part", workspace)
        platformPart.Name = "SkyBase"
        platformPart.Anchored = true
        platformPart.Size = Vector3.new(1500, 2, 1500)
        platformPart.CFrame = CFrame.new(0, 1000000, 0)
        workspace.FallenPartsDestroyHeight = -9999999
    end
    
    platformTPConnection = UserInputService.InputBegan:Connect(function(input, processed)
        if not processed and input.KeyCode == platformTPKey and platformTPToggle then
            local char = LocalPlayer.Character
            local root = char and char:FindFirstChild("HumanoidRootPart")
            if not root then return end

            platformTPActive = not platformTPActive

            if platformTPActive then
                oldPlatformPos = root.CFrame
                root.CFrame = platformPart.CFrame + Vector3.new(0, 5, 0)
                root.AssemblyLinearVelocity = Vector3.zero
                root.AssemblyAngularVelocity = Vector3.zero
            else
                if oldPlatformPos then
                    root.CFrame = oldPlatformPos
                end
            end
        end
    end)
end

local function KillDodgeFunction()
    local Struggle = ReplicatedStorage:FindFirstChild("Struggle")
    local Tppos = Vector3.new(252, -7, 464)
    
    local function FindPlot()
        for _, plot in pairs(workspace.Plots:GetChildren()) do
            if plot:FindFirstChild(LocalPlayer.Name) then
                return plot
            end
        end
        return nil
    end

    local Plot = FindPlot()
    if Plot then
        if Plot.Name == "Plot1" then Tppos = Vector3.new(-533, -7, 90)
        elseif Plot.Name == "Plot2" then Tppos = Vector3.new(-483, -7, -164)
        elseif Plot.Name == "Plot3" then Tppos = Vector3.new(252, -7, 464)
        elseif Plot.Name == "Plot4" then Tppos = Vector3.new(509, 83, -339)
        else Tppos = Vector3.new(553, 123, -74) end
    end

    LocalPlayer.CharacterAdded:Connect(function(char)
        local hrp = char:WaitForChild("HumanoidRootPart")
        local hum = char:WaitForChild("Humanoid")
        
        task.spawn(function()
            while killDodgeActive do
                task.wait()
                if not (LocalPlayer:FindFirstChild("InPlot") and LocalPlayer.InPlot.Value) and hum.Health > 0 then
                    hrp.CFrame = CFrame.new(Tppos)
                    hrp.Anchored = false
                end
            end
        end)
        
        hum.Died:Connect(function()
            task.wait(2.8)
            while killDodgeActive and not (LocalPlayer:FindFirstChild("InPlot") and LocalPlayer.InPlot.Value) and hum.Health > 0 do
                for i = 1,3 do 
                    task.spawn(function() 
                        if Struggle then Struggle:FireServer(LocalPlayer) end 
                    end) 
                end
                task.wait()
            end
        end)
    end)
end

local function AntiRagBlobFunction()
    local RagdollRemote = ReplicatedStorage:FindFirstChild("RagdollRemote")
    local RagdolledSit = false
    
    local function DiscAR(con)
        if antiRagBlobConnections[con] then
            antiRagBlobConnections[con]:Disconnect()
            antiRagBlobConnections[con] = nil
        end
    end

    local function setupCharacter(char)
        local hum = char and char:FindFirstChild("Humanoid")
        local HRP = char and char:FindFirstChild("HumanoidRootPart")
        
        if hum and HRP and RagdollRemote then
            DiscAR("ARSeat")
            antiRagBlobConnections["ARSeat"] = hum:GetPropertyChangedSignal("SeatPart"):Connect(function()
                if hum.SeatPart and hum.SeatPart.Parent and hum.SeatPart.Parent.Name == "CreatureBlobman" and not RagdolledSit then
                    RagdolledSit = true
                    local Seat = hum.SeatPart
                    
                    while not hum.Sit do task.wait() end
                    
                    RagdollRemote:FireServer(HRP, 3)
                    
                    while not (hum:FindFirstChild("Ragdolled") and hum.Ragdolled.Value) and not hum.Sit do task.wait() end
                    
                    task.wait(0.4)
                    hum.Sit = false
                    
                    if Seat and Seat:IsA("Part") then
                        Seat:Sit(hum)
                    end
                    
                    task.delay(0.25, function()
                        while hum and hum.SeatPart do
                            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                RagdollRemote:FireServer(LocalPlayer.Character.HumanoidRootPart, 1)
                            end
                            task.wait(0.05)
                        end
                        RagdolledSit = false
                    end)
                end
            end)
        end
    end

    if antiRagBlobActive then
        setupCharacter(LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait())
        
        DiscAR("ARChar")
        antiRagBlobConnections["ARChar"] = LocalPlayer.CharacterAdded:Connect(function(newChar)
            task.wait(0.5)
            setupCharacter(newChar)
        end)
    else
        for _, conn in pairs(antiRagBlobConnections) do
            if conn then conn:Disconnect() end
        end
        antiRagBlobConnections = {}
    end
end


local function TelekinesisShieldFunction()
    local Players = game:GetService("Players")
    local plr = Players.LocalPlayer
    local setOwner = game:GetService("ReplicatedStorage").GrabEvents.SetNetworkOwner
    
    while telekinesisShieldActive do
        local char = plr.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if hrp then
            for _, v in pairs(workspace:GetDescendants()) do
                if not telekinesisShieldActive then break end
                if v:IsA("BasePart") and not v.Anchored and not v:IsDescendantOf(char) then
                    local dist = (v.Position - hrp.Position).Magnitude
                    if dist <= 60 then
                        local pushDir = (v.Position - hrp.Position).Unit
                        local velocity = (pushDir + Vector3.new(0, 0.2, 0)).Unit * 100

                        pcall(function()
                            setOwner:FireServer(v, v.CFrame)
                            v.AssemblyLinearVelocity = velocity
                            v.AssemblyAngularVelocity = Vector3.new(
                                math.random(-10,10),
                                math.random(-10,10),
                                math.random(-10,10)
                            )
                        end)
                    end
                end
            end
        end
        task.wait(0.1)
    end
end

local function LoopKickBlobFunction(targetName)
    local blobLoop = true
    local GE = ReplicatedStorage:WaitForChild("GrabEvents")

    local REMOTE_DELAY = 0.002
    local lastRemote = 0

    local function BlobGrabKickHard()
        local target = Players:FindFirstChild(targetName)
        if not target then return warn("Target not found") end

        local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local hum = char:WaitForChild("Humanoid")
        local seat = hum.SeatPart
        if not seat or seat.Parent.Name ~= "CreatureBlobman" then
            return warn("Sit on Blobman first")
        end

        local blob = seat.Parent
        local blobRoot = blob:FindFirstChild("HumanoidRootPart") or blob.PrimaryPart
        local scriptObj = blob:WaitForChild("BlobmanSeatAndOwnerScript")
        local CG = scriptObj:WaitForChild("CreatureGrab")
        local CD = scriptObj:WaitForChild("CreatureDrop")

        local R_Det = blob:WaitForChild("RightDetector")

        local savedPos = blobRoot.CFrame
        local dragging = false
        local grabStartTime = 0

        while blobLoop and loopKickBlobActive do
            local currentTarget = Players:FindFirstChild(targetName)
            if not currentTarget then break end

            char = LocalPlayer.Character
            hum = char and char:FindFirstChild("Humanoid")
            seat = hum and hum.SeatPart
            if not seat or seat.Parent.Name ~= "CreatureBlobman" then
                warn("Stopped: left Blobman")
                break
            end

            blob = seat.Parent
            blobRoot = blob:FindFirstChild("HumanoidRootPart") or blob.PrimaryPart

            local tChar = currentTarget.Character
            local tRoot = tChar and tChar:FindFirstChild("HumanoidRootPart")
            local tHum = tChar and tChar:FindFirstChild("Humanoid")

            if tRoot and tHum and tHum.Health > 0 and blobRoot then
                tRoot.Velocity = Vector3.zero

                if not dragging then
                    blobRoot.CFrame = tRoot.CFrame
                    blobRoot.Velocity = Vector3.zero

                    if tick() - lastRemote >= REMOTE_DELAY then
                        lastRemote = tick()

                        pcall(function()
                            tHum.PlatformStand = true
                            tHum.Sit = true
                            GE.SetNetworkOwner:FireServer(tRoot, blobRoot.CFrame)
                            GE.DestroyGrabLine:FireServer(tRoot)
                        end)
                    end

                    if grabStartTime == 0 then
                        grabStartTime = tick()
                    end

                    if tick() - grabStartTime > 0.35 then
                        dragging = true
                        grabStartTime = 0
                        blobRoot.CFrame = savedPos
                        blobRoot.Velocity = Vector3.zero
                    end
                else
                    blobRoot.CFrame = savedPos
                    blobRoot.Velocity = Vector3.zero

                    local lockPos = savedPos * CFrame.new(0, 23, 0)
                    tRoot.CFrame = lockPos
                    tHum.PlatformStand = true
                    tHum.Sit = true

                    if tick() - lastRemote >= REMOTE_DELAY then
                        lastRemote = tick()

                        pcall(function()
                            GE.SetNetworkOwner:FireServer(tRoot, lockPos)
                            GE.DestroyGrabLine:FireServer(tRoot)

                            local weld =
                                R_Det:FindFirstChild("RightWeld")
                                or R_Det:FindFirstChildWhichIsA("Weld")

                            if weld then
                                CD:FireServer(weld)
                                CG:FireServer(R_Det, tRoot, weld)
                            end
                        end)
                    end
                end
            else
                dragging = false
                grabStartTime = 0
            end

            RunService.Heartbeat:Wait()
        end

        if blobRoot then
            blobRoot.CFrame = savedPos
            blobRoot.Velocity = Vector3.zero
        end
    end

    task.spawn(BlobGrabKickHard)
end

local function LoopKickSpinGrabFunction(targetName)
    if loopKickSpinGrabTask then
        pcall(task.cancel, loopKickSpinGrabTask)
        loopKickSpinGrabTask = nil
    end

    local blobLoop = true
    local GE = ReplicatedStorage:WaitForChild("GrabEvents")

    local REMOTE_DELAY = 0.002
    local lastRemote = 0
    local ORBIT_RADIUS = 30
    local ORBIT_SPEED = 12

    local function BlobSpinGrab()
        local target = Players:FindFirstChild(targetName)
        if not target then return warn("Target not found") end

        local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
        local hum = char:WaitForChild("Humanoid")
        local seat = hum.SeatPart
        if not seat or seat.Parent.Name ~= "CreatureBlobman" then
            return warn("Sit on Blobman first")
        end

        local dragging = false
        local grabStartTime = 0
        local orbitAngle = 0
        local orbitCenter = nil
        local orbitAxisX, orbitAxisY, orbitAxisZ = nil, nil, nil

        while blobLoop and loopKickSpinGrabBlobActive do
            local currentTarget = Players:FindFirstChild(targetName)
            if not currentTarget then break end

            char = LocalPlayer.Character
            if not char then
                RunService.Heartbeat:Wait()
            else
                hum = char:FindFirstChild("Humanoid")
                seat = hum and hum.SeatPart
                if not seat or seat.Parent.Name ~= "CreatureBlobman" then
                    warn("Stopped: left Blobman")
                    break
                end

                local blob = seat.Parent
                local blobRoot = blob:FindFirstChild("HumanoidRootPart") or blob.PrimaryPart
                local scriptObj = blob:FindFirstChild("BlobmanSeatAndOwnerScript")
                local CG = scriptObj and scriptObj:FindFirstChild("CreatureGrab")
                local CD = scriptObj and scriptObj:FindFirstChild("CreatureDrop")
                local R_Det = blob:FindFirstChild("RightDetector")

                local tChar = currentTarget.Character
                local tRoot = tChar and tChar:FindFirstChild("HumanoidRootPart")
                local tHum = tChar and tChar:FindFirstChild("Humanoid")

                local remotesOk = scriptObj and CG and CD and R_Det and R_Det:IsDescendantOf(blob)

                if tRoot and tHum and tHum.Health > 0 and blobRoot then
                    if not dragging then
                        blobRoot.CFrame = tRoot.CFrame
                        blobRoot.Velocity = Vector3.zero

                        if tick() - lastRemote >= REMOTE_DELAY then
                            lastRemote = tick()
                            pcall(function()
                                tHum.PlatformStand = true
                                tHum.Sit = true
                                GE.SetNetworkOwner:FireServer(tRoot, blobRoot.CFrame)
                                GE.DestroyGrabLine:FireServer(tRoot)
                                if remotesOk then
                                    local weld =
                                        R_Det:FindFirstChild("RightWeld")
                                        or R_Det:FindFirstChildWhichIsA("Weld")
                                    if weld then
                                        CD:FireServer(weld)
                                        CG:FireServer(R_Det, tRoot, weld)
                                    end
                                end
                            end)
                        end

                        if grabStartTime == 0 then
                            grabStartTime = tick()
                        end

                        if tick() - grabStartTime > 0.35 then
                            dragging = true
                            grabStartTime = 0
                            local snap = tRoot.CFrame
                            orbitCenter = snap.Position
                            orbitAxisX, orbitAxisY, orbitAxisZ = snap.XVector, snap.YVector, snap.ZVector
                            orbitAngle = 0
                        end
                    else
                        if not orbitCenter then
                            local snap = tRoot.CFrame
                            orbitCenter = snap.Position
                            orbitAxisX, orbitAxisY, orbitAxisZ = snap.XVector, snap.YVector, snap.ZVector
                        end

                        local dt = RunService.Heartbeat:Wait()
                        orbitAngle = orbitAngle + ORBIT_SPEED * dt
                        local offset = Vector3.new(
                            math.cos(orbitAngle) * ORBIT_RADIUS,
                            0,
                            math.sin(orbitAngle) * ORBIT_RADIUS
                        )
                        local orbitPos = orbitCenter + offset
                        local targetCF = CFrame.fromMatrix(orbitCenter, orbitAxisX, orbitAxisY, orbitAxisZ)

                        blobRoot.CFrame = CFrame.lookAt(orbitPos, orbitCenter)
                        blobRoot.Velocity = Vector3.zero
                        pcall(function()
                            blobRoot.AssemblyLinearVelocity = Vector3.zero
                            blobRoot.AssemblyAngularVelocity = Vector3.zero
                        end)

                        tRoot.CFrame = targetCF
                        tRoot.Velocity = Vector3.zero
                        pcall(function()
                            tRoot.AssemblyLinearVelocity = Vector3.zero
                            tRoot.AssemblyAngularVelocity = Vector3.zero
                        end)
                        tHum.PlatformStand = true
                        tHum.Sit = true

                        if tick() - lastRemote >= REMOTE_DELAY then
                            lastRemote = tick()
                            pcall(function()
                                GE.SetNetworkOwner:FireServer(tRoot, targetCF)
                                GE.DestroyGrabLine:FireServer(tRoot)
                                if remotesOk then
                                    local weld =
                                        R_Det:FindFirstChild("RightWeld")
                                        or R_Det:FindFirstChildWhichIsA("Weld")
                                    if weld then
                                        CD:FireServer(weld)
                                        CG:FireServer(R_Det, tRoot, weld)
                                    end
                                end
                            end)
                        end
                    end
                else
                    dragging = false
                    grabStartTime = 0
                    orbitCenter = nil
                    orbitAxisX, orbitAxisY, orbitAxisZ = nil, nil, nil
                    orbitAngle = 0
                end

                if not dragging then
                    RunService.Heartbeat:Wait()
                end
            end
        end
    end

    local th
    th = task.spawn(function()
        local ok, err = pcall(BlobSpinGrab)
        if loopKickSpinGrabTask == th then
            loopKickSpinGrabTask = nil
        end
        if not ok and err then
            warn("[LoopKickSpinGrab] ", err)
        end
    end)
    loopKickSpinGrabTask = th
end

local function getTargetPlayerOptionsList()
    local list = {}
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer then
            table.insert(list, p.Name)
        end
    end
    if #list == 0 then table.insert(list, "None") end
    return list
end

local function refreshTargetPlayersDropdown()
    if not Options.TargetPlayer then return end

    local newList = getTargetPlayerOptionsList()
    local prev = Options.TargetPlayer.Value
    
    Options.TargetPlayer:SetValues(newList)
    
    local valueToSet = newList[1]
    if type(prev) == "string" and prev ~= "" and table.find(newList, prev) then
        valueToSet = prev
    end
    
    pcall(function()
        Options.TargetPlayer:SetValue(valueToSet)
    end)
end

local function getSelectedTargetPlayer()
    local name = Options.TargetPlayer and Options.TargetPlayer.Value
    if type(name) ~= "string" or name == "" or name == "None" or name == "..." then
        return nil
    end
    return Players:FindFirstChild(name)
end

local function getTargetBlobPlayerOptionsList()
    local list = {}
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LocalPlayer then
            table.insert(list, p.Name)
        end
    end
    if #list == 0 then table.insert(list, "None") end
    return list
end

local function refreshTargetBlobPlayersDropdown()
    if not Options.TargetBlobPlayer then return end 

    local newList = getTargetBlobPlayerOptionsList()
    local prev = Options.TargetBlobPlayer.Value   
    Options.TargetBlobPlayer:SetValues(newList)  
    
    local valueToSet = newList[1]
    if type(prev) == "string" and prev ~= "" and table.find(newList, prev) then
        valueToSet = prev
    end
    
    pcall(function()
        Options.TargetBlobPlayer:SetValue(valueToSet)
    end)
end

local function refreshAllPlayerDropdowns()
    refreshTargetPlayersDropdown()
    refreshTargetBlobPlayersDropdown()
end

local function getSelectedTargetBlobPlayer()
    local name = Options.TargetBlobPlayer and Options.TargetBlobPlayer.Value
    if type(name) ~= "string" or name == "" or name == "None" or name == "..." then
        return nil
    end
    return Players:FindFirstChild(name)
end

do
local displayName = LocalPlayer.DisplayName
local username = LocalPlayer.Name
local userId = LocalPlayer.UserId
local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local avatarImage, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

local RunService = game:GetService("RunService")
local Stats = game:GetService("Stats")
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local LogService = game:GetService("LogService")

local player = Players.LocalPlayer
local kickedCount = 0
local lastKickedName = "None"
local startTime = tick()
local rejoinWithAntiLag = false

local function destroyAllGrabParts()
    for _, plr in pairs(Players:GetPlayers()) do
        if plr.Character then
            local grabParts = plr.Character:FindFirstChild("GrabParts")
            if grabParts then
                grabParts:Destroy()
            end
        end
    end
end

local function runAntiLagDefault()
    local playerScripts = player:WaitForChild("PlayerScripts", 3)
    if playerScripts then
        local beamMove = playerScripts:FindFirstChild("CharacterAndBeamMove")
        if beamMove then
            beamMove.Disabled = true
        end
    end
    destroyAllGrabParts()
end

local function safeRejoin()
    if rejoinWithAntiLag then
        runAntiLagDefault()
        task.wait(0.3)
    end
    
    local queue = syn and syn.queue_on_teleport or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
    if queue then
        queue(myScriptCode)
    end
    
    if #Players:GetPlayers() <= 1 then
        TeleportService:Teleport(game.PlaceId, player)
    else
        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, player)
    end
end

local Information = Tabs.Information:AddRightGroupbox("Information")

Information:AddLabel("Script Version: 27", true)

local FpsLabel = Information:AddLabel("<font color='#999999'>Current FPS: </font>", true)
local PingLabel = Information:AddLabel("<font color='#999999'>Ping: </font>", true)
local TimeLabel = Information:AddLabel("<font color='#999999'>Time: </font>", true)
local GameLabel = Information:AddLabel("<font color='#999999'>Game: </font><font color='#00FFFF'>Fling Things and People</font>", true)
local PlayersLabel = Information:AddLabel("<font color='#999999'>Quantity Players: </font>", true)
local KickedLabel = Information:AddLabel("<font color='#999999'>Kicked Players: </font><font color='#FF0000'>0</font>", true)
local SessionTimeLabel = Information:AddLabel("<font color='#999999'>Time played: </font>", true)

Information:AddButton("Rejoin Server", function()
    safeRejoin()
end)

local kickObjectNames = {
    ["blackholekick"] = true,
    ["blackholekicktweens(old)"] = true,
    ["blackholekicktweens"] = true,
    ["jhole"] = true,
    ["blackhole"] = true,
    ["black_hole"] = true,
    ["voidhole"] = true,
    ["singularity"] = true,
}

workspace.ChildAdded:Connect(function(obj)
    local nameLower = obj.Name:lower()
    
    if kickObjectNames[nameLower] then
        kickedCount = kickedCount + 1
        
        local creatorValue = obj:FindFirstChild("Target") or obj:FindFirstChild("Player") or obj:FindFirstChildOfClass("ObjectValue")
        if creatorValue and creatorValue:IsA("ObjectValue") and creatorValue.Value then
            lastKickedName = creatorValue.Value.Name
            return
        end
        
        for _, plr in pairs(Players:GetPlayers()) do
            if plr ~= player and plr.Character then
                if not plr.Character:FindFirstChild("HumanoidRootPart") or plr.Character.Parent == nil then
                    lastKickedName = plr.Name
                    return
                end
            end
        end

        local logs = LogService:GetLogHistory()
        for i = #logs, 1, -1 do
            local msg = logs[i].Message:lower()
            if msg:find("kick") or msg:find("disconnect") or msg:find("lost connection") then
                for _, plr in pairs(Players:GetPlayers()) do
                    if msg:find(plr.Name:lower()) and plr ~= player then
                        lastKickedName = plr.Name
                        return
                    end
                end
            end
        end
    end
end)


local function getActiveTogglesCount()
    local count = 0
    if _G.PacketLagActive == true then count = count + 1 end
    if loopRagdoll == true then count = count + 1 end
    if disableCollision == true then count = count + 1 end
    return count
end

local function formatSessionTime(seconds)
    local hours = math.floor(seconds / 3600)
    local minutes = math.floor((seconds % 3600) / 60)
    local secs = math.floor(seconds % 60)
    return string.format("%02d:%02d:%02d", hours, minutes, secs)
end

task.spawn(function()
    while true do
        local fps = math.floor(1 / RunService.RenderStepped:Wait())
        local ping = math.floor(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
        
        local localTime = DateTime.now():ToLocalTime()
        local timeString = string.format("%02d:%02d:%02d", localTime.Hour, localTime.Minute, localTime.Second)
        
        local currentPlayers = #Players:GetPlayers()
        local maxPlayers = Players.MaxPlayers
        local elapsed = tick() - startTime
        
        local function safeUpdate(label, text)
            pcall(function() label:SetText(text) end)
            pcall(function() label:Update(text) end)
        end

        safeUpdate(FpsLabel, "<font color='#999999'>Current FPS: " .. tostring(fps) .. "</font>")
        safeUpdate(PingLabel, "<font color='#999999'>Ping: " .. tostring(ping) .. " ms</font>")
        safeUpdate(TimeLabel, "<font color='#999999'>Time: " .. timeString .. "</font>")
        safeUpdate(PlayersLabel, "<font color='#999999'>Quantity Players: " .. tostring(currentPlayers) .. "/" .. tostring(maxPlayers) .. "</font>")
        safeUpdate(KickedLabel, "<font color='#999999'>Kicked Players: </font><font color='#FF0000'>" .. tostring(kickedCount) .. "</font>")
        safeUpdate(SessionTimeLabel, "<font color='#999999'>Time played: " .. formatSessionTime(elapsed) .. "</font>")
        task.wait(1)
    end
end)

local ProfileBox = Tabs.Information:AddLeftGroupbox("User Profile")

pcall(function()
    ProfileBox:AddImage("ProfilePicture", {
        Image = avatarImage,
        Size = UDim2.new(0, 100, 0, 100)
    })
end)

ProfileBox:AddLabel("Hello, <font color='#FFFF00'>" .. displayName .. "</font>!", true)
ProfileBox:AddLabel("<font color='#ff00ff'>@" .. username .. "</font>", true)
ProfileBox:AddLabel("Welcome to <font color='#FF0000'>The Revenge</font>", true)
ProfileBox:AddLabel("<font color='#003399'>Made by Creepysleep & Faraonov</font>", true)
ProfileBox:AddLabel("License: <font color='#00FF00'>Active</font> (<font color='#00FF00'>Premium</font>)", true)
end

do
local AntiFuncSection = Tabs.Defence:AddLeftGroupbox("Anti Functions")
local CounterSection = Tabs.Defence:AddLeftGroupbox("Counter Attack")
local DestroyBarriersSection = Tabs.Defence:AddRightGroupbox("Destroy Barriers")
local ExtraDefSection = Tabs.Defence:AddRightGroupbox("Extra Defense")

local RS = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Player = game.Players.LocalPlayer

local function hamburgerTeleport()
    local char = Player.Character or Player.CharacterAdded:Wait()
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local originalCFrame = hrp.CFrame
    local MenuToys = RS:FindFirstChild("MenuToys")
    local SpawnToyRemoteFunction = MenuToys and MenuToys:FindFirstChild("SpawnToyRemoteFunction")
    if not SpawnToyRemoteFunction then return end

    SpawnToyRemoteFunction:InvokeServer("FoodHamburger", hrp.CFrame, Vector3.zero)

    local spawnedToys = Workspace:FindFirstChild(Player.Name .. "SpawnedInToys")
    if not spawnedToys then return end

    local FoodHamburger = spawnedToys:WaitForChild("FoodHamburger", 5)
    if not FoodHamburger then return end

    local HoldPart = FoodHamburger:FindFirstChild("HoldPart")
    local HoldItemRemoteFunction = HoldPart and HoldPart:FindFirstChild("HoldItemRemoteFunction")
    if not HoldItemRemoteFunction then return end

    HoldItemRemoteFunction:InvokeServer(FoodHamburger, char)

    local plotsFolder = Workspace:FindFirstChild("Plots")
    local plot3 = plotsFolder and plotsFolder:FindFirstChild("Plot3")
    local plotArea = plot3 and plot3:FindFirstChild("PlotArea")
    if not plotArea then return end

    hrp.CFrame = plotArea.CFrame
    task.wait(0.1)
    hrp.CFrame = originalCFrame

    local DestroyToy = MenuToys and MenuToys:FindFirstChild("DestroyToy")
    if DestroyToy then
        DestroyToy:FireServer(FoodHamburger)
    end
end

do
    local SvcWS = game:GetService('Workspace')
    local function Notify(title, desc, time)
        Library:Notify({
            Title = "<b>" .. title .. "</b>",
            Description = desc,
            Time = time or 3
        })
    end

    DestroyBarriersSection:AddButton({
        Text = 'Barrier Noclip',
        Tooltip = 'Toggles whether plot barriers block grabbed objects.',
        Func = function()
            local cur = SvcWS:GetAttribute('PlotBarrierGrabable') or false
            local tog = not cur

            SvcWS:SetAttribute('PlotBarrierGrabable', tog)

            local plots = SvcWS:FindFirstChild('Plots')

            if plots then
                for _, v in pairs(plots:GetDescendants())do
                    if v.Name == 'PlotBarrier' then
                        v.CanQuery = not tog
                        v.CanCollide = not tog
                        v.CanTouch = not tog
                    end
                end
            end

            Notify('Barrier', tog and 'Barriers passable' or 'Barriers restored', 3)
        end,
    })
end

DestroyBarriersSection:AddCheckbox("DestroyBarriersToggle", {
    Text = "Destroy Barriers",
    Default = false,
    Callback = function(Value)
        _G.BarriersDestroyed = Value

        pcall(function()
            if Value then
                barrierStatusLabel:SetText("🟢 Broken")
            else
                barrierStatusLabel:SetText("🔴 Not Broken")
            end
        end)

        if Value then
            task.spawn(function()
                hamburgerTeleport()
                task.wait(0.3)

                local plotsFolder = Workspace:FindFirstChild("Plots")
                if plotsFolder then
                    for _, v in pairs(plotsFolder:GetChildren()) do
                        if v:FindFirstChild("PlotArea") then
                            v.PlotArea.CanQuery = false
                        end
                        if v:FindFirstChild("Barrier") then
                            for _, b in pairs(v.Barrier:GetChildren()) do
                                b.CanCollide = false
                                b.CanQuery = false
                                b.CanTouch = false
                            end
                        end
                    end

                    for _, plot in ipairs(plotsFolder:GetDescendants()) do
                        if plot:IsA("BasePart") and plot.Name == "PlotBarrier" then
                            plot.CanCollide = false
                            plot.CanTouch = false
                            plot.CanQuery = false
                        end
                    end
                end
            end)
        else
            local plotsFolder = Workspace:FindFirstChild("Plots")
            if plotsFolder then
                for _, v in pairs(plotsFolder:GetChildren()) do
                    if v:FindFirstChild("PlotArea") then
                        v.PlotArea.CanQuery = true
                    end
                    if v:FindFirstChild("Barrier") then
                        for _, b in pairs(v.Barrier:GetChildren()) do
                            b.CanCollide = true
                            b.CanQuery = true
                            b.CanTouch = true
                        end
                    end
                end

                for _, plot in ipairs(plotsFolder:GetDescendants()) do
                    if plot:IsA("BasePart") and plot.Name == "PlotBarrier" then
                        plot.CanCollide = true
                        plot.CanTouch = true
                        plot.CanQuery = true
                    end
                end
            end
        end
    end
})

local barrierStatusLabel = DestroyBarriersSection:AddLabel("🔴 Not Broken", true)

CounterSection:AddCheckbox("AutoAttackerToggle", {
    Text = "Auto-Attacker",
    Default = false,
    Callback = function(autoAttackerEnabled)
        _G.AutoAttacker = autoAttackerEnabled
    end,
})

CounterSection:AddDropdown("CounterMode", {
    Title = "Counter-Mode",
    Default = "Fling",
    Values = {
        "Fling",
        "Ownership",
        "Kill",
        "Void"
    },
    Callback = function(counterMode)
        _G.CounterMode = counterMode
    end,
})

AntiFuncSection:AddCheckbox("AntiGrabToggle", {
    Text = "Anti-Grab",
    Default = false,
    Callback = function(Value)
        if Value then
            local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local hrp, hum, head = FWC(char, "HumanoidRootPart"), FWC(char, "Humanoid"), FWC(char, "Head")
            local RunService = game:GetService("RunService")
            local ZERO_VECTOR = Vector3.new(0, 0, 0)
            
            hum:ChangeState(Enum.HumanoidStateType.GettingUp)
            
            if not AGConnections["AGPhysicsFix"] then
                AGConnections["AGPhysicsFix"] = RunService.Stepped:Connect(function()
                    if Toggles.AntiGrabToggle.Value and (head:FindFirstChild("PartOwner") or LocalPlayer.IsHeld.Value) then
                        if hrp then
                            hrp.AssemblyLinearVelocity = ZERO_VECTOR
                            hrp.AssemblyAngularVelocity = ZERO_VECTOR
                        end
                    end
                end)
            end

            AGConnections["AGHead"] = head.ChildAdded:Connect(function(PartOwner)
                if PartOwner.Name == "PartOwner" then
                    if not antiGrabProc then
                        antiGrabProc = true
                        hum.Sit = false
                        ReplicatedStorage.CharacterEvents.Struggle:FireServer(LocalPlayer)
                        
                        task.spawn(function() 
                            while (head and head:FindFirstChild("PartOwner")) or LocalPlayer.IsHeld.Value do
                                ReplicatedStorage.CharacterEvents.Struggle:FireServer(LocalPlayer)
                                ReplicatedStorage.CharacterEvents.RagdollRemote:FireServer(hrp, 0)
                                hum:ChangeState(Enum.HumanoidStateType.GettingUp)
                                task.wait()
                            end
                        end)
                        
                        hrp.Anchored = true
                        if not AGWalk then
                            AGWalk = true
                            while LocalPlayer.IsHeld.Value and task.wait() do 
                                hrp.CFrame = hrp.CFrame + hum.MoveDirection * 0.43 
                            end
                        end
                        hrp.Anchored = false
                        antiGrabProc = false
                        AGWalk = false
                    end
                end
            end)
            
            AGConnections["AGRagdoll"] = FWC(hum, "Ragdolled").Changed:Connect(function()
                if hum.Ragdolled.Value then
                    hum:ChangeState(Enum.HumanoidStateType.GettingUp)
                    for _, v in pairs(char:GetChildren()) do
                        if v:IsA("BasePart") and v:FindFirstChild("BallSocketConstraint") and v.Name ~= "Head" then
                            v.BallSocketConstraint.Enabled = true 
                            if v:FindFirstChild("RagdollLimbPart") then
                                v.RagdollLimbPart.WeldConstraint.Enabled = true 
                            end
                        end
                    end
                end
            end)
            
            AGConnections["AGWeld"] = FWC(hrp, "WeldHRP").Changed:Connect(function()
                if hrp.WeldHRP.Enabled then
                    while not hum.Sit do task.wait() end
                    hum.Sit = false
                    hum.AutoRotate = true
                    hum.HipHeight = 1
                    while hrp.WeldHRP.Enabled and task.wait() do 
                        head.CFrame = hrp.CFrame + Vector3.new(0, 1.35, 0) 
                    end
                    hum.HipHeight = 0
                end
            end)
            
            for _, v in pairs(char:GetChildren()) do
                if v:IsA("BasePart") and v:FindFirstChild("BallSocketConstraint") and v.Name ~= "Head" then
                    v.BallSocketConstraint.Enabled = true
                    if v:FindFirstChild("RagdollLimbPart") then
                        v.RagdollLimbPart.WeldConstraint.Enabled = true
                    end
                end
            end
            
            AGConnections["AGChar"] = LocalPlayer.CharacterAdded:Connect(function(newChar)
                local newHrp, newHum, newHead = FWC(newChar, "HumanoidRootPart"), FWC(newChar, "Humanoid"), FWC(newChar, "Head")
                newHum:ChangeState(Enum.HumanoidStateType.GettingUp)
                
                AGConnections["AGHeadNew"] = newHead.ChildAdded:Connect(function(PartOwner)
                    if PartOwner.Name == "PartOwner" then
                        if not antiGrabProc then
                            antiGrabProc = true
                            newHum.Sit = false
                            ReplicatedStorage.CharacterEvents.Struggle:FireServer(LocalPlayer)
                            
                            task.spawn(function() 
                                while (newHead and newHead:FindFirstChild("PartOwner")) or LocalPlayer.IsHeld.Value do
                                    ReplicatedStorage.CharacterEvents.Struggle:FireServer(LocalPlayer)
                                    ReplicatedStorage.CharacterEvents.RagdollRemote:FireServer(newHrp, 0)
                                    newHum:ChangeState(Enum.HumanoidStateType.GettingUp)
                                    task.wait()
                                end
                            end)
                            
                            newHrp.Anchored = true
                            if not AGWalk then
                                AGWalk = true
                                while LocalPlayer.IsHeld.Value and task.wait() do 
                                    newHrp.CFrame = newHrp.CFrame + newHum.MoveDirection * 0.43 
                                end
                            end
                            newHrp.Anchored = false
                            antiGrabProc = false
                            AGWalk = false
                        end
                    end
                end)
                
                AGConnections["AGRagdollNew"] = FWC(newHum, "Ragdolled").Changed:Connect(function()
                    if newHum.Ragdolled.Value then
                        newHum:ChangeState(Enum.HumanoidStateType.GettingUp)
                        for _, v in pairs(newChar:GetChildren()) do
                            if v:IsA("BasePart") and v:FindFirstChild("BallSocketConstraint") and v.Name ~= "Head" then
                                v.BallSocketConstraint.Enabled = true
                                if v:FindFirstChild("RagdollLimbPart") then
                                    v.RagdollLimbPart.WeldConstraint.Enabled = true
                                end
                            end
                        end
                    end
                end)
                
                AGConnections["AGWeldNew"] = FWC(newHrp, "WeldHRP").Changed:Connect(function()
                    if newHrp.WeldHRP.Enabled then
                        while not newHum.Sit do task.wait() end
                        newHum.Sit = false
                        newHum.AutoRotate = true
                        newHum.HipHeight = 1
                        while newHrp.WeldHRP.Enabled and task.wait() do 
                            newHead.CFrame = newHrp.CFrame + Vector3.new(0, 1.35, 0) 
                        end
                        newHum.HipHeight = 0
                    end
                end)
                
                for _, v in pairs(newChar:GetChildren()) do
                    if v:IsA("BasePart") and v:FindFirstChild("BallSocketConstraint") and v.Name ~= "Head" then
                        v.BallSocketConstraint.Enabled = true
                        if v:FindFirstChild("RagdollLimbPart") then
                            v.RagdollLimbPart.WeldConstraint.Enabled = true
                        end
                    end
                end
            end)
        else
            local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            for _, v in pairs(char:GetChildren()) do
                if v:IsA("BasePart") and v:FindFirstChild("BallSocketConstraint") and v.Name ~= "Head" then
                    v.BallSocketConstraint.Enabled = false
                    if v:FindFirstChild("RagdollLimbPart") then
                        v.RagdollLimbPart.WeldConstraint.Enabled = true
                    end
                end
            end
            
            if AGConnections["AGPhysicsFix"] then
                AGConnections["AGPhysicsFix"]:Disconnect()
                AGConnections["AGPhysicsFix"] = nil
            end
            
            Disc("AGHead"); Disc("AGRagdoll"); Disc("AGWeld"); Disc("AGChar"); Disc("AGHeadNew"); Disc("AGRagdollNew"); Disc("AGWeldNew")
        end
    end
})

do
    local RunService = game:GetService('RunService')
    local Players = game:GetService('Players')
    local ReplicatedStorage = game:GetService('ReplicatedStorage')
    local Workspace = game:GetService('Workspace')

    local MenuToys = ReplicatedStorage:WaitForChild("MenuToys", 10)
    local DestroyToy = MenuToys and MenuToys:WaitForChild("DestroyToy", 5)
    local SpawnToyRemoteFunction = MenuToys and MenuToys:WaitForChild("SpawnToyRemoteFunction", 5)

    local GrabEvents = ReplicatedStorage:WaitForChild("GrabEvents", 10)
    local SetNetworkOwner = GrabEvents and GrabEvents:WaitForChild("SetNetworkOwner", 5)

    local CharacterEvents = ReplicatedStorage:WaitForChild("CharacterEvents", 10)
    local RagdollRemote = CharacterEvents and CharacterEvents:WaitForChild("RagdollRemote", 5)

    local GUE = false
    local GUTYPE = 'CreatureBlobman'
    local inexistance = {}
    local itm = nil
    local sp = nil
    local sv = nil
    local humconnection = nil
    local LocalPlayer = Players.LocalPlayer
    local characterAddedConnection = nil
    local gucciRunning = false
    local hum, hrp

    local function getCharParts()
        local char = LocalPlayer.Character
        if not char then return nil, nil end
        return char:FindFirstChildOfClass('Humanoid'), char:FindFirstChild('HumanoidRootPart')
    end

    local function diddle()
        if not GUE then return end
        local hum, hrp = getCharParts()
        if not hrp or not hum then return end

        if itm then
            for _, prt in ipairs(itm:GetChildren()) do
                if prt:IsA('BasePart') then
                    prt.CanCollide = false
                end
            end
        end

        hrp.CFrame = sp
        hrp.AssemblyLinearVelocity = sv

        hum:GetPropertyChangedSignal('SeatPart'):Once(diddle)
    end

    local function gucciblob()
        if gucciRunning then return end
        gucciRunning = true

        local guccion = false
        local tickyticky = tick()

        while GUE do
            local dt = tick() - tickyticky
            tickyticky = tick()

            local hum, hrp = getCharParts()

            if hum and hrp then
                if itm and itm:FindFirstChild('VehicleSeat') then
                    local occupant = itm.VehicleSeat.Occupant

                    if occupant and occupant ~= hum then
                        task.spawn(function()
                            if DestroyToy then DestroyToy:FireServer(itm) end
                        end)

                        itm = nil
                        guccion = false
                        inexistance = {}

                        task.wait(0.1)

                        local canSpawn = LocalPlayer:FindFirstChild("CanSpawnToy")
                        if canSpawn and canSpawn.Value and SpawnToyRemoteFunction then
                            task.spawn(function()
                                SpawnToyRemoteFunction:InvokeServer(GUTYPE, hrp.CFrame * CFrame.new(0, 100000000, 10), Vector3.new(0, 0, 0))
                            end)
                        end

                        task.wait()
                        continue
                    end
                end

                if itm and itm.Parent and not ((itm:FindFirstChild('HumanoidRootPart') or itm:FindFirstChild('SoundPart')) and itm:FindFirstChild('VehicleSeat') and (not itm.VehicleSeat.Occupant or itm.VehicleSeat.Occupant ~= hum) or (inexistance[itm] or 0) < 1) then
                    task.spawn(function()
                        if DestroyToy then DestroyToy:FireServer(itm) end
                    end)
                else
                    local toyFolder = Workspace:FindFirstChild(LocalPlayer.Name .. 'SpawnedInToys')
                    itm = toyFolder and toyFolder:FindFirstChild(GUTYPE)
                end

                if not sp or not hum.SeatPart then
                    sp = hrp.CFrame
                    sv = hrp.AssemblyLinearVelocity
                end

                if humconnection ~= hum then
                    humconnection = hum
                    hum:GetPropertyChangedSignal('SeatPart'):Once(diddle)
                end

                local waitToggle = true

                if itm then
                    inexistance[itm] = (inexistance[itm] or 0) + dt
                    local rootPart = itm:FindFirstChild('HumanoidRootPart') or itm:FindFirstChild('SoundPart')

                    if rootPart and itm:FindFirstChild('VehicleSeat') and (not itm.VehicleSeat.Occupant or itm.VehicleSeat.Occupant == hum) then
                        if not guccion then
                            rootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                        end

                        local diddy = itm.VehicleSeat
                        diddy.Parent = nil
                        diddy.Parent = itm

                        local isGrabbed = false
                        if _G.checkgrab then 
                            isGrabbed = _G.checkgrab(itm, true)
                        end

                        if not isGrabbed and (hrp.CFrame.Position - rootPart.CFrame.Position).Magnitude < 28 and SetNetworkOwner then
                            for _, prt in ipairs(itm:GetChildren()) do
                                if prt:IsA('BasePart') and prt.CanQuery then
                                    SetNetworkOwner:FireServer(prt, CFrame.lookAt(hrp.CFrame.Position, prt.CFrame.Position))
                                end
                            end
                        end

                        if not hum.SeatPart then
                            hum.Sit = false
                        else
                            waitToggle = false
                            task.wait()
                        end

                        if hrp and hum and rootPart and itm:FindFirstChild('VehicleSeat') and (not itm.VehicleSeat.Occupant or itm.VehicleSeat.Occupant == hum) then
                            local ragdolled = hum:FindFirstChild("Ragdolled")
                            if (ragdolled and ragdolled.Value) or hum.Sit then
                                guccion = false
                            end

                            if itm.VehicleSeat.Occupant == hum then
                                guccion = true
                            elseif not guccion then
                                task.wait()
                                waitToggle = false

                                if rootPart and itm:FindFirstChild('VehicleSeat') and (not itm.VehicleSeat.Occupant or itm.VehicleSeat.Occupant == hum) and (not ragdolled or not ragdolled.Value) then
                                    itm.VehicleSeat:Sit(hum)
                                    if RagdollRemote then RagdollRemote:FireServer(hrp, 1.6666666666666665E-2) end
                                end
                            end

                            if guccion then
                                rootPart.AssemblyLinearVelocity = Vector3.new(0, 1e15, 0)
                            else
                                local pingStats = game.Stats.Network.ServerStatsItem:FindFirstChild('Data Ping')
                                local pingValue = pingStats and pingStats:GetValue() or 100
                                
                                if inexistance[itm] >= (pingValue / 250) then
                                    task.spawn(function()
                                        if DestroyToy then DestroyToy:FireServer(itm) end
                                    end)
                                    hum.Sit = true
                                end
                            end
                        end
                    else
                        if guccion then
                            hum.Sit = true
                        end
                        guccion = false

                        if inexistance[itm] and inexistance[itm] >= 1 then
                            task.spawn(function()
                                if DestroyToy then DestroyToy:FireServer(itm) end
                            end)

                            local canSpawn = LocalPlayer:FindFirstChild("CanSpawnToy")
                            if canSpawn and canSpawn.Value and SpawnToyRemoteFunction then
                                task.spawn(function()
                                    SpawnToyRemoteFunction:InvokeServer(GUTYPE, hrp.CFrame * CFrame.new(0, 100000000, 10), Vector3.new(0, 0, 0))
                                end)
                            end
                        end
                    end
                else
                    if guccion then
                        guccion = false
                        hum.Sit = true
                    end
                    local canSpawn = LocalPlayer:FindFirstChild("CanSpawnToy")
                    if canSpawn and canSpawn.Value and SpawnToyRemoteFunction then
                        task.spawn(function()
                            SpawnToyRemoteFunction:InvokeServer(GUTYPE, hrp.CFrame * CFrame.new(0, 100000000, 10), Vector3.new(0, 0, 0))
                        end)
                    end
                end

                if waitToggle then
                    task.wait()
                    hum.Sit = false
                end
            else
                task.wait()
            end
        end

        gucciRunning = false
    end

    local function onCharacterAdded(char)
        if not GUE then return end
        
        if itm and itm.Parent then
            task.spawn(function()
                if DestroyToy then DestroyToy:FireServer(itm) end
            end)
        end

        itm = nil
        inexistance = {}
        humconnection = nil
        sp = nil
        sv = nil
        gucciRunning = false

        char:WaitForChild('Humanoid', 10)
        char:WaitForChild('HumanoidRootPart', 10)

        local hum, hrp = getCharParts()
        task.wait(0.5)
        if GUE then
            task.spawn(gucciblob)
        end
    end

    LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

    AntiFuncSection:AddCheckbox('GucciAntiGrab', {
        Text = 'Anti-Grab <b>[Blob Gucci]</b>',
        Default = false,
        Callback = function(Value)
            GUE = Value
            if Value then
                task.spawn(gucciblob)
            else
                if itm and itm.Parent then
                    task.spawn(function()
                        if DestroyToy then DestroyToy:FireServer(itm) end
                    end)
                end
                itm = nil
            end
        end
    })
end

do
    local antiGucciConnectionTrain = nil
    local safePositionTrain = nil
    local restoreFramesTrain = 0
    local autoGucciActiveTrain = false

    local function startAntiGucciTrain()
        local localPlayer = game:GetService("Players").LocalPlayer
        if not localPlayer then return end

        local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        local humanoid = character:WaitForChild('Humanoid', 10)
        local rootPart = character:WaitForChild('HumanoidRootPart', 10)

        if not humanoid or not rootPart then return end

        safePositionTrain = rootPart.Position

        local folder = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("AlwaysHereTweenedObjects")
        local train = folder and folder:FindFirstChild('Train')
        local seat = nil

        if train then
            for _, d in ipairs(train:GetDescendants()) do
                if d:IsA('Seat') then
                    seat = d
                    break
                end
            end
        end
        
        if seat then
            rootPart.CFrame = seat.CFrame + Vector3.new(0, 2, 0)
            seat:Sit(humanoid)
        end

        humanoid:GetPropertyChangedSignal('Jump'):Connect(function()
            if humanoid.Jump and humanoid.Sit then
                restoreFramesTrain = 15
                safePositionTrain = rootPart.Position
            end
        end)

        if antiGucciConnectionTrain then
            antiGucciConnectionTrain:Disconnect()
        end

        antiGucciConnectionTrain = game:GetService("RunService").Heartbeat:Connect(function()
            if not rootPart:IsDescendantOf(workspace) or not humanoid:IsDescendantOf(workspace) then
                return
            end

            local charEvents = game:GetService("ReplicatedStorage"):FindFirstChild("CharacterEvents")
            if charEvents and charEvents:FindFirstChild("RagdollRemote") then
                charEvents.RagdollRemote:FireServer(rootPart, 0)
            end

            if restoreFramesTrain > 0 then
                rootPart.CFrame = CFrame.new(safePositionTrain)
                restoreFramesTrain = restoreFramesTrain - 1
            end
        end)

        task.spawn(function()
            while humanoid and humanoid.Sit do
                task.wait(1)
            end
            task.wait(0)
            if rootPart and safePositionTrain then
                rootPart.CFrame = CFrame.new(safePositionTrain)
            end
        end)
    end

    local function stopAntiGucciTrain()
        if antiGucciConnectionTrain then
            antiGucciConnectionTrain:Disconnect()
            antiGucciConnectionTrain = nil
        end

        local trainFolder = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("AlwaysHereTweenedObjects")

        if trainFolder and trainFolder:FindFirstChild('Train') then
            local char = game:GetService("Players").LocalPlayer.Character
            local hum = char and char:FindFirstChildOfClass("Humanoid")
            if hum then hum.Health = 0 end
        end
    end

    AntiFuncSection:AddCheckbox('AutoGucciToggle', {
        Text = 'Anti-Grab <b>[Train Gucci]</b>',
        Default = false,
        Callback = function(Value)
            autoGucciActiveTrain = Value

            if Value then
                startAntiGucciTrain()
                task.spawn(function()
                    while autoGucciActiveTrain do
                        local trainFolder = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("AlwaysHereTweenedObjects")
                        local trainExists = trainFolder and trainFolder:FindFirstChild('Train')

                        if not trainExists then
                            stopAntiGucciTrain()

                            local retries = 0
                            repeat
                                task.wait(0.2)
                                retries = retries + 1
                                trainFolder = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("AlwaysHereTweenedObjects")
                            until (trainFolder and trainFolder:FindFirstChild('Train')) or retries > 25 or not autoGucciActiveTrain

                            if autoGucciActiveTrain and trainFolder and trainFolder:FindFirstChild('Train') then
                                startAntiGucciTrain()
                            end
                        end

                        task.wait(0.5)
                    end
                end)
            else
                autoGucciActiveTrain = false
                stopAntiGucciTrain()
            end
        end
    })
end

AntiFuncSection:AddCheckbox("PaintDeleteToggle", {
    Text = "Anti-Paint",
    Default = false,
    Callback = function(Value)
        if Value then
            deleteAllPaintParts()
            watchNewPaintParts()
            setTouchQuery(false)
        else
            restorePaintParts()
            disconnectWatchers()
            setTouchQuery(true)
        end
    end
})

do
    local Players = game:GetService('Players')
    local Workspace = game:GetService('Workspace')
    local LocalPlayer = Players.LocalPlayer
    local cons = {}
    
    AntiFuncSection:AddCheckbox('AntiBurn_Pizdec', {
        Text = 'Anti-Burn',
        Tooltip = 'Stops you from being burnt by a fire',
        Default = false,
    }):OnChanged(function(v)
        local char = LocalPlayer.Character
        local hum = char and char:FindFirstChild('Humanoid')
        local HRP = char and char:FindFirstChild('HumanoidRootPart')

        if v then
            cons.antiburn1 = LocalPlayer.CharacterAdded:Connect(function(ch)
                if cons.antiburn then
                    cons.antiburn:Disconnect()
                end

                cons.antiburn = ch:WaitForChild('Humanoid', 0.5).FireDebounce.Changed:Connect(function()
                    if ch:WaitForChild('Humanoid', 0.5).FireDebounce.Value == true then
                        local bar = Workspace.Plots.Plot1.Barrier.PlotBarrier
                        local pos = bar.CFrame

                        task.spawn(function()
                            repeat
                                task.wait()
                                bar.CFrame = ch:WaitForChild('HumanoidRootPart').CFrame
                            until not ch:WaitForChild('Humanoid').FireDebounce.Value
                        end)
                        task.wait(1)

                        ch:WaitForChild('Humanoid', 0.5).FireDebounce.Value = false

                        task.wait()

                        bar.CFrame = pos
                    end
                end)
            end)
            
            if hum then
                cons.antiburn = hum.FireDebounce.Changed:Connect(function()
                    if hum.FireDebounce.Value == true then
                        local bar = Workspace.Plots.Plot1.Barrier.PlotBarrier
                        local pos = bar.CFrame

                        task.spawn(function()
                            repeat
                                task.wait()
                                bar.CFrame = HRP.CFrame
                            until not hum.FireDebounce.Value
                        end)
                        task.wait(1)

                        hum.FireDebounce.Value = false

                        task.wait()

                        bar.CFrame = pos
                    end
                end)
            end
        else
            if cons.antiburn then
                cons.antiburn:Disconnect()
            end
            if cons.antiburn1 then
                cons.antiburn1:Disconnect()
            end
        end
    end)
end

do
    local RunService = game:GetService('RunService')
    local LocalPlayer = game:GetService('Players').LocalPlayer
    local explosionConnection = nil
    local gucciActive = false

    local function startExplosionProtection()
        if explosionConnection then
            return
        end

        explosionConnection = workspace.ChildAdded:Connect(function(c)
            if not gucciActive then
                return
            end
            local char = LocalPlayer.Character
            local HRP = char and char:FindFirstChild('HumanoidRootPart')
            local hum = char and char:FindFirstChild('Humanoid')

            if c.Name == 'Part' or c.Name == 'Explosion' or c:IsA('Explosion') then
                local pos = c:IsA('BasePart') and c.Position or (c:FindFirstChildWhichIsA('BasePart') and c:FindFirstChildWhichIsA('BasePart').Position)

                if pos and HRP and (pos - HRP.Position).Magnitude < 50 then
                    HRP.Anchored = true

                    task.wait(0.05)

                    HRP.Anchored = false

                    if HRP then
                        HRP.AssemblyLinearVelocity = Vector3.zero
                        HRP.AssemblyAngularVelocity = Vector3.zero
                    end
                    if hum then
                        hum:ChangeState(Enum.HumanoidStateType.Running)
                    end
                end
            end
        end)
    end

    local function stopExplosionProtection()
        if explosionConnection then
            pcall(function()
                explosionConnection:Disconnect()
            end)
            explosionConnection = nil
        end
    end

    AntiFuncSection:AddCheckbox('ExplosionProtection_Pizdec', {
        Text = 'Anti-Explosion',
        Default = false,
    }):OnChanged(function(state)
        gucciActive = state
        if state then
            startExplosionProtection()
        else
            stopExplosionProtection()
        end
    end)
end

do
    local Players = game:GetService('Players')
    local ReplicatedStorage = game:GetService('ReplicatedStorage')
    local Workspace = game:GetService('Workspace')
    local LocalPlayer = Players.LocalPlayer

    AntiFuncSection:AddCheckbox('AntiBombToggle_Pizdec', {
        Text = 'Anti-Explosion Spawn [<b>Oven</b>]',
        Tooltip = 'Uses oven to explode any explodables spawned',
        Default = false,
    }):OnChanged(function(state)
        if state then
            if getgenv().AntiBombRunning then
                return
            end

            getgenv().AntiBombRunning = true
            local SetupCoordinate = Vector3.new(484, 134, 207)

            local TargetBombNames = {
                BombMissile = true,
                BombDarkMatter = true,
                BombBalloon = true,
                BallSnowball = true,
                BalloonModel = true,
            }
            local ButtonSequence = {
                'ButtonOven',
            }
            local spawnRemote = ReplicatedStorage:WaitForChild('MenuToys'):WaitForChild('SpawnToyRemoteFunction')
            local interactRemote = ReplicatedStorage:WaitForChild('GrabEvents'):WaitForChild('SetNetworkOwner')

            local function SpawnOvenAndAcquire()
                local Character = LocalPlayer.Character
                local Humanoid = Character and Character:FindFirstChild('Humanoid')
                local HumanoidRootPart = Character and Character:FindFirstChild('HumanoidRootPart')

                if not Character or not Humanoid or Humanoid.Health <= 0 or not HumanoidRootPart then
                    return nil
                end

                local OriginalCFrame = HumanoidRootPart.CFrame
                local myToyFolderName = LocalPlayer.Name .. 'SpawnedInToys'
                local myToyFolder = Workspace:FindFirstChild(myToyFolderName)

                if myToyFolder then
                    local existingOven = myToyFolder:FindFirstChild('OvenDarkGray')
                    if existingOven then
                        existingOven:Destroy()
                        task.wait(0.1)
                    end
                end
                
                HumanoidRootPart.CFrame = CFrame.new(SetupCoordinate)
                local spawnPos = HumanoidRootPart.CFrame * CFrame.new(0, 1, 5)

                task.spawn(function()
                    spawnRemote:InvokeServer('OvenDarkGray', spawnPos, Vector3.new(0, 0, 0))
                end)

                myToyFolder = Workspace:WaitForChild(myToyFolderName, 5)
                local myOven = myToyFolder:WaitForChild('OvenDarkGray', 5)
                if not myOven then return nil end

                local ovenMain = myOven:WaitForChild('Main', 3)
                task.wait(0.12)
                
                if HumanoidRootPart and ovenMain then
                    HumanoidRootPart.CFrame = ovenMain.CFrame * CFrame.new(0, 0, 5)
                end

                local soundPart = myOven:WaitForChild('SoundPart', 3)
                if soundPart then
                    interactRemote:FireServer(soundPart, soundPart.CFrame)
                end

                for _, btnName in ipairs(ButtonSequence) do
                    local btn = myOven:FindFirstChild(btnName) or myOven:WaitForChild(btnName, 1)
                    if btn then
                        interactRemote:FireServer(btn, btn.CFrame)
                    end
                end

                HumanoidRootPart.CFrame = OriginalCFrame
                return myOven
            end

            task.spawn(function()
                local myOven = nil
                local ovenMain = nil
                local ReturnYCoordinate = 70000

                while getgenv().AntiBombRunning do
                    local Character = LocalPlayer.Character
                    if not Character or not Character:FindFirstChild('Humanoid') or Character.Humanoid.Health <= 0 then
                        task.wait(1)
                        continue
                    end

                    if not myOven or not myOven.Parent then
                        myOven = SpawnOvenAndAcquire()
                        if myOven then ovenMain = myOven:FindFirstChild('Main') end
                    end

                    local foundTarget = nil
                    for _, folder in pairs(Workspace:GetChildren()) do
                        if string.sub(folder.Name, -13) == 'SpawnedInToys' and folder.Name ~= LocalPlayer.Name .. 'SpawnedInToys' then
                            for _, toy in pairs(folder:GetChildren()) do
                                if TargetBombNames[toy.Name] then
                                    foundTarget = toy
                                    break
                                end
                            end
                        end
                        if foundTarget then break end
                    end

                    if foundTarget and myOven and ovenMain then
                        local targetCFrame = foundTarget:GetPivot()
                        for i = 1, 15 do
                            if not foundTarget.Parent or not myOven.Parent then break end
                            ovenMain.CFrame = CFrame.new(targetCFrame.Position)
                            task.wait()
                            ovenMain.CFrame = CFrame.new(targetCFrame.Position.X, ReturnYCoordinate, targetCFrame.Position.Z)
                            task.wait()
                        end
                    else
                        if ovenMain then
                            ovenMain.CFrame = CFrame.new(math.sin(tick()*30)*150, ReturnYCoordinate, math.cos(tick()*30)*150)
                        end
                        task.wait()
                    end
                end
            end)
        else
            getgenv().AntiBombRunning = false
        end
    end)
end

local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local plr = Players.LocalPlayer

local AntiKickItemActive = false
local MyPCLD = nil
local pcldConn = nil

local selectedInputLagToy = "SpookyCandle1"

local ToyList = {
    ["Spooky Candle"]    = "SpookyCandle1",
    ["Clock"]    = "ClockAlarm",
}

local DropdownValues = {}
for shortName, _ in pairs(ToyList) do
    table.insert(DropdownValues, shortName)
end
table.sort(DropdownValues)

selectedInputLagToy = ToyList["Spooky Candle"] or ToyList[DropdownValues[1]]

ExtraDefSection:AddDropdown("InputLagToyDropdown", {
    Title = "Anti-Kick item",
    Values = DropdownValues,  
    Default = "Spooky Candle", 
    Callback = function(Value)
        selectedInputLagToy = ToyList[Value]
    end,
})

local function GetMagnitude(Part1, Part2)
    return (Part1.Position - Part2.Position).Magnitude
end

local function FWD(parent, part, timeOffset)
    return parent:FindFirstChild(part) or parent:WaitForChild(part, timeOffset or 1)
end

local function CFP(parent, part)
    return parent:FindFirstChild(part) ~= nil  
end

local function CheckNetworkOwnerOnPart(Part) 
    local po = Part:FindFirstChild("PartOwner")
    return po and po.Value == plr.Name
end

local function sno(part)
    pcall(function()
        local grabEvents = RS:FindFirstChild("GrabEvents")
        local setNetOwner = grabEvents and grabEvents:FindFirstChild("SetNetworkOwner")
        if setNetOwner then
            setNetOwner:FireServer(part, part.CFrame)
        end
    end)
end

local function CheckForHome()
    local plotItems = workspace:FindFirstChild("PlotItems")
    local plots = workspace:FindFirstChild("Plots")
    
    if plots and plotItems then
        for i = 1, 5 do 
            local Plot = plots:FindFirstChild("Plot"..i)
            if Plot then
                local sign = Plot:FindFirstChild("PlotSign")
                local owners = sign and sign:FindFirstChild("ThisPlotsOwners")
                if owners then
                    for _,v in pairs(owners:GetChildren()) do 
                        if v.Value == plr.Name then 
                            return plotItems:FindFirstChild("Plot"..i)
                        end
                    end
                end
            end
        end
    end
    return nil
end

local function SpawnToy(ToyName)
    local InPlot = plr:FindFirstChild("InPlot")
    local InOwnedPlot = plr:FindFirstChild("InOwnedPlot")
    local CanSpawnToy = plr:FindFirstChild("CanSpawnToy")
    local inv = workspace:FindFirstChild(plr.Name.."SpawnedInToys")

    if InPlot and InPlot.Value and InOwnedPlot and not InOwnedPlot.Value then 
        InPlot:GetPropertyChangedSignal("Value"):Wait()
    end 
    if CanSpawnToy and not CanSpawnToy.Value then 
        CanSpawnToy:GetPropertyChangedSignal("Value"):Wait()
    end

    local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil end

    local SpawnCF = (MyPCLD or hrp).CFrame * CFrame.new(0, 14, 20)
    local Container = (InOwnedPlot and InOwnedPlot.Value) and CheckForHome() or inv
    if not Container then return nil end

    local spawnedObject = nil
    local connection
    connection = Container.ChildAdded:Connect(function(child)
        if child.Name == ToyName then
            spawnedObject = child
        end
    end)

    task.spawn(function()
        pcall(function()
            local menuToys = RS:FindFirstChild("MenuToys")
            local spawnRemote = menuToys and menuToys:FindFirstChild("SpawnToyRemoteFunction")
            if spawnRemote then
                spawnRemote:InvokeServer(ToyName, SpawnCF, Vector3.zero)
            end
        end)
    end)

    local start = tick()
    repeat task.wait() until spawnedObject or (tick() - start) > 2.5

    if connection then connection:Disconnect() end
    return spawnedObject
end

local function FindPCLD(hrp)
    if pcldConn then pcldConn:Disconnect() end
    MyPCLD = nil
    pcldConn = RunService.Heartbeat:Connect(function()
        if MyPCLD or not hrp or not hrp.Parent then 
            if pcldConn then pcldConn:Disconnect() pcldConn = nil end
            return
        end
        for _, v in pairs(workspace:GetChildren()) do 
            if v.Name == "PlayerCharacterLocationDetector" and v:IsA("BasePart") then
                if GetMagnitude(v, hrp) <= 2 then 
                    MyPCLD = v
                    break
                end
            end
        end
    end)
end

ExtraDefSection:AddCheckbox("ShurikenAntiKickToggle", {
    Text = "Anti-Kick (Item)",
    Default = false,
    Callback = function(Value)
        if SetToggleState then SetToggleState("AntiKickItemFlag", Value) end
        AntiKickItemActive = Value 
        
        if Value then
            task.spawn(function()
                local Item, SoundPart
                while AntiKickItemActive and task.wait() do 
                    local char = plr.Character
                    local hrp = char and char:FindFirstChild("HumanoidRootPart")
                    local hum = char and char:FindFirstChild("Humanoid")
                    local inPlot = plr:FindFirstChild("InPlot")
                    local inv = workspace:FindFirstChild(plr.Name.."SpawnedInToys")
                    local destroyToy = RS:FindFirstChild("MenuToys") and RS.MenuToys:FindFirstChild("DestroyToy")
                    
                    if not hrp or not hum or hum.Health <= 0 or not inv then continue end  
                    if inPlot and inPlot.Value then continue end 
                    
                    if not MyPCLD and not pcldConn then
                        FindPCLD(hrp)
                    end

                    Item = inv:FindFirstChild("AntiKickItem") 
                    SoundPart = Item and Item:FindFirstChild("Hitbox")
                    
                    if not Item or not SoundPart then
                        for _,v in pairs(inv:GetChildren()) do 
                            if v.Name == "AntiKickItem" then 
                                pcall(function() destroyToy:FireServer(v) end)
                            end
                        end
                        
                        Item = SpawnToy(selectedInputLagToy)
                        if not Item then continue end 
                        
                        SoundPart = Item and FWD(Item, "Hitbox", 0.5)
                        if SoundPart then sno(SoundPart) end
                        
                        for _,v in pairs(Item:GetChildren()) do 
                            if v:IsA("BasePart") then 
                                v.CanCollide = false 
                                v.Transparency = 0.8
                                v.Color = Color3.fromRGB(0, 255, 255)
                            end
                        end
                        
                        Item.Name = "AntiKickItem"
                    end
                    
                    if SoundPart and not CheckNetworkOwnerOnPart(SoundPart) then 
                        sno(SoundPart)
                    end
                    
                    local warpSpeed = 15

            local targetPart = MyPCLD or hrp:FindFirstChild("FirePlayerPart") or hrp
                if SoundPart and targetPart then
            local dt = task.wait() 
            local alpha = 1 - math.exp(-warpSpeed * dt)
    
            local targetCFrame
                if selectedInputLagToy == "SpookyCandle1" then
            targetCFrame = targetPart.CFrame * CFrame.new(0, 0.65, 0.3) * CFrame.Angles(math.rad(0), 0, 0)
        else
            targetCFrame = targetPart.CFrame * CFrame.new(0, 0.60, 0.3) * CFrame.Angles(0, math.rad(90), math.rad(90))
        end
    
                        SoundPart.CFrame = SoundPart.CFrame:Lerp(targetCFrame, alpha)
    
                        SoundPart.AssemblyLinearVelocity = Vector3.zero
                        SoundPart.AssemblyAngularVelocity = Vector3.zero
                    end
                end
            end)
        else
            if pcldConn then pcldConn:Disconnect() pcldConn = nil end
            MyPCLD = nil
            
            task.spawn(function()
                local inv = workspace:FindFirstChild(plr.Name.."SpawnedInToys")
                local destroyToy = RS:FindFirstChild("MenuToys") and RS.MenuToys:FindFirstChild("DestroyToy")
                if inv and destroyToy then
                    for _,v in pairs(inv:GetChildren()) do 
                        if v.Name == "AntiKickItem" then 
                            pcall(function() destroyToy:FireServer(v) end)
                        end
                    end
                end
            end)
        end
    end
})

plr.CharacterAdded:Connect(function(char)
    if AntiKickItemActive then
        MyPCLD = nil
        local hrp = char:WaitForChild("HumanoidRootPart", 5)
        if hrp then FindPCLD(hrp) end
    end
end)

local shurikenRespawnPending = false

plr.CharacterAdded:Connect(function(char)
    if getgenv().AntiKickEnabled then
        shurikenRespawnPending = true
    end
end)

local antiKickThread
AntiFuncSection:AddCheckbox("ShurikenAntiKickToggle", {
    Text = "Anti-Kick [<b>Shuriken</b>]",
    Default = false,
    Callback = function(Value)
        getgenv().AntiKickEnabled = Value
        
        if Value then
            if antiKickThread then return end 

            antiKickThread = task.spawn(function()
                local plr = game.Players.LocalPlayer
                local inv = workspace[plr.Name.."SpawnedInToys"]

                local setOwner = game.ReplicatedStorage:WaitForChild("GrabEvents"):WaitForChild("SetNetworkOwner")
                local stickyEvent = game.ReplicatedStorage:WaitForChild("PlayerEvents"):WaitForChild("StickyPartEvent")
                local destroyrem = game.ReplicatedStorage:WaitForChild("MenuToys"):WaitForChild("DestroyToy")
                local canSpawn = plr:WaitForChild("CanSpawnToy")

                local function getHRP()
                    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                        return plr.Character.HumanoidRootPart
                    else
                        local character = plr.CharacterAdded:Wait()
                        return character:WaitForChild("HumanoidRootPart")
                    end
                end

                local function CheckForHome()
                    local ToyFolder
                    if not workspace.PlotItems.PlayersInPlots:FindFirstChild(plr.Name) then 
                        return false
                    end
                    for _, v in pairs(workspace.Plots:GetChildren()) do
                        for _, b in pairs(v.PlotSign.ThisPlotsOwners:GetChildren()) do
                            if b.Value == plr.Name then
                                ToyFolder = workspace.PlotItems[v.Name]
                            end
                        end
                    end
                    if ToyFolder then 
                        return true, ToyFolder
                    else 
                        return false
                    end
                end

                local function StickKunai(kunai)
                    if not kunai or not kunai:FindFirstChild("StickyPart") then return end
                    if not getgenv().AntiKickEnabled then return end

                    local currentHRP = getHRP()
                    
                    if kunai:FindFirstChild("SoundPart") then
                        if not kunai["SoundPart"]:FindFirstChild("PartOwner") or kunai["SoundPart"].PartOwner.Value ~= plr.Name then 
                            setOwner:FireServer(kunai.SoundPart, kunai.SoundPart.CFrame)
                        end
                    end
                    
                    stickyEvent:FireServer(
                        kunai.StickyPart,
                        currentHRP:FindFirstChild("FirePlayerPart") or currentHRP:WaitForChild("FirePlayerPart"),
                        CFrame.new(0,0,0) * CFrame.Angles(math.rad(90), math.rad(45), math.rad(0))
                    )
                    
                    for _, obj in pairs(kunai:GetChildren()) do
                        if obj.Name == "Pyramid" then
                            obj.CanTouch = false
                            obj.CanCollide = false
                            obj.CanQuery = false
                            obj.Transparency = 0
                            local high = Instance.new("Highlight")
                            high.FillColor = Color3.fromRGB(0, 0, 0)
                            high.Parent = obj

                        elseif obj.Name == "Main" then
                            obj.CanTouch = false
                            obj.CanCollide = false
                            obj.CanQuery = false
                            obj.Transparency = 0
                            local high = Instance.new("Highlight")
                            high.FillColor = Color3.fromRGB(255, 255, 255)
                            high.Parent = obj

                        elseif obj:IsA("BasePart") then
                            obj.CanTouch = false
                            obj.CanCollide = false
                            obj.CanQuery = false
                            obj.Transparency = 1
                        end
                    end
                end

                local function ClearKunai()
                    if inv then
                        for _,v in pairs(inv:GetChildren()) do
                            if v.Name == "AntiKick" or v.Name == "NinjaShuriken" then
                                destroyrem:FireServer(v)
                            end
                        end
                    end
                end

                local function SpawnToy(name)
                    while not canSpawn.Value and getgenv().AntiKickEnabled do
                        canSpawn.Changed:Wait()
                    end
                    if not getgenv().AntiKickEnabled then return nil end

                    local currentHRP = getHRP()
                    
                    task.spawn(function()
                        game.ReplicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer(
                            name,
                            currentHRP.CFrame * CFrame.new(0, 12, 20),
                            Vector3.new(0,0,0)
                        )
                    end)
                    
                    local boolik, house = CheckForHome()
                    if boolik then 
                        return house:WaitForChild(name, 2)
                    elseif not workspace.PlotItems.PlayersInPlots:FindFirstChild(plr.Name) then 
                        return inv:WaitForChild(name, 2)
                    elseif workspace.PlotItems.PlayersInPlots:FindFirstChild(plr.Name) and not boolik then 
                        return nil
                    end
                end

                ClearKunai()

                while getgenv().AntiKickEnabled do 
                    task.wait(0.005)

                    if not plr.Character or not plr.Character:FindFirstChild("Humanoid") or plr.Character.Humanoid.Health <= 0 then 
                        continue 
                    end

                    if shurikenRespawnPending then
                        if plr.Character:FindFirstChild("HumanoidRootPart") then
                            shurikenRespawnPending = false
                            ClearKunai()
                        else
                            continue
                        end
                    end
                    
                    local kunai = inv:FindFirstChild("NinjaShuriken") or inv:FindFirstChild("AntiKick")
                    
                    if workspace.PlotItems.PlayersInPlots:FindFirstChild(plr.Name) then 
                        local boolik, house = CheckForHome()
                        if boolik and house and workspace.Plots:FindFirstChild(house.Name) and workspace.Plots:FindFirstChild(house.Name)["PlotSign"]["ThisPlotsOwners"]:FindFirstChild("Value") and workspace.Plots:FindFirstChild(house.Name)["PlotSign"]["ThisPlotsOwners"]["Value"]["TimeRemainingNum"].Value > 89 then 
                            kunai = SpawnToy("NinjaShuriken")
                            if kunai == nil then continue end
                            kunai.Name = "AntiKick" 
                            StickKunai(kunai)
                        end
                    end
                    
                    if not kunai then
                        if workspace.PlotItems.PlayersInPlots:FindFirstChild(plr.Name) then continue end 
                        kunai = SpawnToy("NinjaShuriken")
                        if kunai == nil then continue end 
                        kunai.Name = "AntiKick"
                        if not kunai then continue end 
                    end
                    
                    repeat
                        if kunai and kunai:FindFirstChild("StickyPart") and kunai.StickyPart.CanTouch == true then
                            StickKunai(kunai)
                            kunai.Name = "AntiKick"
                        end
                        wait(0.05)
                    until not kunai or not getgenv().AntiKickEnabled 
                        or not kunai:FindFirstChild("StickyPart")
                        or kunai.StickyPart.CanTouch == false 
                        or not plr.Character or not plr.Character:FindFirstChild("HumanoidRootPart") 
                        or (plr.Character.HumanoidRootPart.Position - kunai.StickyPart.Position).Magnitude >= 20

                    if not getgenv().AntiKickEnabled then break end

                    if not kunai or not kunai:FindFirstChild("StickyPart") or not plr.Character or not plr.Character:FindFirstChild("HumanoidRootPart") or (plr.Character.HumanoidRootPart.Position - kunai.StickyPart.Position).Magnitude >= 20 then 
                        ClearKunai()
                    end 
                    
                    pcall(function()
                        repeat
                            wait(0.05)
                        until not getgenv().AntiKickEnabled or not plr.Character or not plr.Character:FindFirstChild("Humanoid") or not kunai or not kunai:FindFirstChild("StickyPart") or not kunai.StickyPart:FindFirstChild("StickyWeld") or not kunai.StickyPart.StickyWeld.Part1
                        
                        if not getgenv().AntiKickEnabled then return end

                        if not kunai or not kunai:FindFirstChild("StickyPart") or (plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health <= 0) or not kunai["StickyPart"]:FindFirstChild("StickyWeld").Part1 then 
                            ClearKunai()
                        end
                    end)
                end

                ClearKunai()
                antiKickThread = nil
            end)
        else
            pcall(function()
                local plr = game.Players.LocalPlayer
                local inv = workspace[plr.Name.."SpawnedInToys"]
                local destroyrem = game.ReplicatedStorage:WaitForChild("MenuToys"):WaitForChild("DestroyToy")
                
                if inv then
                    for _, v in pairs(inv:GetChildren()) do
                        if v.Name == "AntiKick" or v.Name == "NinjaShuriken" then
                            destroyrem:FireServer(v)
                        end
                    end
                end
            end)
            antiKickThread = nil
        end
    end
})

AntiFuncSection:AddCheckbox("AntiKick", {
    Text = "Anti-Kick [<b>Pickaxe</b>]",
    Default = false,
    Callback = function(on)
        _G.ShurikenAntiKick = on

        local function ClearKunai()
            local inv = workspace:FindFirstChild(LocalPlayer.Name.."SpawnedInToys")
            local destroyrem = ReplicatedStorage:FindFirstChild("MenuToys") and ReplicatedStorage.MenuToys:FindFirstChild("DestroyToy")
            if inv and destroyrem then
                for _, v in pairs(inv:GetChildren()) do
                    if v.Name == "AntiKick" or v.Name == "ToolPickaxe" then
                        pcall(function() destroyrem:FireServer(v) end)
                    end
                end
            end
        end

        if not on then
            _G.ShurikenAntiKick = false
            ClearKunai()
            return
        end

        task.spawn(function()
            local setOwner = ReplicatedStorage:WaitForChild("GrabEvents"):WaitForChild("SetNetworkOwner")
            local stickyEvent = ReplicatedStorage:WaitForChild("PlayerEvents"):WaitForChild("StickyPartEvent")
            local spawnRemote = ReplicatedStorage.MenuToys.SpawnToyRemoteFunction
            local destroyrem = ReplicatedStorage:WaitForChild("MenuToys"):WaitForChild("DestroyToy")
            local canSpawn = LocalPlayer:WaitForChild("CanSpawnToy")
            local resetGraceUntil = 0
            local respawnPending = false

            local function getHRP()
                local character = LocalPlayer.Character
                if character then
                    local hrp = character:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        return hrp
                    end

                    local waitHRP = character:WaitForChild("HumanoidRootPart", 5)
                    if waitHRP then
                        return waitHRP
                    end
                end

                local newCharacter = LocalPlayer.CharacterAdded:Wait()
                return newCharacter:WaitForChild("HumanoidRootPart", 5)
            end

            local function CheckForHome()
                if not workspace.PlotItems.PlayersInPlots:FindFirstChild(LocalPlayer.Name) then return false end
                for _, v in pairs(workspace.Plots:GetChildren()) do
                    local sign = v:FindFirstChild("PlotSign")
                    local owners = sign and sign:FindFirstChild("ThisPlotsOwners")
                    if owners then
                        for _, b in pairs(owners:GetChildren()) do
                            if b.Value == LocalPlayer.Name then
                                local folder = workspace.PlotItems:FindFirstChild(v.Name)
                                if folder then return true, folder end
                            end
                        end
                    end
                end
                return false
            end

            local function StickKunai(kunai)
                if not kunai or not kunai:FindFirstChild("StickyPart") then return end

                local currentHRP = getHRP()
                if not currentHRP then return end

                if kunai:FindFirstChild("SoundPart") then
                    local partOwner = kunai.SoundPart:FindFirstChild("PartOwner")
                    if not partOwner or partOwner.Value ~= LocalPlayer.Name then
                        setOwner:FireServer(kunai.SoundPart, kunai.SoundPart.CFrame)
                    end
                end

                local firePart = currentHRP:FindFirstChild("FirePlayerPart")
                if not firePart then
                    firePart = currentHRP:FindFirstChild("RootPart") or currentHRP
                end

                if firePart then
                    pcall(function()
                        stickyEvent:FireServer(kunai.StickyPart, firePart,
                            CFrame.new(0, 0, 0.7) * CFrame.Angles(math.rad(90), 0, 0) * CFrame.Angles(0, math.rad(135), 0)
                        )
                    end)
                end
            end

            local function FindExistingKunai()
                local inv = workspace:FindFirstChild(LocalPlayer.Name.."SpawnedInToys")
                if inv then
                    local existing = inv:FindFirstChild("AntiKick") or inv:FindFirstChild("ToolPickaxe")
                    if existing then return existing end
                end

                local boolik, house = CheckForHome()
                if boolik and house then
                    local existing = house:FindFirstChild("AntiKick") or house:FindFirstChild("ToolPickaxe")
                    if existing then return existing end
                end

                return nil
            end

            local function SpawnToy(name)
                local t = tick()
                while not canSpawn.Value do
                    if not _G.ShurikenAntiKick or tick() - t > 5 then return nil end
                    task.wait(0.1)
                end

                local currentHRP = getHRP()
                if currentHRP then
                    task.spawn(function()
                        pcall(function()
                            spawnRemote:InvokeServer(name, currentHRP.CFrame * CFrame.new(0, 9, 20), Vector3.new(0, 0, 0))
                        end)
                    end)
                end

                for attempt = 1, 8 do
                    local existing = FindExistingKunai()
                    if existing then
                        return existing
                    end
                    task.wait(0.2)
                    if not _G.ShurikenAntiKick then return nil end
                end

                return nil
            end

            local function ClearKunaiSafe()
                if os.clock() < resetGraceUntil then
                    return false
                end
                ClearKunai()
                return true
            end

            local function SpawnAndStick(name)
                local spawned = SpawnToy(name)
                if not spawned then
                    task.wait(0.1)
                    spawned = SpawnToy(name)
                end
                if not spawned then return nil end
                spawned.Name = "AntiKick"
                task.wait(0.05)
                StickKunai(spawned)
                return spawned
            end

            local function TryAttachPickaxe()
                if not _G.ShurikenAntiKick then return nil end

                for attempt = 1, 6 do
                    local currentChar = LocalPlayer.Character
                    local hum = currentChar and currentChar:FindFirstChild("Humanoid")
                    if not currentChar or not hum or hum.Health <= 0 then
                        task.wait(0.25)
                    else
                        local currentHRP = getHRP()
                        if currentHRP then
                            local existing = FindExistingKunai()
                            if existing then
                                existing.Name = "AntiKick"
                                StickKunai(existing)
                                return existing
                            end

                            local spawned = SpawnAndStick("ToolPickaxe")
                            if spawned then
                                return spawned
                            end
                        end
                        task.wait(0.25)
                    end
                end

                return nil
            end

            LocalPlayer.CharacterAdded:Connect(function()
                if _G.ShurikenAntiKick then
                    respawnPending = true
                    resetGraceUntil = os.clock() + 4.5
                    ClearKunai()
                    task.delay(0.2, function()
                        pcall(TryAttachPickaxe)
                    end)
                    task.delay(0.9, function()
                        pcall(TryAttachPickaxe)
                    end)
                    task.delay(2.0, function()
                        pcall(TryAttachPickaxe)
                    end)
                end
            end)

            while _G.ShurikenAntiKick do
                task.wait(0.005)
                if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("Humanoid") or LocalPlayer.Character.Humanoid.Health <= 0 then
                    task.wait(0.05)
                    continue
                end

                if respawnPending and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    respawnPending = false
                end
                local inv = workspace:FindFirstChild(LocalPlayer.Name.."SpawnedInToys")
                local kunai = inv and inv:FindFirstChild("ToolPickaxe")
                if workspace.PlotItems.PlayersInPlots:FindFirstChild(LocalPlayer.Name) then
                    local boolik, house = CheckForHome()
                    if boolik and house and workspace.Plots:FindFirstChild(house.Name) then
                        local sign = workspace.Plots[house.Name]:FindFirstChild("PlotSign")
                        if sign and sign.ThisPlotsOwners.Value.TimeRemainingNum.Value > 89 then
                            kunai = SpawnAndStick("ToolPickaxe")
                            if kunai == nil then continue end
                        end
                    end
                end
                if not kunai then
                    if workspace.PlotItems.PlayersInPlots:FindFirstChild(LocalPlayer.Name) then continue end
                    kunai = TryAttachPickaxe()
                    if kunai == nil then continue end
                end

                if kunai and (not kunai:FindFirstChild("StickyPart") or not kunai.StickyPart:FindFirstChild("StickyWeld") or not kunai.StickyPart.StickyWeld.Part1) then
                    kunai = TryAttachPickaxe()
                    if kunai == nil then continue end
                end

                if kunai and kunai:FindFirstChild("SoundPart") then
                    local soundPart = kunai.SoundPart
                    local partOwner = soundPart:FindFirstChild("PartOwner")
                    local currentHRP = getHRP()
                    if currentHRP and partOwner and partOwner.Value ~= LocalPlayer.Name then
                        local dist = (currentHRP.Position - soundPart.Position).Magnitude
                        if dist <= 20 then
                            pcall(function()
                                setOwner:FireServer(soundPart, soundPart.CFrame)
                                local firePart = currentHRP:FindFirstChild("FirePlayerPart") or currentHRP:WaitForChild("FirePlayerPart", 5)
                                if firePart and kunai:FindFirstChild("StickyPart") then
                                    stickyEvent:FireServer(kunai.StickyPart, firePart,
                                        CFrame.new(0, 0, 0.7) * CFrame.Angles(math.rad(90), 0, 0) * CFrame.Angles(0, math.rad(135), 0)
                                    )
                                end
                            end)
                        end
                    end
                end

                repeat
                    if kunai and kunai:FindFirstChild("StickyPart") and kunai.StickyPart.CanTouch == true then
                        StickKunai(kunai)
                        kunai.Name = "AntiKick"
                    end
                    task.wait(0.3)
                until not kunai or not _G.ShurikenAntiKick or not kunai:FindFirstChild("StickyPart") or kunai.StickyPart.CanTouch == false or not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or not kunai:FindFirstChild("StickyPart") or (LocalPlayer.Character.HumanoidRootPart.Position - kunai.StickyPart.Position).Magnitude >= 20
                if not kunai or not kunai:FindFirstChild("StickyPart") or not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or (LocalPlayer.Character.HumanoidRootPart.Position - kunai.StickyPart.Position).Magnitude >= 20 then
                    ClearKunaiSafe()
                end
                pcall(function()
                    repeat task.wait(0.05) until not _G.ShurikenAntiKick or not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("Humanoid") or not kunai or not kunai:FindFirstChild("StickyPart") or not kunai.StickyPart:FindFirstChild("StickyWeld") or not kunai.StickyPart.StickyWeld.Part1
                    if not kunai or not kunai:FindFirstChild("StickyPart") or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.Health <= 0) or not kunai["StickyPart"]:FindFirstChild("StickyWeld").Part1 then
                        ClearKunaiSafe()
                    end
                end)
            end
        end)
    end
})

AntiFuncSection:AddCheckbox("NewPlotAntiKickToggle", {
    Text = "Anti-Kick [<b>Shuriken + Plot</b>] BETA",
    Default = false,
    Callback = function(Value)
        if Value and not arePlotBarriersBroken() then
            notify("Error", "Для Anti-Kick (Shuriken + Plot) BETA нужны сломанные барьеры!", 3)
            task.defer(function()
                if Toggles.NewPlotAntiKickToggle then
                    Toggles.NewPlotAntiKickToggle:SetValue(false)
                end
            end)
            return
        end

        _G.NewPlotAntiKick = Value
        local plr = game:GetService("Players").LocalPlayer
        local RS = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")

        if Value then
            task.spawn(function()
                local GE = RS:WaitForChild("GrabEvents", 5) 
                local setOwner = GE and GE:WaitForChild("SetNetworkOwner", 5)
                local PE = RS:WaitForChild("PlayerEvents", 5) 
                local stickyEvent = PE and PE:WaitForChild("StickyPartEvent", 5)
                local MT = RS:WaitForChild("MenuToys", 5) 
                local spawnRemote = MT and MT:WaitForChild("SpawnToyRemoteFunction", 5)
                local canSpawn = plr:WaitForChild("CanSpawnToy", 5)

                if not (setOwner and stickyEvent and spawnRemote and canSpawn) then
                    _G.NewPlotAntiKick = false
                    return
                end

                local function getHRP()
                    local char = plr.Character or plr.CharacterAdded:Wait()
                    return char:WaitForChild("HumanoidRootPart")
                end

                local function isPlotFree(plot)
                    local sign = plot:FindFirstChild("PlotSign")
                    if not sign then return false end
                    local limit = sign:FindFirstChild("ToysLimitNum")
                    if limit and limit:IsA("IntValue") and limit.Value == 0 then
                        return true
                    end
                    local owners = sign:FindFirstChild("ThisPlotsOwners")
                    if owners then
                        for _, desc in ipairs(owners:GetDescendants()) do
                            if desc.Name == "TimeRemainingNum" then
                                local valObj = desc.Parent
                                if valObj and valObj:IsA("StringValue") and valObj.Value ~= "" and valObj.Value ~= plr.Name then
                                    return false 
                                end
                            end
                        end
                    end
                    return true 
                end

                local function checkMyPlot()
                    for i = 1, 5 do
                        local plot = Workspace.Plots:FindFirstChild("Plot"..i)
                        if plot then
                            local sign = plot:FindFirstChild("PlotSign")
                            if sign then
                                for _, desc in ipairs(sign:GetDescendants()) do
                                    if desc.Name == "TimeRemainingNum" then
                                        local valObj = desc.Parent
                                        if valObj and valObj:IsA("StringValue") and valObj.Value == plr.Name then
                                            return plot
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return nil
                end

                local function claimPlot(plot)
                    local sign = plot:FindFirstChild("PlotSign")
                    if not sign then return end
                    local grabPart = nil
                    for _, desc in ipairs(sign:GetDescendants()) do
                        if desc:IsA("BasePart") and desc.Name == "PlusGrabPart" then
                            grabPart = desc
                            break
                        end
                    end
                    if grabPart then
                        local hrp = getHRP()
                        local hum = plr.Character:FindFirstChild("Humanoid")
                        if hum then hum.Sit = false end 
                        
                        hrp.CFrame = grabPart.CFrame * CFrame.new(0, 3, 0)
                        hrp.Velocity = Vector3.zero
                        task.wait(0.2)

                        local claimTimeout = tick()
                        while _G.NewPlotAntiKick and not checkMyPlot() do
                            pcall(function() setOwner:FireServer(grabPart, grabPart.CFrame) end)
                            task.wait(0.1)
                            if tick() - claimTimeout > 5 then break end
                        end
                    end
                end

                local function StickKunai(kunai)
                    if not kunai or not kunai:FindFirstChild("StickyPart") then return end
                    local currentHRP = getHRP()
                    if kunai:FindFirstChild("SoundPart") then
                        if not kunai.SoundPart:FindFirstChild("PartOwner") or kunai.SoundPart.PartOwner.Value ~= plr.Name then 
                            pcall(function() setOwner:FireServer(kunai.SoundPart, kunai.SoundPart.CFrame) end)
                        end
                    end
                    local firePart = currentHRP:FindFirstChild("FirePlayerPart") or currentHRP:WaitForChild("FirePlayerPart", 5)
                    if firePart then
                        pcall(function()
                            stickyEvent:FireServer(kunai.StickyPart, firePart, CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(90),math.rad(90)))
                        end)
                    end
                    for _, obj in pairs(kunai:GetChildren()) do
                        if obj.Name == "Pyramid" or obj.Name == "Main" or obj:IsA("BasePart") then
                            obj.CanTouch = false
                            obj.CanCollide = false
                            obj.CanQuery = false
                            obj.Transparency = obj.Name == "Main" and 0 or 1
                            if not obj:FindFirstChild("Highlight") then
                                local high = Instance.new("Highlight", obj)
                                high.FillColor = obj.Name == "Main" and Color3.fromRGB(255,255,255) or Color3.fromRGB(0,0,0)
                            end
                        end
                    end
                end

                local function SpawnToy(name, currentPlotName)
                    local t = tick()
                    while not canSpawn.Value and _G.NewPlotAntiKick do
                        if tick() - t > 5 then return nil end
                        task.wait(0.1)
                    end
                    local currentHRP = getHRP()
                    task.spawn(function()
                        pcall(function()
                            spawnRemote:InvokeServer(name, currentHRP.CFrame * CFrame.new(0, 12, 20), Vector3.new(0,0,0))
                        end)
                    end)
                    
                    local folder = Workspace.PlotItems:FindFirstChild(currentPlotName)
                    if folder then 
                        return folder:WaitForChild(name, 2)
                    end
                    return nil
                end

                local savedPosition = nil

                while _G.NewPlotAntiKick do
                    task.wait(0.05)

                    if not plr.Character or not plr.Character:FindFirstChild("Humanoid") or plr.Character.Humanoid.Health <= 0 then continue end
                    local hrp = getHRP()

                    local currentPlot = checkMyPlot()

                    if not currentPlot then
                        if not savedPosition then savedPosition = hrp.CFrame end

                        for i = 1, 5 do
                            local plot = Workspace.Plots:FindFirstChild("Plot"..i)
                            if plot and isPlotFree(plot) then
                                claimPlot(plot)
                                currentPlot = checkMyPlot()
                                if currentPlot then break end
                            end
                        end
                    else
                        local sign = currentPlot:FindFirstChild("PlotSign")
                        local plotItemsFolder = Workspace:FindFirstChild("PlotItems")
                        local playersInPlots = plotItemsFolder and plotItemsFolder:FindFirstChild("PlayersInPlots")
                        
                        local myPlotFolder = plotItemsFolder and plotItemsFolder:FindFirstChild(currentPlot.Name)
                        local kunai = myPlotFolder and (myPlotFolder:FindFirstChild("AntiKick") or myPlotFolder:FindFirstChild("NinjaShuriken"))

                        local imInPlot = playersInPlots and playersInPlots:FindFirstChild(plr.Name)
                        
                        if not imInPlot and sign then
                            if not savedPosition then savedPosition = hrp.CFrame end
                            local hum = plr.Character:FindFirstChild("Humanoid")
                            if hum then hum.Sit = false end
                            
                            hrp.CFrame = sign:GetPivot() * CFrame.new(0, 0, 10)
                            hrp.Velocity = Vector3.zero
                            task.wait(0.5) 
                        elseif imInPlot then
                            if not kunai then
                                kunai = SpawnToy("NinjaShuriken", currentPlot.Name)
                                if kunai then kunai.Name = "AntiKick" end
                            end

                            if kunai and kunai:FindFirstChild("StickyPart") then
                                local attemptStart = tick()
                                repeat
                                    if kunai.StickyPart.CanTouch == true then
                                        StickKunai(kunai)
                                        kunai.Name = "AntiKick"
                                    end
                                    task.wait(0.3)
                                until not kunai or not _G.NewPlotAntiKick or not kunai:FindFirstChild("StickyPart") 
                                    or kunai.StickyPart.CanTouch == false 
                                    or (hrp.Position - kunai.StickyPart.Position).Magnitude >= 20
                                    or tick() - attemptStart > 3

                                if kunai and kunai:FindFirstChild("StickyPart") and kunai.StickyPart.CanTouch == false then
                                    if savedPosition then
                                        task.wait(0.2)
                                        hrp.CFrame = savedPosition
                                        hrp.Velocity = Vector3.zero
                                        savedPosition = nil
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        else
            local RS = game:GetService("ReplicatedStorage")
            local destroyRem = RS:FindFirstChild("MenuToys") and RS.MenuToys:FindFirstChild("DestroyToy")
            if destroyRem then
                local plotItems = Workspace:FindFirstChild("PlotItems")
                if plotItems then
                    for i = 1, 5 do
                        local pFolder = plotItems:FindFirstChild("Plot"..i)
                        if pFolder then
                            for _, item in ipairs(pFolder:GetChildren()) do
                                if item.Name == "AntiKick" or item.Name == "NinjaShuriken" then
                                    pcall(function() destroyRem:FireServer(item) end)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
})

local antiLagLaggerLabel = AntiFuncSection:AddLabel("Lagger: None", true)

local function destroyAllGrabParts()
    for _, plr in pairs(Players:GetPlayers()) do
        if plr.Character and plr.Character:FindFirstChild("GrabParts") then
            plr.Character:FindFirstChild("GrabParts"):Destroy()
        end
    end
end

local function applyAntiLagDefault()
    LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("CharacterAndBeamMove").Disabled = true
    destroyAllGrabParts()
end

local function startAntiLagAutomatic(lagViewLabel)
    local LinesCount = 0
    local LinesPlayers = {}
    AGConnections["ALEvent"] = CreateGrabEvent.OnClientEvent:Connect(function(plr)
        LinesCount = LinesCount + 1
        if not LinesPlayers[plr] then
            LinesPlayers[plr] = 1
        else
            LinesPlayers[plr] = LinesPlayers[plr] + 1
        end
    end)
    task.defer(function()
        while antiLagType == "Automatic" and task.wait(0.5) do
            if LinesCount > 55 then
                LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("CharacterAndBeamMove").Disabled = true
                for i, v in LinesPlayers do
                    if v > 55 then
                        for _, plr in pairs(Players:GetPlayers()) do
                            if plr.Name == tostring(i) then
                                lagViewLabel:SetText("Lagger : " .. plr.DisplayName .. " (" .. plr.Name .. ")")
                                if lastAntiLagLaggerNotify ~= plr.Name then
                                    lastAntiLagLaggerNotify = plr.Name
                                    notify("Line Lags", plr.DisplayName .. " (" .. plr.Name .. ") spam line lags", 5)
                                end
                                break
                            end
                        end
                        break
                    end
                end
                destroyAllGrabParts()

                local time2 = tick()
                while tick() - time2 < 15 and task.wait(0.2) do
                    if LinesCount > 55 then
                        time2 = tick()
                    end
                end
                lastAntiLagLaggerNotify = nil
            else
                LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("CharacterAndBeamMove").Disabled = false
            end
        end
    end)

    while antiLagType == "Automatic" do
        local time1 = tick()
        while tick() - time1 < 0.5 do task.wait() end
        LinesCount = 0
        for i, _ in LinesPlayers do
            LinesPlayers[i] = 0
        end
        task.wait()
    end
end

local function enableAntiLag(lagViewLabel)
    if antiLagType == "Default" or antiLagType == nil then
        applyAntiLagDefault()
    elseif antiLagType == "Automatic" then
        startAntiLagAutomatic(lagViewLabel)
    end
end

AntiFuncSection:AddCheckbox("AntiLagToggle", {
    Text = "Anti-Lag",
    Default = false,
    Callback = function(Value)
        antiLagEnabled = Value
        if not Value then
            autoAntiLagApplied = false
        end
        if antiLagEnabled then
            enableAntiLag(antiLagLaggerLabel)
        else
            lastAntiLagLaggerNotify = nil
            LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("CharacterAndBeamMove").Disabled = false
            Disc("ALEvent")
        end
    end
})

AntiFuncSection:AddCheckbox("AutoAntiLagToggle", {
    Text = "Auto-Anti Lag",
    Default = true,
    Callback = function(Value)
        _G.AutoAntiLagEnabled = Value
    end
})

AntiFuncSection:AddSlider("AntiLagThresholdSlider", {
    Text = "Anti-Lag Threshold",
    Default = 15,
    Min = 3,
    Max = 35,
    Rounding = 0,
    Callback = function(Value)
        _G.AntiLagFpsThreshold = Value
    end
})

task.spawn(function()
    local autoApplied = false
    
    while task.wait(0.5) do
        if _G.AutoAntiLagEnabled then
            local currentFps = math.floor(FPS or 60)
            local threshold = _G.AntiLagFpsThreshold or 15
            
            if currentFps <= threshold and not Toggles.AntiLagToggle.Value then
                autoApplied = true
                Toggles.AntiLagToggle:SetValue(true)

            elseif currentFps > (threshold + 10) and autoApplied and Toggles.AntiLagToggle.Value then
                autoApplied = false
                Toggles.AntiLagToggle:SetValue(false)
            end
        else
            autoApplied = false
        end
    end
end)

AntiFuncSection:AddCheckbox("KillDodgeToggle", {
    Text = "Anti-Loop",
    Default = false,
    Callback = function(Value)
        killDodgeActive = Value
        if Value then
            KillDodgeFunction()
        end
    end
})

AntiFuncSection:AddCheckbox("AntiRagBlobToggle", {
    Text = "Anti-Ragdoll [<b>Blob</b>]",
    Default = false,
    Callback = function(Value)
        antiRagBlobActive = Value
        AntiRagBlobFunction()
    end
})

AntiFuncSection:AddCheckbox("FlyingResetToggle", {
    Text = "Flying-Reset",
    Default = false,
    Callback = function(Value)
        flyingResetActive = Value
        if Value then
            local Players = game:GetService("Players")
            local rs = game:GetService("ReplicatedStorage")
            local me = Players.LocalPlayer

            local CharacterEvents = rs:WaitForChild("CharacterEvents")
            local Struggle = CharacterEvents:WaitForChild("Struggle")

            local CorrectionEvents = rs:WaitForChild("GameCorrectionEvents")
            local GameNotify = CorrectionEvents:WaitForChild("GameCorrectionsNotify")

            flyingResetConnection = GameNotify.OnClientEvent:Connect(function(Type)
                if flyingResetActive and Type == "Flying" then
                    Struggle:FireServer(me)
                    
                    local character = me.Character
                    if character then
                        local humanoid = character:FindFirstChildOfClass("Humanoid")
                        if humanoid then
                            humanoid.Health = 0
                        end
                    end
                end
            end)
        else
            if flyingResetConnection then
                flyingResetConnection:Disconnect()
                flyingResetConnection = nil
            end
        end
    end
})

AntiFuncSection:AddButton({
    Text = "Anti-Banana",
    Func = function()
        local Players = game:GetService("Players")
        local Workspace = game:GetService("Workspace")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        
        local plr = Players.LocalPlayer
        local char = plr.Character or plr.CharacterAdded:Wait()
        local hum = char:FindFirstChildOfClass("Humanoid")
        local HRP = char:FindFirstChild("HumanoidRootPart")
        local Ragdoll = ReplicatedStorage:FindFirstChild("CharacterEvents") and ReplicatedStorage.CharacterEvents:FindFirstChild("RagdollRemote")

        local function notify_user(title, message, duration, type)
            if _G.notify and type(_G.notify) == "function" then
                _G.notify(title, message, duration, type)
            end
        end
        
        if not (char and hum and HRP and Ragdoll) then
            notify_user("Error", "no have RagdollRemote", 5, "error")
            return 
        end
        
        local ll = char:FindFirstChild("Left Leg")
        local rl = char:FindFirstChild("Right Leg")
        local torso = char:FindFirstChild("Torso")

        if not (ll and rl and torso) then
             notify_user("Error", "legs already deleted", 5, "warning")
             return
        end
        
        local originalHealth = hum.Health
        hum.Health = hum.MaxHealth 
            
        local originalDestroyHeight = Workspace.FallenPartsDestroyHeight
        local originalPosition = torso.CFrame
        
        Workspace.FallenPartsDestroyHeight = -200000
        
        notify_user("Delete Legs", "Deleting legs...", 3)
        
        Ragdoll:FireServer(HRP, 2)
        task.wait(0.5)
        
        rl.CFrame = CFrame.new(0, -60000, 0)
        ll.CFrame = CFrame.new(0, -60000, 0)
        task.wait(0.3)
        
        torso.CFrame = CFrame.new(0, -59970, 0)
        task.wait(0.5)
        
        torso.CFrame = originalPosition
        task.wait(0.5)
        
        Workspace.FallenPartsDestroyHeight = originalDestroyHeight

        hum.Health = originalHealth
        
        if not char:FindFirstChild("Left Leg") and not char:FindFirstChild("Right Leg") then
            notify_user("Delete Legs", "Legs successfully deleted!", 5)
            
            task.spawn(function()
                while char.Parent do
                    local current_hum = char:FindFirstChildOfClass("Humanoid")
                    local controls = plr.PlayerGui:FindFirstChild("ControlsGui")
                    
                    if current_hum and controls then
                        local standButton = controls:FindFirstChild("Stand", true)
                        current_hum.HipHeight = (standButton and not standButton.Visible) and 2 or 0
                    end
                    task.wait(0.1) 
                end
            end)
        else
            notify_user("Delete Legs", "Warning: Legs not fully deleted", 3)
        end
    end,
    DoubleClick = false
})

local resetting = false

ExtraDefSection:AddCheckbox("AutoResetToggle", {
    Text = "Break-PCLD (Anti-Kick)",
    Default = false,
    Callback = function(Value)
        autoResetEnabled = Value 
        if not Value then return end 

        task.spawn(function()
            local plr = game.Players.LocalPlayer
            
            local function doDoubleReset()
                if resetting then return end
                resetting = true
                
                if plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health > 0 then
                    plr.Character.Humanoid.Health = 0
                end
                
                local char2 = plr.CharacterAdded:Wait()
                local hum2 = char2:WaitForChild("Humanoid", 5)
                task.wait(0.15)
                if hum2 then hum2.Health = 0 end
                
                plr.CharacterAdded:Wait()
                task.wait(0.5)
                resetting = false
            end

            doDoubleReset()

            while autoResetEnabled do
                local char = plr.Character or plr.CharacterAdded:Wait()
                local hum = char:WaitForChild("Humanoid", 10)
                
                if hum then
                    hum.Died:Wait()
                    if autoResetEnabled and not resetting then
                        task.wait(0.5)
                        doDoubleReset()
                    end
                end
                task.wait(0.1)
            end
        end)
    end 
})

local currentSpeedValue = 50
local isForceSpeedEnabled = false
local forceSpeedCharConnection = nil
local forceSpeedHumConnections = {}

local originalAnimSpeed = nil 

local function cleanupForceSpeedHumConnections()
    for _, conn in ipairs(forceSpeedHumConnections) do
        conn:Disconnect()
    end
    table.clear(forceSpeedHumConnections)
end

local function cleanupForceSpeedConnections()
    cleanupForceSpeedHumConnections()
    if forceSpeedCharConnection then
        forceSpeedCharConnection:Disconnect()
        forceSpeedCharConnection = nil
    end
end

local function applyForceSpeed(hum)
    if not hum or not isForceSpeedEnabled or hum.Health <= 0 then return end
    hum.WalkSpeed = currentSpeedValue
end

local function applyInstantMovement(char, hum)
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    local vel = hrp.AssemblyLinearVelocity
    local moveDir = hum.MoveDirection

    if moveDir.Magnitude > 0.01 then
        hrp.AssemblyLinearVelocity = Vector3.new(
            moveDir.X * currentSpeedValue,
            vel.Y,
            moveDir.Z * currentSpeedValue
        )
    else
        hrp.AssemblyLinearVelocity = Vector3.new(0, vel.Y, 0)
    end
end

local function fixAnimationSpeed(hum)
    if not hum or not isForceSpeedEnabled then return end
    
    for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
        if track.Name == "RunAnim" or track.Name == "WalkAnim" or track.Name == "run" or track.Name == "walk" then
            track:AdjustSpeed(1.2) 
        end
    end
end

local function bindForceSpeedToCharacter(char)
    if not char or not isForceSpeedEnabled then return end
    cleanupForceSpeedHumConnections()

    local hum = char:FindFirstChildOfClass("Humanoid") or char:WaitForChild("Humanoid", 5)
    if not hum then return end

    applyForceSpeed(hum)

    table.insert(forceSpeedHumConnections, hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        if isForceSpeedEnabled and hum.Health > 0 and hum.WalkSpeed ~= currentSpeedValue then
            hum.WalkSpeed = currentSpeedValue
        end
    end))

    table.insert(forceSpeedHumConnections, hum:GetPropertyChangedSignal("Health"):Connect(function()
        if isForceSpeedEnabled and hum.Health > 0 then
            applyForceSpeed(hum)
        end
    end))

    table.insert(forceSpeedHumConnections, RunService.PreSimulation:Connect(function()
        if not isForceSpeedEnabled or not char.Parent or hum.Health <= 0 then return end
        applyInstantMovement(char, hum)
        fixAnimationSpeed(hum)
    end))
end

local function enableForceSpeed()
    cleanupForceSpeedConnections()
    bindForceSpeedToCharacter(LocalPlayer.Character)
    forceSpeedCharConnection = LocalPlayer.CharacterAdded:Connect(function(newChar)
        if isForceSpeedEnabled then
            bindForceSpeedToCharacter(newChar)
        end
    end)
end

local function disableForceSpeed()
    cleanupForceSpeedConnections()
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if hum then
        hum.WalkSpeed = 16
        for _, track in ipairs(hum:GetPlayingAnimationTracks()) do
            if track.Name == "RunAnim" or track.Name == "WalkAnim" or track.Name == "run" or track.Name == "walk" then
                track:AdjustSpeed(1)
            end
        end
    end
    if hrp then
        local vel = hrp.AssemblyLinearVelocity
        hrp.AssemblyLinearVelocity = Vector3.new(0, vel.Y, 0)
    end
end

SelectedInputLagToy = "FoodMushroomPoison"

ExtraDefSection:AddDropdown("InstantInputLagToyDropdown", {
    Title = "Select Input Lag Toy",
    Values = {
        "InstrumentDrumBongos", "InstrumentBrassTrumpet", "InstrumentBrassBugle", 
        "InstrumentVoiceMicrophone", "InstrumentWoodwindOcarina", "InstrumentGuitarUkulele", 
        "InstrumentGuitarLyre", "InstrumentGuitarBanjo", "InstrumentGuitarAcoustic", 
        "CupMugBrown", "CupMugWhite", "FoodBread", "FoodBroccoli", "FoodDippyEgg", 
        "FoodDonut", "FoodHotdog", "FoodMeatStick", "FoodPizzaCheese", "FoodPizzaPepperoni",
        "FoodMushroomPoison", "FoodHamburger", "FoodCoconut", "FoodFrenchFries", 
        "FoodMayonnaise", "PoopPileSparkle", "FoodCakePink", "FoodSodaCan", "FoodBanana", "PoopPile"
    },
    Default = "FoodMushroomPoison",
    Callback = function(Value)
        SelectedInputLagToy = Value
    end,
})

_G.CycleSpeed = 0.05

ExtraDefSection:AddSlider("InputSpeedSlider", {
    Text = "Net-Food Speed",
    Default = 0.10,
    Min = 0.03,
    Max = 0.5,
    Rounding = 2, 
    Callback = function(Value)
        _G.CycleSpeed = Value 
    end
})

ExtraDefSection:AddCheckbox("InstantInputLag", {
    Text = "Anti-Net Food",
    Default = false,
    Callback = function(Value)
        _G.InstantLagActive = Value

        if Value then
            task.spawn(function()
                while _G.InstantLagActive do
                    local plr = game.Players.LocalPlayer
                    local char = plr.Character
                    local hrp = char and char:FindFirstChild("HumanoidRootPart")
                    
                    if hrp then
                        local RS = game:GetService("ReplicatedStorage")
                        local SpawnRemote = RS:WaitForChild("MenuToys"):WaitForChild("SpawnToyRemoteFunction")
                        local toysFolder = workspace:FindFirstChild(plr.Name.."SpawnedInToys")
                        local name = SelectedInputLagToy 
                        local item = toysFolder and toysFolder:FindFirstChild(name)

                        if not item or not item.Parent then
                            task.spawn(function()
                                pcall(function()
                                    SpawnRemote:InvokeServer(name, hrp.CFrame * CFrame.new(0, -12, 0), Vector3.new())
                                end)
                            end)
                        else
                            local holdPart = item:FindFirstChild("HoldPart")
                            if holdPart then
                                task.spawn(function()
                                    pcall(function()
                                        holdPart.HoldItemRemoteFunction:InvokeServer(item, char)
                                    end)
                                end)

                                task.wait(_G.CycleSpeed or 0.05)

                                task.spawn(function()
                                    pcall(function()
                                        holdPart.DropItemRemoteFunction:InvokeServer(
                                            item, 
                                            CFrame.new(0, 5000, 0), 
                                            Vector3.new()
                                        )
                                    end)
                                end)
                            end
                        end
                    end
                    task.wait(_G.CycleSpeed or 0.05) 
                end
            end)
        end
    end
})
end

do
local PREVIEW_COLORS = {
    orange = "#FF8C00",
    blue = "#00BFFF",
    green = "#00FF00",
    red = "#FF4444",
    yellow = "#FFD700"
}

local function previewColorText(text, color)
    return string.format('<font color="%s">%s</font>', color or "#ffffff", tostring(text))
end

local function getSelectedTargetPlayer()
    local name = Options.TargetPlayer and Options.TargetPlayer.Value
    if type(name) ~= "string" or name == "" or name == "None" or name == "..." then
        return nil
    end
    return Players:FindFirstChild(name)
end

local TargetSection = Tabs.Target:AddLeftGroupbox("Target", "circle-user")
local ApplySection = Tabs.Target:AddLeftGroupbox("Apply", "credit-card")
local KicktwoSection = Tabs.Target:AddRightGroupbox("Method Settings", "apple")

local tracerBeam = Instance.new("Beam")
local myAttachment = Instance.new("Attachment")
local targetAttachment = Instance.new("Attachment")

tracerBeam.Width0 = 0.08
tracerBeam.Width1 = 0.08
tracerBeam.Color = ColorSequence.new(Color3.new(1, 1, 1))
tracerBeam.Texture = "rbxassetid://4511475727"

tracerBeam.TextureMode = Enum.TextureMode.Stretch

tracerBeam.CurveSize0 = 1.2
tracerBeam.CurveSize1 = -1.2
tracerBeam.Segments = 30
tracerBeam.FaceCamera = true
tracerBeam.Transparency = NumberSequence.new(0.1)
tracerBeam.Enabled = false

local function updateTracerLogic()
    local targetName = Options.TargetPlayer and Options.TargetPlayer.Value
    local myChar = LocalPlayer.Character
    local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
    
    if not myRoot or not targetName or targetName == "" or targetName == "None" then
        tracerBeam.Enabled = false
        return
    end
    
    local targetPlayer = Players:FindFirstChild(targetName)
    local targetChar = targetPlayer and targetPlayer.Character
    local targetRoot = targetChar and targetChar:FindFirstChild("HumanoidRootPart")
    
    if targetRoot then
        myAttachment.Parent = myRoot
        targetAttachment.Parent = targetRoot
        
        tracerBeam.Attachment0 = myAttachment
        tracerBeam.Attachment1 = targetAttachment
        tracerBeam.Parent = myRoot
        
        tracerBeam.Enabled = true
    else
        tracerBeam.Enabled = false
    end
end

task.spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(updateTracerLogic)
    end)
end)

local playerList = getTargetPlayerOptionsList()
TargetSection:AddDropdown("TargetPlayer", {
    Text = "Target Player Name",
    Values = playerList,
    Default = playerList,
    Callback = function() 
        updateTracerLogic()
    end
})

task.defer(refreshTargetPlayersDropdown)

TargetSection:AddLabel("Select Target Key"):AddKeyPicker("SelectTargetKeybind", {
    Default = "T",
    Mode = "Press",
    Text = "Select Target Key",
    NoUI = false,
    Callback = function()
        local mouse = LocalPlayer:GetMouse()
        local targetPart = mouse and mouse.Target
        if not targetPart then return end

        local targetModel = targetPart:FindFirstAncestorOfClass("Model")
        if not targetModel then return end

        local hoveredPlayer = Players:GetPlayerFromCharacter(targetModel)
        if hoveredPlayer and hoveredPlayer ~= LocalPlayer then
            Options.TargetPlayer:SetValue(hoveredPlayer.Name)
            updateTracerLogic()
        end
    end
})

local function BlobKill(targetPlayerName)
    local Players = game:GetService("Players")
    local me = Players.LocalPlayer
    local rs = game:GetService("ReplicatedStorage")
    local FWC = function(Parent, Name, Time) 
        return Parent:FindFirstChild(Name) or Parent:WaitForChild(Name, Time or 3) 
    end
    local grab = function(prt) 
        rs.GrabEvents.SetNetworkOwner:FireServer(prt, prt.CFrame) 
    end
    local blob_kick = function(blob, hrp, rl, v)
        local detec = blob:FindFirstChild(rl .. "Detector")
        if not detec then return end
        local script = blob.BlobmanSeatAndOwnerScript
        if v == "Default" then
            script.CreatureGrab:FireServer(detec, hrp, detec[rl .. "Weld"])
        elseif v == "DDrop" then
            script.CreatureDrop:FireServer(detec[rl .. "Weld"])
        elseif v == "Release" then
            script.CreatureRelease:FireServer(detec[rl .. "Weld"], hrp)
        end
    end
    
    local kfmb = true
    local MyBlob
    
    while true do
        local mychar = me.Character or me.CharacterAdded:Wait()
        local myhum = FWC(mychar, "Humanoid")
        if myhum.SeatPart then
            MyBlob = myhum.SeatPart.Parent
            break
        end
        task.wait()
    end
    
    while kfmb and task.wait() do
        local mychar = me.Character or me.CharacterAdded:Wait()
        local myHRP = FWC(mychar, "HumanoidRootPart")
        local myhum = FWC(mychar, "Humanoid")
        
        if not myhum.SeatPart then 
            kfmb = false
            print("Stopped: left Blob")
            break
        end
        
        if myhum.SeatPart.Parent ~= MyBlob then
            kfmb = false
            print("Stopped: changed Blob")
            break
        end
        
        local plr = Players:FindFirstChild(targetPlayerName)
        if not plr then continue end
        
        local char = plr.Character
        if not char then continue end
        
        local hum = FWC(char, "Humanoid", 2)
        local HRP = FWC(char, "HumanoidRootPart", 2)
        
        if not (hum and HRP) then continue end
        
        if hum.Health == 0 then
            char = plr.CharacterAdded:Wait()
            hum = FWC(char, "Humanoid", 2)
            HRP = FWC(char, "HumanoidRootPart", 2)
            task.wait(0.15)
            if not (hum and HRP) then continue end
        end
        
        if not (kfmb and MyBlob and MyBlob.Parent) then continue end
        
        local LD = MyBlob:FindFirstChild("LeftDetector")
        local LW = LD and LD:FindFirstChild("LeftWeld")
        
        if LD and LW then
            while LW.Attachment0 ~= HRP.RootAttachment and kfmb do
                local SavedPosition = myHRP.CFrame
                
                while hum.SeatPart do
                    task.spawn(grab, HRP)
                    task.wait()
                end
                
                for i = 1, 4 do
                    if not myhum.SeatPart then 
                        kfmb = false
                        break
                    end
                    
                    myHRP.CFrame = HRP.CFrame - Vector3.new(0, 10, 0)
                    blob_kick(MyBlob, HRP, "Left", "Default")
                    task.wait(0.05)
                    blob_kick(MyBlob, HRP, "Left", "Release")
                    hum.Health = 0
                    task.wait()
                end
                
                if not kfmb then break end
                myHRP.CFrame = SavedPosition
            end
        end
    end
end

local function BlobHeal(targetPlayerName)
    local Players = game:GetService("Players")
    local me = Players.LocalPlayer
    local rs = game:GetService("ReplicatedStorage")
    local FWC = function(Parent, Name, Time) 
        return Parent:FindFirstChild(Name) or Parent:WaitForChild(Name, Time or 3) 
    end
    local grab = function(prt) 
        rs.GrabEvents.SetNetworkOwner:FireServer(prt, prt.CFrame) 
    end
    local blob_kick = function(blob, hrp, rl, v)
        local detec = blob:FindFirstChild(rl .. "Detector")
        if not detec then return end
        local script = blob.BlobmanSeatAndOwnerScript
        if v == "Default" then
            script.CreatureGrab:FireServer(detec, hrp, detec[rl .. "Weld"])
        elseif v == "DDrop" then
            script.CreatureDrop:FireServer(detec[rl .. "Weld"])
        elseif v == "Release" then
            script.CreatureRelease:FireServer(detec[rl .. "Weld"], hrp)
        end
    end
    
    local MyBlob
    while true do
        local mychar = me.Character or me.CharacterAdded:Wait()
        local myhum = FWC(mychar, "Humanoid")
        if myhum.SeatPart then
            MyBlob = myhum.SeatPart.Parent
            break
        end
        task.wait()
    end
    
    local function DoHeal()
        local mychar = me.Character or me.CharacterAdded:Wait()
        local myHRP = FWC(mychar, "HumanoidRootPart")
        local myhum = FWC(mychar, "Humanoid")
        
        if not myhum.SeatPart then 
            print("Not sitting on Blob!")
            return false 
        end
        
        if myhum.SeatPart.Parent ~= MyBlob then
            print("Changed Blob!")
            return false 
        end
        
        local plr = Players:FindFirstChild(targetPlayerName)
        if not plr then return false end
        
        local char = plr.Character
        if not char then return false end
        
        local hum = char:FindFirstChild("Humanoid")
        local HRP = char:FindFirstChild("HumanoidRootPart")
        
        if not (hum and HRP) then return false end
        if not (MyBlob and MyBlob.Parent) then return false end
        
        local LD = MyBlob:FindFirstChild("LeftDetector")
        local LW = LD and LD:FindFirstChild("LeftWeld")
        
        if not (LD and LW) then return false end
        
        local SavedPosition = myHRP.CFrame
        
        task.spawn(grab, HRP)
        task.wait(0.1)
        
        for i = 1, 3 do
            if not myhum.SeatPart then return false end
            
            myHRP.CFrame = HRP.CFrame * CFrame.new(0, 0, -2.5)
            blob_kick(MyBlob, HRP, "Left", "Default")
            task.wait(0.08)
            blob_kick(MyBlob, HRP, "Left", "Release")
            hum.Health = hum.MaxHealth
            task.wait(0.08)
        end
        
        myHRP.CFrame = SavedPosition
        print("Heal completed for " .. targetPlayerName)
        return true
    end
    
    local success1 = DoHeal()
    if not success1 then
        task.wait(0.5)
        DoHeal()
    end
end

local function Bring(targetPlayerName)
    local NetworkRemote = ReplicatedStorage:WaitForChild("GrabEvents"):WaitForChild("SetNetworkOwner")
    local TargetPlayer = Players:FindFirstChild(targetPlayerName)
    if not TargetPlayer then return end
    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local Humanoid = Character:WaitForChild("Humanoid")
    local RootPart = Character:WaitForChild("HumanoidRootPart")
    local Seat = Humanoid.SeatPart
    if not Seat or not TargetPlayer or TargetPlayer == LocalPlayer then return end
    local SeatObject = Seat.Parent
    local TargetCharacter = TargetPlayer.Character or TargetPlayer.CharacterAdded:Wait()
    local TargetRoot = TargetCharacter:WaitForChild("HumanoidRootPart")
    local Detector = SeatObject:WaitForChild("LeftDetector")
    local Weld = Detector:WaitForChild("LeftWeld")
    local GrabRemote = SeatObject.BlobmanSeatAndOwnerScript:WaitForChild("CreatureGrab")
    local OriginalPosition = RootPart.CFrame
    local OriginalTransparency = {}
    for _, part in ipairs(Character:GetDescendants()) do
        if part:IsA("BasePart") then
            OriginalTransparency[part] = part.Transparency
            part.Transparency = 1
        end
    end
    local Camera = workspace.CurrentCamera
    local OriginalCameraCFrame = Camera.CFrame
    Camera.CameraType = Enum.CameraType.Scriptable
    Camera.CFrame = OriginalCameraCFrame
    RootPart.CFrame = TargetRoot.CFrame * CFrame.new(0, 0, 2.5)
    task.wait()
    GrabRemote:FireServer(Detector, TargetRoot, Weld)
    task.delay(0.1, function()
        GrabRemote:FireServer(Detector, TargetRoot, Weld)
    end)
    task.delay(0.2, function()
        RootPart.CFrame = OriginalPosition
        for part, transparency in pairs(OriginalTransparency) do
            if part and part.Parent then
                part.Transparency = transparency
            end
        end
        Camera.CameraType = Enum.CameraType.Custom
        Camera.CameraSubject = Humanoid
    end)
end

local function Kick(targetPlayerName)
    local target = Players:FindFirstChild(targetPlayerName)
    if not target then return end
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoid = char:WaitForChild("Humanoid")
    local hrp = char:WaitForChild("HumanoidRootPart")
    local seat = humanoid.SeatPart
    if seat and target and target ~= LocalPlayer then
        local seatParent, targetChar = seat.Parent, target.Character or target.CharacterAdded:Wait()
        local targetHRP = targetChar:WaitForChild("HumanoidRootPart")
        local det = seatParent:WaitForChild("LeftDetector")
        local weld = det:WaitForChild("LeftWeld")
        local grab = seatParent.BlobmanSeatAndOwnerScript:WaitForChild("CreatureGrab")
        local drop = seatParent.BlobmanSeatAndOwnerScript:WaitForChild("CreatureDrop")
        local originalCFrame = hrp.CFrame
        hrp.CFrame = targetHRP.CFrame * CFrame.new(0, 0, 3)
        task.wait(0.5)
        grab:FireServer(det, targetHRP, weld)
        task.wait(0.7)
        drop:FireServer(weld, targetHRP)
        task.wait(0.3)
        grab:FireServer(det, targetHRP, weld)
        local bp = Instance.new("BodyPosition")
        bp.Position = Vector3.new(0, 999e5000, 0)
        bp.MaxForce = Vector3.new(0, 99999e990, 0)
        bp.Parent = targetHRP
        task.wait(0.6)
        grab:FireServer(det, targetHRP, weld)
        bp:Destroy()
        hrp.CFrame = originalCFrame
    end
end

local function LoopKick(targetPlayerName)
    local target = Players:FindFirstChild(targetPlayerName)
    if not target then return end
    if target == LocalPlayer then return end
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoid = char:WaitForChild("Humanoid")
    local hrp = char:WaitForChild("HumanoidRootPart")
    local seat = humanoid.SeatPart
    if not seat then return end
    local seatParent = seat.Parent
    local targetChar = target.Character or target.CharacterAdded:Wait()
    local targetHumanoid = targetChar:WaitForChild("Humanoid")
    local targetHRP = targetChar:WaitForChild("HumanoidRootPart")
    local leftDet = seatParent:WaitForChild("LeftDetector")
    local leftWeld = leftDet:WaitForChild("LeftWeld")
    local rightDet = seatParent:WaitForChild("RightDetector")
    local rightWeld = rightDet:WaitForChild("RightWeld")
    local grab = seatParent.BlobmanSeatAndOwnerScript:WaitForChild("CreatureGrab")
    local drop = seatParent.BlobmanSeatAndOwnerScript:WaitForChild("CreatureDrop")
    local function grabWithHand(det, weld, targetPart)
        grab:FireServer(det, targetPart, weld)
    end
    local function dropWithHand(weld, targetPart)
        drop:FireServer(weld, targetPart)
    end
    local originalCFrame = hrp.CFrame
    hrp.CFrame = targetHRP.CFrame * CFrame.new(0, -5, 0)
    task.wait(0.1)
    grabWithHand(leftDet, leftWeld, targetHRP)
    task.wait(0.5)
    dropWithHand(leftWeld, targetHRP)
    task.wait(0.2)
    local bp = Instance.new("BodyPosition")
    bp.Position = Vector3.new(0, 999e6, 0)
    bp.MaxForce = Vector3.new(999e6, 999e6, 999e6)
    bp.Parent = targetHRP
    grabWithHand(leftDet, leftWeld, targetHRP)
    task.wait(0.5)
    dropWithHand(leftWeld, targetHRP)
    task.wait(0.5)
    while target and target.Parent and targetHumanoid.Health > 0 do
        if targetHumanoid.Health > 0 then
            grabWithHand(leftDet, leftWeld, targetHRP)
            task.wait()
            dropWithHand(leftWeld, targetHRP)
            task.wait()
            grabWithHand(rightDet, rightWeld, targetHRP)
            task.wait()
            dropWithHand(rightWeld, targetHRP)
            task.wait()
            grabWithHand(leftDet, leftWeld, targetHRP)
            grabWithHand(rightDet, rightWeld, targetHRP)
            task.wait()
            dropWithHand(leftWeld, targetHRP)
            dropWithHand(rightWeld, targetHRP)
            task.wait()
        else
            break
        end
    end
    if bp then bp:Destroy() end
    hrp.CFrame = originalCFrame
end

local function Bypass(targetPlayerName)
    local target = Players:FindFirstChild(targetPlayerName)
    if not target or target == LocalPlayer then return end
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoid = char:WaitForChild("Humanoid")
    local hrp = char:WaitForChild("HumanoidRootPart")
    local seat = humanoid.SeatPart
    if not seat then return end
    local seatParent = seat.Parent
    local targetChar = target.Character or target.CharacterAdded:Wait()
    local targetHumanoid = targetChar:WaitForChild("Humanoid")
    local targetHRP = targetChar:WaitForChild("HumanoidRootPart")
    local leftDet = seatParent:WaitForChild("LeftDetector")
    local leftWeld = leftDet:WaitForChild("LeftWeld")
    local rightDet = seatParent:WaitForChild("RightDetector")
    local rightWeld = rightDet:WaitForChild("RightWeld")
    local grab = seatParent.BlobmanSeatAndOwnerScript:WaitForChild("CreatureGrab")
    local drop = seatParent.BlobmanSeatAndOwnerScript:WaitForChild("CreatureDrop")
    local function grabWithHand(det, weld, targetPart)
        grab:FireServer(det, targetPart, weld)
    end
    local function dropWithHand(weld, targetPart)
        drop:FireServer(weld, targetPart)
    end
    task.wait(0.05)
    while target and target.Parent and targetHumanoid.Health > 0 and Toggles.LoopAppleMethod.Value do
        for i = 1, 20 do
            grabWithHand(leftDet, leftWeld, targetHRP)
        end
        dropWithHand(leftWeld, targetHRP)
        dropWithHand(leftWeld, targetHRP)
        task.wait(0.01)
        if not Toggles.LoopAppleMethod.Value then
            break
        end
    end
end
--deobf by cimkarta https://discord.gg/S8BQWyjyvN
local BlobLock = {
    MyBlob = nil,
    Running = false,
    Time = 0,
    StartPos = nil,
    LastTP = 0
}

local function isnetworkowner(part)
    if not part or not part:IsDescendantOf(workspace) or part.Anchored then
        return false
    end
    local ok, receiveAge = pcall(function()
        return part.ReceiveAge
    end)
    if ok and receiveAge == 0 then
        return true
    end
    local okOwner, owner = pcall(function()
        return part:GetNetworkOwner()
    end)
    if okOwner then
        return owner == LocalPlayer
    end
    return false
end

local function FindTargetByName(partialName)
    partialName = string.lower(partialName)
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            if string.find(string.lower(plr.Name), partialName) or 
               string.find(string.lower(plr.DisplayName), partialName) then
                return plr.Name
            end
        end
    end
    return nil
end

function BlobLock:TPToTargetAndBack(targetHRP)
    local mychar = LocalPlayer.Character
    if not mychar then return end
    local myHRP = FWC(mychar, "HumanoidRootPart", 2)
    if not myHRP then return end
    
    self.StartPos = myHRP.CFrame
    
    myHRP.CFrame = targetHRP.CFrame + Vector3.new(0, 5, 0)
    task.wait(0.05)
    
    for i = 1, 3 do
        ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(targetHRP, targetHRP.CFrame)
        task.wait()
    end
    
    task.wait(0.1)
    myHRP.CFrame = self.StartPos
    self.LastTP = tick()
end

function BlobLock:Start(targetPlayerName)
    if self.Running then return end
    self.Running = true

    if targetPlayerName == "" or targetPlayerName == nil then
        self.Running = false
        return
    end
    
    if not Players:FindFirstChild(targetPlayerName) then
        local found = FindTargetByName(targetPlayerName)
        if found then
            targetPlayerName = found
        else
            self.Running = false
            return
        end
    end
    
    task.spawn(function()
        local targetPlr = Players:FindFirstChild(targetPlayerName)
        if not targetPlr then 
            self:Stop()
            return
        end
        
        local char = targetPlr.Character
        if not char then
            targetPlr.CharacterAdded:Wait()
            task.wait(0.5)
            char = targetPlr.Character
        end
        
        local HRP = char and FWC(char, "HumanoidRootPart", 2)
        if HRP then
            self:TPToTargetAndBack(HRP)
        end
        
        while self.Running do
            task.wait()
            
            local mychar = LocalPlayer.Character
            if not mychar then continue end
            
            local myHRP = FWC(mychar, "HumanoidRootPart", 2)
            local myhum = FWC(mychar, "Humanoid", 2)
            if not myHRP or not myhum then continue end
            
            if not myhum.SeatPart then
                self:Stop()
                break
            end
            
            if myhum.SeatPart then 
                self.MyBlob = myhum.SeatPart.Parent 
            end
            
            targetPlr = Players:FindFirstChild(targetPlayerName)
            if not targetPlr then 
                self:Stop()
                break
            end
            
            char = targetPlr.Character
            if not char then continue end
            
            local hum = FWC(char, "Humanoid", 2)
            local HRP = FWC(char, "HumanoidRootPart", 2)
            if not hum or not HRP then continue end
            
            if hum.Health == 0 then continue end
            
            local dist = (myHRP.Position - HRP.Position).Magnitude
            if dist > 15 and tick() - self.LastTP > 0.5 then
                self:TPToTargetAndBack(HRP)
            end
            
            if self.MyBlob and self.MyBlob.Parent then
                task.defer(function()
                    if isnetworkowner(HRP) then
                        if tick() - self.Time > 0.5 then
                            hum.Sit = true
                            task.wait(0.16)
                            hum.Sit = false
                            self.Time = tick()
                        end  
                        
                        local LD = self.MyBlob:FindFirstChild("LeftDetector")
                        if LD then 
                            HRP.CFrame = LD.CFrame 
                        end
                        
                        for _, v in pairs(char:GetChildren()) do
                            if v:IsA("BasePart") then 
                                v.Velocity = Vector3.new() 
                            end
                        end
                        
                        if dist < 40 and hum.SeatPart then
                            ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(HRP, HRP.CFrame)
                        end
                    end
                end)
                
                local blob = self.MyBlob
                local LD = blob:FindFirstChild("LeftDetector")
                if LD then
                    local grab = blob.BlobmanSeatAndOwnerScript.CreatureGrab
                    local rel = blob.BlobmanSeatAndOwnerScript.CreatureRelease
                    grab:FireServer(LD, HRP, LD.LeftWeld)
                    task.wait(0.005)
                    rel:FireServer(LD.LeftWeld, HRP)
                end
            end
        end
    end)
end

function BlobLock:Stop()
    self.Running = false
    self.MyBlob = nil
end

if _G.UsePalletForKick == nil then
_G.UsePalletForKick = true
end

local activeTestKicks = {}
local kickThread = nil

local ownershipRagdollUI = {}
local ownershipSpamGrabUI = {}

local StopTestKick
local TestKickPlayer

local function ownershipUISetVisible(elements, visible)
for _, elem in ipairs(elements) do
if elem and elem.SetVisible then
pcall(function()
elem:SetVisible(visible)
end)
end
end
end

local function updateOwnershipSettingsVisibility()
local method = Options.OwnershipKickMethod and Options.OwnershipKickMethod.Value or "None"
ownershipUISetVisible(ownershipRagdollUI, method == "Fast")
ownershipUISetVisible(ownershipSpamGrabUI, method == "Slower")
end

local function getOwnershipSpamGrabOffset()
return ownershipKickGrabOffsetX or 0, 17 + (ownershipKickGrabOffsetY or 0), ownershipKickGrabOffsetZ or 0
end

function StopTestKick(targetPlayer)
if kickThread then
pcall(function() task.cancel(kickThread) end)
kickThread = nil
end

if targetPlayer and activeTestKicks[targetPlayer] then
pcall(activeTestKicks[targetPlayer])
activeTestKicks[targetPlayer] = nil
end

pcall(function()
if targetPlayer and targetPlayer.Character then
local hrp = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
if hrp then
for _, name in ipairs({"TestKickBP", "TestKickBG"}) do
local obj = hrp:FindFirstChild(name)
if obj then obj:Destroy() end
end
local rs = game:GetService("ReplicatedStorage")
rs.GrabEvents.DestroyGrabLine:FireServer(hrp)
end
end
end)

pcall(function()
local myChar = LocalPlayer.Character
if myChar then
local mHRP = myChar:FindFirstChild("HumanoidRootPart")
if mHRP then
mHRP.Anchored = false
end
end
end)
end

function TestKickPlayer(targetPlayer)
if not targetPlayer then return end

if kickThread then
pcall(function() task.cancel(kickThread) end)
kickThread = nil
end
if activeTestKicks[targetPlayer] then
pcall(activeTestKicks[targetPlayer])
activeTestKicks[targetPlayer] = nil
end

local kickActive_local = true
activeTestKicks[targetPlayer] = function() kickActive_local = false end

kickThread = task.spawn(function()
local rs = game:GetService("ReplicatedStorage")
local grabEvents = rs:WaitForChild("GrabEvents")
local createGrabLine = grabEvents:WaitForChild("CreateGrabLine")
local destroyGrabLine = grabEvents:WaitForChild("DestroyGrabLine")
local setOwner = grabEvents:WaitForChild("SetNetworkOwner")

local myChar = LocalPlayer.Character
local mHRP = myChar and myChar:FindFirstChild("HumanoidRootPart")
if mHRP then
mHRP.Anchored = true
end

local packetTimer = 0

while kickActive_local do
if not targetPlayer or not targetPlayer.Parent then break end

local targetChar = targetPlayer.Character
myChar = LocalPlayer.Character
if targetChar and myChar then
local tHRP = targetChar:FindFirstChild("HumanoidRootPart")
local tHum = targetChar:FindFirstChild("Humanoid")
mHRP = myChar:FindFirstChild("HumanoidRootPart")
if tHRP and mHRP then

pcall(function()
setOwner:FireServer(tHRP, tHRP.CFrame)
end)

local bp = tHRP:FindFirstChild("TestKickBP") or Instance.new("BodyPosition", tHRP)
bp.Name = "TestKickBP"
bp.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
bp.D = 500
bp.P = 20000
bp.Position = mHRP.Position + Vector3.new(0, 15, 0)

local bg = tHRP:FindFirstChild("TestKickBG") or Instance.new("BodyGyro", tHRP)
bg.Name = "TestKickBG"
bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
bg.CFrame = mHRP.CFrame

pcall(function()
createGrabLine:FireServer(tHRP, tHRP.CFrame)
end)
task.wait(0.01)
pcall(function()
destroyGrabLine:FireServer(tHRP)
destroyGrabLine:FireServer(tHRP)
end)
task.wait(0.0001)

local dist = (mHRP.Position - tHRP.Position).Magnitude
if tHRP.Position.Y < 2000 and dist > 25 then
local oldCF = mHRP.CFrame
mHRP.Anchored = false
mHRP.CFrame = tHRP.CFrame * CFrame.new(1, 0, 5)
task.wait(0.3)
if myChar and mHRP then mHRP.CFrame = oldCF end
mHRP.Anchored = true
end

if tHum and tHum.Health > 0 then
if tick() - packetTimer > 0.03 then
packetTimer = tick()
pcall(function()
tHum.PlatformStand = true
tHum.Sit = true
setOwner:FireServer(tHRP, tHRP.CFrame)
destroyGrabLine:FireServer(tHRP)
createGrabLine:FireServer(tHRP, Vector3.zero, tHRP.Position, false)
end)
end
end

local spawned = workspace:FindFirstChild(targetPlayer.Name .. "SpawnedInToys")
if spawned then
local function yeet(part)
if part and setOwner then
setOwner:FireServer(part, part.CFrame)
if part:FindFirstChild("PartOwner") and part.PartOwner.Value == LocalPlayer.Name then
part.CFrame = CFrame.new(0, 10000, 0)
end
end
end
if spawned:FindFirstChild("NinjaKunai") then
yeet(spawned.NinjaKunai:FindFirstChild("SoundPart"))
end
if spawned:FindFirstChild("NinjaShuriken") then
yeet(spawned.NinjaShuriken:FindFirstChild("SoundPart"))
end
end
end
end
task.wait()
end

if targetPlayer and targetPlayer.Character then
local hrp = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
if hrp then
for _, name in ipairs({"TestKickBP", "TestKickBG"}) do
local obj = hrp:FindFirstChild(name)
if obj then pcall(function() obj:Destroy() end) end
end
pcall(function() destroyGrabLine:FireServer(hrp) end)
end
end

pcall(function()
if myChar and myChar:FindFirstChild("HumanoidRootPart") then
myChar.HumanoidRootPart.Anchored = false
end
end)
end)
end

local function stopOwnershipRagdollKick()
ownershipKickActive = false
if ownershipKickTask then
task.cancel(ownershipKickTask)
ownershipKickTask = nil
end
end

local function stopOwnershipSpamGrabKick()
if kickThread then
pcall(function() task.cancel(kickThread) end)
kickThread = nil
end

for target, stopFunc in pairs(activeTestKicks) do
pcall(stopFunc)
activeTestKicks[target] = nil
end

local targetName = Options.TargetPlayer and Options.TargetPlayer.Value or ""
if targetName ~= "" then
local targetPlayer = game:GetService("Players"):FindFirstChild(targetName)
if targetPlayer then
StopTestKick(targetPlayer)
end
end

pcall(function()
local myChar = LocalPlayer.Character
if myChar and myChar:FindFirstChild("HumanoidRootPart") then
myChar.HumanoidRootPart.Anchored = false
end
end)
end

local function stopAllOwnershipMethods()
stopOwnershipRagdollKick()
stopOwnershipSpamGrabKick()
end

local function startOwnershipSpamGrabKick()
local targetName = Options.TargetPlayer and Options.TargetPlayer.Value or ""
if targetName == "" then
print("Error: Select Target First")
if Toggles.ApplySelectedOwnershipMethod then
Toggles.ApplySelectedOwnershipMethod:SetValue(false)
end
return
end

local targetPlayer = game:GetService("Players"):FindFirstChild(targetName)
if not targetPlayer then
if Toggles.ApplySelectedOwnershipMethod then
Toggles.ApplySelectedOwnershipMethod:SetValue(false)
end
return
end

stopOwnershipRagdollKick()
TestKickPlayer(targetPlayer)
end

local function startOwnershipRagdollKick()
local targetName = Options.TargetPlayer.Value
if not targetName or targetName == "" then
print("Error: Select Target First")
if Toggles.ApplySelectedOwnershipMethod then
Toggles.ApplySelectedOwnershipMethod:SetValue(false)
end
return
end

stopOwnershipSpamGrabKick()
ownershipKickSession = (ownershipKickSession or 0) + 1
local session = ownershipKickSession
ownershipKickActive = true

ownershipKickTask = task.spawn(function()
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local RS = game:GetService("ReplicatedStorage")
    local LP = Players.LocalPlayer
    local Camera = workspace.CurrentCamera

    local GE = RS:WaitForChild("GrabEvents")
    local SetNetOwner = GE:WaitForChild("SetNetworkOwner")
    local DestroyGrabLine = GE:WaitForChild("DestroyGrabLine")

    local ZERO_VECTOR = Vector3.new(0, 0, 0)
    local GRAB_TIMEOUT = 0.10
    local MAX_DISTANCE = 25
    local PALLET_COOLDOWN = 0.01
    local HIDDEN_CF = CFrame.new(0, 1e9, 0)

    local target = nil
    local isGrabbing = false
    local startTime = nil
    local lastPalletTime = 0
    local checkStartTime = nil
    local currentTargetRoot = nil
    local attachments = {}

    local cameraLocked = false
    local savedCameraCFrame = nil

    local function lockCamera()
        if not cameraLocked then
            cameraLocked = true
            savedCameraCFrame = Camera.CFrame
            Camera.CameraType = Enum.CameraType.Scriptable
        end
    end

    local function unlockCamera()
        if cameraLocked then
            cameraLocked = false
            Camera.CameraType = Enum.CameraType.Custom
            if savedCameraCFrame then
                Camera.CFrame = savedCameraCFrame
            end
        end
    end

    local function getCurrentOffset()
        return Vector3.new(ownershipKickOffsetX or 0, ownershipKickOffsetY or 0, ownershipKickOffsetZ or 0)
    end

    local function cleanupPhysicsObjects()
        isGrabbing = false
        currentTargetRoot = nil
        for _, v in pairs(attachments) do
            if v then pcall(function() v:Destroy() end) end
        end
        attachments = {}
        unlockCamera()
    end

    local function isTargetAlive()
        target = Players:FindFirstChild(targetName)
        if not target or not target.Parent then return false end

        local char = target.Character
        if not char then return false end

        local hum = char:FindFirstChild("Humanoid")
        local root = char:FindFirstChild("HumanoidRootPart")

        if not hum or hum.Health <= 0 or not root then return false end

        currentTargetRoot = root
        return true
    end

    task.spawn(function()
        while ownershipKickActive do
            if target and target.Parent and target.Character then
                local tRoot = target.Character:FindFirstChild("HumanoidRootPart")
                if tRoot then
                    SetNetOwner:FireServer(tRoot, tRoot.CFrame)
                    DestroyGrabLine:FireServer(tRoot)
                    tRoot.AssemblyLinearVelocity = ZERO_VECTOR
                    tRoot.AssemblyAngularVelocity = ZERO_VECTOR
                end
            end
            task.wait()
        end
    end)

    local lockPos = nil
    local rotationAngle = 0
    local rotationSpeed = 2

    task.spawn(function()
        while ownershipKickActive do
            local ClickEvent = RS:FindFirstChild("ClickEvent") or RS:FindFirstChild("ClickRemote")
            if ClickEvent then
                if ClickEvent:IsA("RemoteEvent") then 
                    ClickEvent:FireServer() 
                elseif ClickEvent:IsA("RemoteFunction") then 
                    ClickEvent:InvokeServer() 
                end
            end
            task.wait(0.005)
        end
    end)

    local myChar = LP.Character
    local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
    if not myRoot then return end
    local savedPos = myRoot.CFrame

    local camConnection
    camConnection = RunService.RenderStepped:Connect(function()
        if not ownershipKickActive then
            if camConnection then camConnection:Disconnect() end
            unlockCamera()
            return
        end
        if cameraLocked and savedCameraCFrame then
            Camera.CFrame = savedCameraCFrame
        end
    end)

    while ownershipKickActive do
        RunService.Stepped:Wait()
        if not isTargetAlive() then
            cleanupPhysicsObjects()
            lockPos = nil
            task.wait(0.5)
            continue
        end
        
        myChar = LP.Character
        myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
        if not myRoot then continue end
        local tChar = target.Character
        local tHum = tChar:FindFirstChild("Humanoid")
        local tRoot = currentTargetRoot

        if tRoot then
            SetNetOwner:FireServer(tRoot, tRoot.CFrame)
            DestroyGrabLine:FireServer(tRoot)
            
            local Limbs = {"Left Leg", "Right Leg", "Left Arm", "Right Arm", "Head", "Torso", "UpperTorso", "LowerTorso"}
            for _, limbName in ipairs(Limbs) do
                local part = tChar:FindFirstChild(limbName)
                if part then
                    part.Velocity = ZERO_VECTOR
                    part.RotVelocity = ZERO_VECTOR
                    part.CanCollide = false
                end
            end
        end

        if not isGrabbing then
            lockCamera()
            
            myRoot.CFrame = tRoot.CFrame * CFrame.new(0, -10, 0)
            myRoot.Velocity = ZERO_VECTOR
            
            tHum.PlatformStand = false 
            tHum.Sit = true
            
            if not startTime then startTime = tick() end
            
            if tick() - startTime > GRAB_TIMEOUT then
                isGrabbing = true
                startTime = nil
                myRoot.CFrame = savedPos
                unlockCamera()
                
                local m = 0
                for _, v in pairs(tChar:GetChildren()) do
                    if v:IsA("BasePart") then m = m + v:GetMass() end
                end

                local myHead = myChar and myChar:FindFirstChild("Head")
                local basePosition = myHead and myHead.Position or myRoot.Position
                local targetWorldPos = basePosition + Vector3.new(0, 10, 0) + getCurrentOffset()
                
                lockPos = CFrame.new(targetWorldPos) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
                rotationAngle = 0

                local targetAttachment = Instance.new("Attachment", tRoot)
                targetAttachment.Name = "GrabTargetAttachment"
                targetAttachment.CFrame = CFrame.identity
                
                local worldAttachment = Instance.new("Attachment", workspace.Terrain)
                worldAttachment.Name = "GrabWorldAttachment"
                worldAttachment.CFrame = lockPos

                local ap = Instance.new("AlignPosition")
                ap.Name = "TestKickAP"
                ap.Mode = Enum.PositionAlignmentMode.TwoAttachment
                ap.Attachment0 = targetAttachment
                ap.Attachment1 = worldAttachment
                ap.RigidityEnabled = false 
                ap.MaxForce = math.huge
                ap.MaxVelocity = math.huge
                ap.Responsiveness = 200
                ap.Parent = tRoot

                local ao = Instance.new("AlignOrientation")
                ao.Name = "TestKickAO"
                ao.Mode = Enum.OrientationAlignmentMode.TwoAttachment
                ao.Attachment0 = targetAttachment
                ao.Attachment1 = worldAttachment
                ao.RigidityEnabled = true
                ao.MaxTorque = math.huge
                ao.Responsiveness = 200
                ao.Parent = tRoot

                local vf = Instance.new("VectorForce")
                vf.Name = "TestKickVF"
                vf.ApplyAtCenterOfMass = true
                vf.RelativeTo = Enum.ActuatorRelativeTo.World
                vf.Attachment0 = targetAttachment
                vf.Force = Vector3.new(0, m * workspace.Gravity, 0)
                vf.Parent = tRoot

                attachments.bp = ap
                attachments.bg = ao
                attachments.force = vf
                attachments.tAtt = targetAttachment
                attachments.wAtt = worldAttachment
                
                tHum:ChangeState(Enum.HumanoidStateType.Physics)
            end
        else
            unlockCamera()
            for _, part in ipairs(tChar:GetDescendants()) do
                if part:IsA("BasePart") then part.CanCollide = false end
            end
            
            if attachments.wAtt and lockPos then
                tRoot.AssemblyLinearVelocity = ZERO_VECTOR
                
                rotationAngle = (rotationAngle + rotationSpeed * 0.016) % 360
                
                attachments.wAtt.CFrame = CFrame.new(lockPos.Position) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(rotationAngle), 0)
            end

            if not checkStartTime then checkStartTime = tick() + 0.25 end
            if checkStartTime and tick() >= checkStartTime then
                local dist = (myRoot.Position - tRoot.Position).Magnitude
                if dist > MAX_DISTANCE then
                    cleanupPhysicsObjects()
                    isGrabbing = false
                    lockPos = nil
                    startTime = tick()
                    checkStartTime = nil
                    savedPos = myRoot.CFrame
                    
                    lockCamera()
                    myRoot.CFrame = tRoot.CFrame * CFrame.new(0, -10, 0)
                    
                    SetNetOwner:FireServer(tRoot, tRoot.CFrame)
                    task.wait(0.005)
                    DestroyGrabLine:FireServer(tRoot)
                    continue
                
                elseif lockPos and tRoot.Position.Y < lockPos.Position.Y - 10 then
                    local oldCFrame = myRoot.CFrame
                    
                    myRoot.CFrame = tRoot.CFrame * CFrame.new(0, -8, 0)
                    myRoot.Velocity = ZERO_VECTOR
                    
                    SetNetOwner:FireServer(tRoot, tRoot.CFrame)
                    task.wait(0.001)
                    DestroyGrabLine:FireServer(tRoot)
                    DestroyGrabLine:FireServer(tRoot)
                    task.wait(0.00001)
                    
                    tRoot.CFrame = CFrame.new(lockPos.Position) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(rotationAngle), 0)
                    myRoot.CFrame = oldCFrame
                    task.wait(0.02)
                end
            end
            
            if _G.UsePalletForKick then
                local MyToys = workspace:FindFirstChild(LP.Name.."SpawnedInToys")
                local pallet = MyToys and MyToys:FindFirstChild("PalletLightBrown")
                if not pallet and LP.CanSpawnToy.Value then
                    RS.MenuToys.SpawnToyRemoteFunction:InvokeServer("PalletLightBrown", HIDDEN_CF, Vector3.new(0, -90, 0))
                    task.wait(0.2)
                    MyToys = workspace:FindFirstChild(LP.Name.."SpawnedInToys")
                    pallet = MyToys and MyToys:FindFirstChild("PalletLightBrown")
                end
                local soundPart = pallet and pallet:FindFirstChild("SoundPart")
                local currentTime = tick()
                if currentTime - lastPalletTime >= PALLET_COOLDOWN then
                    lastPalletTime = currentTime
                    if soundPart then
                        soundPart.CFrame = tRoot.CFrame * CFrame.new(0, 2.5, 0)
                        SetNetOwner:FireServer(soundPart, soundPart.CFrame)
                        task.wait()
                        soundPart.CFrame = HIDDEN_CF
                    end
                end
            end
        end
    end
    
    cleanupPhysicsObjects()
    lockPos = nil
    if myRoot and savedPos then 
        myRoot.CFrame = savedPos 
    end
    
    unlockCamera()
    if camConnection then 
        camConnection:Disconnect() 
    end
    
    ownershipKickActive = false
    if session == ownershipKickSession and Toggles.ApplySelectedOwnershipMethod then
        Toggles.ApplySelectedOwnershipMethod:SetValue(false)
    end
end)
end

local function startSelectedOwnershipMethod()
local method = Options.OwnershipKickMethod and Options.OwnershipKickMethod.Value or "None"
if method == "None" or method == "" then
print("Error: Select Ownership Method First")
if Toggles.ApplySelectedOwnershipMethod then
Toggles.ApplySelectedOwnershipMethod:SetValue(false)
end
return
end
if method == "Slower" then
startOwnershipSpamGrabKick()
elseif method == "Fast" then
startOwnershipRagdollKick()
end
end

local function isOwnershipActionSelected(action)
local selected = Options.OwnershipAction and Options.OwnershipAction.Value
if type(selected) ~= "table" then
return false
end
return selected[action] == true
end

local function stopBringOwnership()
bringOwnershipActive = false
if bringOwnershipTask then
pcall(task.cancel, bringOwnershipTask)
bringOwnershipTask = nil
end
end

local function startBringOwnership()
stopBringOwnership()
local targetName = Options.TargetPlayer and Options.TargetPlayer.Value or ""
if targetName == "" then
return
end
bringOwnershipActive = true
bringOwnershipTask = task.spawn(function()
while bringOwnershipActive
and isOwnershipActionSelected("Bring")
and Toggles.ApplySelectedOwnershipMethod
and Toggles.ApplySelectedOwnershipMethod.Value do
pcall(Bring, targetName)
task.wait(1)
end
bringOwnershipActive = false
end)
end

local function stopDestroyFoodOwnership()
antiAntiLagEnabled = false
if antiAntiLagTask then
pcall(task.cancel, antiAntiLagTask)
antiAntiLagTask = nil
end
end

local function startDestroyFoodOwnership()
stopDestroyFoodOwnership()
antiAntiLagEnabled = true
antiAntiLagTask = task.spawn(RemoveAllAntiInputFunction)
end

local function stopDestroyGucciOwnership()
destroyGucciActive = false
if destroyGucciTask then
pcall(task.cancel, destroyGucciTask)
destroyGucciTask = nil
end
end

local function startDestroyGucciOwnership()
stopDestroyGucciOwnership()
local targetName = Options.TargetPlayer and Options.TargetPlayer.Value or ""
if targetName == "" then
return
end
destroyGucciActive = true
destroyGucciTask = task.spawn(function()
while destroyGucciActive
and isOwnershipActionSelected("Destroy Gucci")
and Toggles.ApplySelectedOwnershipMethod
and Toggles.ApplySelectedOwnershipMethod.Value do
local target = Players:FindFirstChild(targetName)
if target then
pcall(destroyPlayerGucci, target)
end
task.wait(2)
end
destroyGucciActive = false
end)
end

local loopSnowballActive = false
local loopSnowballTask = nil

local function stopLoopSnowballOwnership()
    loopSnowballActive = false
    _G.RagdollEnabled = false
    if loopSnowballTask then
        pcall(task.cancel, loopSnowballTask)
        loopSnowballTask = nil
    end
end

local function startLoopSnowballOwnership()
    stopLoopSnowballOwnership()
    loopSnowballActive = true
    _G.RagdollEnabled = true
    
    loopSnowballTask = task.spawn(function()
        local Players = game:GetService("Players") 
        local RS = game:GetService("ReplicatedStorage") 
        local Workspace = game:GetService("Workspace") 
        local RunService = game:GetService("RunService") 
        local Player = Players.LocalPlayer 
        local SpawnRemote = RS:WaitForChild("MenuToys"):WaitForChild("SpawnToyRemoteFunction") 

        local GE = RS:FindFirstChild("GrabEvents")
        local SetNetOwner = GE and GE:FindFirstChild("SetNetworkOwner")

        while loopSnowballActive 
        and isOwnershipActionSelected("Loop Snowball")
        and Toggles.ApplySelectedOwnershipMethod 
        and Toggles.ApplySelectedOwnershipMethod.Value do 
            local rawValue = Options.TargetPlayer and Options.TargetPlayer.Value
            local target = nil

            if type(rawValue) == "string" and rawValue ~= "" and rawValue ~= "None" and rawValue ~= "..." then
                target = Players:FindFirstChild(rawValue)
                if not target then
                    for _, p in ipairs(Players:GetPlayers()) do
                        if string.find(rawValue, p.Name) or string.find(rawValue, p.DisplayName) then
                            target = p
                            break
                        end
                    end
                end
            end
            
            if target and target ~= Player then
                local tChar = target.Character 
                local hitPart = tChar and (tChar:FindFirstChild("HumanoidRootPart") or tChar:FindFirstChild("Torso"))
                
                if hitPart and Player.Character and Player.Character:FindFirstChild("Head") then 
                    task.spawn(function() 
                        pcall(function() 
                            local spawnPos = Player.Character.Head.CFrame * CFrame.new(0, 12, 20) 
                            local SnowModel = SpawnRemote:InvokeServer("BallSnowball", spawnPos, Vector3.new(0, -10, 0)) 
                            local folder = Workspace:FindFirstChild(Player.Name .. "SpawnedInToys") 
                            
                            if folder then 
                                for _, snowball in ipairs(folder:GetChildren()) do 
                                    if snowball.Name == "BallSnowball" then 
                                        local part = snowball:FindFirstChild("SoundPart") or snowball.PrimaryPart or snowball:FindFirstChildWhichIsA("BasePart") 
                                        if part then 
                                            if SetNetOwner then SetNetOwner:FireServer(part, part.CFrame) end

                                            part.CFrame = CFrame.new(hitPart.Position + Vector3.new(0, 2, 0)) * part.CFrame.Rotation
                                            part.AssemblyLinearVelocity = Vector3.new(0, -25, 0)

                                            firetouchinterest(part, hitPart, 0) 
                                            RunService.Heartbeat:Wait() 
                                            firetouchinterest(part, hitPart, 1) 
                                        end 
                                    end 
                                end 
                            end 
                        end) 
                    end) 
                end 
            end 
            task.wait(0.05) 
        end
        loopSnowballActive = false
    end)
end

local loopBananaActive = false
local loopBananaTask = nil

local function stopLoopBananaOwnership()
    loopBananaActive = false
    if loopBananaTask then
        pcall(task.cancel, loopBananaTask)
        loopBananaTask = nil
    end
    
    pcall(function()
        local Players = game:GetService("Players")
        local LP = Players.LocalPlayer
        local Workspace = game:GetService("Workspace")
        local RS = game:GetService("ReplicatedStorage")
        local DestroyGrabLine = RS:FindFirstChild("GrabEvents") and RS.GrabEvents:FindFirstChild("DestroyGrabLine")
        
        local MyToys = Workspace:FindFirstChild(LP.Name .. "SpawnedInToys")
        local banana = MyToys and MyToys:FindFirstChild("FoodBanana")
        local SoundPart = banana and banana:FindFirstChild("SoundPart")

        if DestroyGrabLine and SoundPart then DestroyGrabLine:FireServer(SoundPart) end
        if banana and DestroyToy then DestroyToy:FireServer(banana) end
    end)
end

local function startLoopBananaOwnership()
    stopLoopBananaOwnership()
    loopBananaActive = true
    
    loopBananaTask = task.spawn(function()
        local RS = game:GetService("ReplicatedStorage")
        local GE = RS:FindFirstChild("GrabEvents")
        local CreateGrabLine = GE and (GE:FindFirstChild("CreateGrabLine") or GE:WaitForChild("CreateGrabLine"))
        local DestroyGrabLine = GE and (GE:FindFirstChild("DestroyGrabLine") or GE:WaitForChild("DestroyGrabLine"))
        local SetNetOwner = GE and GE:FindFirstChild("SetNetworkOwner")
        
        local Players = game:GetService("Players")
        local LP = Players.LocalPlayer
        local banana, SoundPart
        local Workspace = game:GetService("Workspace")
        local SpawnRemote = RS:WaitForChild("MenuToys"):WaitForChild("SpawnToyRemoteFunction") 

        while loopBananaActive 
        and isOwnershipActionSelected("Loop Banana")
        and Toggles.ApplySelectedOwnershipMethod 
        and Toggles.ApplySelectedOwnershipMethod.Value do
            
            local rawValue = Options.TargetPlayer and Options.TargetPlayer.Value
            local target = nil
            if type(rawValue) == "string" and rawValue ~= "" and rawValue ~= "None" and rawValue ~= "..." then
                target = Players:FindFirstChild(rawValue)
                if not target then
                    for _, p in ipairs(Players:GetPlayers()) do
                        if string.find(rawValue, p.Name) or string.find(rawValue, p.DisplayName) then
                            target = p
                            break
                        end
                    end
                end
            end
            
            if not target or target == LP then task.wait(0.5); continue end
            
            local char = LP.Character
            if not char then task.wait(0.1); continue end

            local MyToys = Workspace:FindFirstChild(LP.Name .. "SpawnedInToys")
            if not MyToys then task.wait(0.1); continue end

            local targetChar = target.Character
            local rootPart = targetChar and targetChar:FindFirstChild("Left Leg")
            if not rootPart then task.wait(0.1); continue end 
            
            banana = MyToys:FindFirstChild("FoodBanana")
            SoundPart = banana and banana:FindFirstChild("SoundPart")
            
            local AlignPos
            if not SoundPart then
                for _, v in pairs(MyToys:GetChildren()) do
                if v.Name == "FoodBanana" then 
                    pcall(function() DestroyToy:FireServer(v) end) 
                end
            end

            pcall(function()
                if LP:FindFirstChild("CanSpawnToy") and LP.CanSpawnToy.Value then
                    local spawnPos = char.Head.CFrame * CFrame.new(0, 12, 20)
                    SpawnRemote:InvokeServer("FoodBanana", spawnPos, Vector3.new(0, -10, 0))
                end
            end)

            local startTime = tick()
            repeat
                task.wait()
                banana = MyToys:FindFirstChild("FoodBanana")
            until banana or (tick() - startTime > 1)

            if not banana then continue end

            SoundPart = banana:FindFirstChild("SoundPart")
            local holdPart = banana:FindFirstChild("HoldPart")
            if not SoundPart or not holdPart then continue end

            pcall(function() holdPart.HoldItemRemoteFunction:InvokeServer(banana, char) end)
            task.wait(0.05)

            pcall(function() RS.HoldEvents.Use:FireServer(banana) end)
            while banana:FindFirstChild("EdiblePart") do task.wait() end
            pcall(function() RS.HoldEvents.Use:FireServer(banana) end)
            task.wait(0.05)

            pcall(function() holdPart.DropItemRemoteFunction:InvokeServer(banana, char:GetPivot() * CFrame.new(0, 15, -10), Vector3.zero) end)

            if SoundPart then
                if typeof(sno) == "function" then sno(SoundPart) end
                task.wait(0.01)
                if typeof(unsno) == "function" then unsno(SoundPart) end

                local Atach = Instance.new("Attachment")
                Atach.Parent = SoundPart
                AlignPos = Instance.new("AlignPosition")
                AlignPos.Responsiveness = 100
                AlignPos.Parent = SoundPart
                AlignPos.Attachment0 = Atach
            end

            if SetNetOwner and SoundPart then
                while loopBananaActive and SoundPart and not SoundPart:FindFirstChild("PartOwner") do
                    pcall(function() SetNetOwner:FireServer(SoundPart, SoundPart.CFrame) end)
                    task.wait(0.01)
                end
            end
        end

        if banana and SoundPart then
            AlignPos = SoundPart:FindFirstChild("AlignPosition")
            if not AlignPos then
                pcall(function() DestroyToy:FireServer(banana) end)
                banana = nil
                continue
            end

            local AtachNew = rootPart and rootPart:FindFirstChild("LeftFootAttachment")
            if not AtachNew then continue end
            AlignPos.Attachment1 = AtachNew

            if CreateGrabLine and DestroyGrabLine and SoundPart:FindFirstChild("PartOwner") then
                task.spawn(function()
                    pcall(function()
                        CreateGrabLine:FireServer(SoundPart, SoundPart.Position)
                        task.wait()
                        DestroyGrabLine:FireServer(SoundPart)
                    end)
                end)
            end
        end
        task.wait(0.05)
    end
    loopBananaActive = false
end)
end

local function startLoopKillOwnership()
    _G.LoopKill = true
    
    _G.KillOffset = Vector3.new(5, -12.5, 0)
    _G.HeightLimit = 10000
    _G.KillDelay = 0.5
    _G.SavedCFrame = nil

    local function IsAboveLimit(Player)
        if Player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
            return Player.Character.HumanoidRootPart.Position.Y > _G.HeightLimit
        end
        return true
    end

    local function DisableCollisions(Character)
        for _, Desc in pairs(Character:GetDescendants()) do
            if Desc:IsA("BasePart") then
                Desc.CanCollide = false
            end
        end
    end

    local function ForceDeath(Root, Humanoid)
        for _, Part in pairs(Humanoid.Parent:GetChildren()) do
            if Part:IsA("BasePart") then
                Part.CFrame = CFrame.new(-999999999999, 9999999999999, -999999999999)
            end
        end
        task.wait()
        for _, Part2 in pairs(Humanoid.Parent:GetChildren()) do
            if Part2:IsA("BasePart") then
                Part2.CFrame = CFrame.new(-999999999999, 9999999999999, -999999999999)
            end
        end
        local BV = Instance.new("BodyVelocity")
        BV.Velocity = Vector3.new(0, 99999999999, 0)
        BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        BV.P = 100000075
        BV.Parent = Root
        Humanoid.Sit = false
        Humanoid.Jump = true
        Humanoid.BreakJointsOnDeath = false
        Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
        task.delay(2, function()
            if BV and BV.Parent then BV:Destroy() end
            BV = nil
        end)
    end

    local function ReturnToSavedPosition()
        local Char = game:GetService("Players").LocalPlayer.Character
        if Char and Char:FindFirstChild("HumanoidRootPart") and _G.SavedCFrame then
            Char:PivotTo(_G.SavedCFrame)
        end
    end

    local function ExecuteKill(Player)
        if not _G.LoopKill or not Player or not Player.Character then return end
        local Workspace = game:GetService("Workspace")
        if Workspace:FindFirstChild("PlotItems") and Workspace.PlotItems:FindFirstChild("PlayersInPlots") and Workspace.PlotItems.PlayersInPlots:FindFirstChild(Player.Name) then return end

        local Char = Player.Character
        local Root = Char:FindFirstChild("HumanoidRootPart")
        local Head = Char:FindFirstChild("Head")
        local Humanoid = Char:FindFirstChild("Humanoid")
        if not (Root and Head and Humanoid) or Humanoid.Health <= 0 or IsAboveLimit(Player) then return end

        local SelfChar = game:GetService("Players").LocalPlayer.Character
        if not SelfChar or not SelfChar:FindFirstChild("HumanoidRootPart") then return end

        pcall(function()
            if not _G.LoopKill then return end
            SelfChar:PivotTo(CFrame.new(Root.Position + _G.KillOffset))
            DisableCollisions(Char)
            game:GetService("ReplicatedStorage").GrabEvents.SetNetworkOwner:FireServer(Root, Root.CFrame)
            task.wait()
            ReturnToSavedPosition()
            task.wait(0.1)
            game:GetService("ReplicatedStorage").GrabEvents.DestroyGrabLine:FireServer(Root)
            task.wait(0.1)
            if Head:FindFirstChild("PartOwner") and Head.PartOwner.Value == game:GetService("Players").LocalPlayer.Name then
                ForceDeath(Root, Humanoid)
            end
         pcall(ReturnToSavedPosition)
        end)
        task.wait(0.1)
    end

    local function LoopKillFunction()
        local Players = game:GetService("Players")
        local Char = Players.LocalPlayer.Character
        if not Char or not Char:FindFirstChild("HumanoidRootPart") then return end
        if not _G.SavedCFrame then _G.SavedCFrame = Char:GetPivot() end

        if not _G.LoopKill then return end
        
        local rawValue = Options.TargetPlayer and Options.TargetPlayer.Value
        local target = nil
        if type(rawValue) == "string" and rawValue ~= "" and rawValue ~= "None" and rawValue ~= "..." then
            target = Players:FindFirstChild(rawValue)
        end
        
        if target then  
            ExecuteKill(target)
        end
    end

    if _G.LoopKillConnection then _G.LoopKillConnection:Disconnect() end
    _G.LoopKillConnection = game:GetService("RunService").Heartbeat:Connect(function()
        if _G.LoopKill then
            LoopKillFunction()
        else
            if _G.LoopKillConnection then
                _G.LoopKillConnection:Disconnect()
                _G.LoopKillConnection = nil
            end
        end
    end)
end

local function stopAllOwnershipActionMethods()
    stopAllOwnershipMethods()
    stopBringOwnership()
    stopDestroyFoodOwnership()
    stopDestroyGucciOwnership()
    stopLoopBananaOwnership() 
    stopLoopSnowballOwnership()
    
    if getgenv().stopToyFlinger then getgenv().stopToyFlinger() end
    
    _G.LoopKill = false
    if _G.LoopKillConnection then
        _G.LoopKillConnection:Disconnect()
        _G.LoopKillConnection = nil
    end
    _G.SavedCFrame = nil
end

local function syncOwnershipActionMethods()
    if not (Toggles.ApplySelectedOwnershipMethod and Toggles.ApplySelectedOwnershipMethod.Value) then
        return
    end

    if isOwnershipActionSelected("Kick") then startSelectedOwnershipMethod() else stopAllOwnershipMethods() end
    if isOwnershipActionSelected("Kill") then startLoopKillOwnership() else _G.LoopKill = false if _G.LoopKillConnection then _G.LoopKillConnection:Disconnect() _G.LoopKillConnection = nil end end
    if isOwnershipActionSelected("Bring") then if not bringOwnershipActive then startBringOwnership() end else stopBringOwnership() end
    if isOwnershipActionSelected("Destroy Food") then if not antiAntiLagEnabled then startDestroyFoodOwnership() end else stopDestroyFoodOwnership() end
    if isOwnershipActionSelected("Destroy Gucci") then if not destroyGucciActive then startDestroyGucciOwnership() end else stopDestroyGucciOwnership() end
    if isOwnershipActionSelected("Loop Banana") then if not loopBananaActive then startLoopBananaOwnership() end else stopLoopBananaOwnership() end
    if isOwnershipActionSelected("Loop Snowball") then if not loopSnowballActive then startLoopSnowballOwnership() end else stopLoopSnowballOwnership() end
    
    if isOwnershipActionSelected("Toy Flinger") then
        if getgenv().startToyFlinger then getgenv().startToyFlinger() end
    else
        if getgenv().stopToyFlinger then getgenv().stopToyFlinger() end
    end
end

local ownershipMainUI = {}
local methodDropdown

local function updateOwnershipKickMethodVisibility()
    if methodDropdown then
        methodDropdown:SetVisible(isOwnershipActionSelected("Kick"))
    end
    if not isOwnershipActionSelected("Kick") then
        stopAllOwnershipMethods()
    end
    updateOwnershipSettingsVisibility()
end

KicktwoSection:AddDropdown("OwnershipAction", {
    Text = "Method",
    Values = {"Kick", "Kill", "Destroy Food", "Destroy Gucci", "Loop Banana", "Loop Snowball", "Toy Flinger"},
    Multi = true,
    Default = {},
    Callback = function()
        updateOwnershipKickMethodVisibility()
        if Toggles.ApplySelectedOwnershipMethod and Toggles.ApplySelectedOwnershipMethod.Value then
            syncOwnershipActionMethods()
        end
    end,
})

methodDropdown = KicktwoSection:AddDropdown("OwnershipKickMethod", {
Text = "Ownership Method",
Values = {"Fast", "Slower"},
Default = "None",
Callback = function()
updateOwnershipSettingsVisibility()
if Toggles.ApplySelectedOwnershipMethod
and Toggles.ApplySelectedOwnershipMethod.Value
and isOwnershipActionSelected("Kick") then
stopAllOwnershipMethods()
startSelectedOwnershipMethod()
end
end,
})
methodDropdown:SetVisible(false)

ApplySection:AddCheckbox("ApplySelectedOwnershipMethod", {
Text = "Apply Selected Method",
Default = false,
Callback = function(Value)
if not Value then
stopAllOwnershipActionMethods()
return
end
syncOwnershipActionMethods()
end,
})

ApplySection:AddButton("ApplySelectedOwnershipMethod", {
Text = "Apply Selected Method",
Default = false,
Callback = function(Value)
if not Value then
stopAllOwnershipActionMethods()
return
end
syncOwnershipActionMethods()
end,
})

table.insert(ownershipRagdollUI, KicktwoSection:AddCheckbox("AutoPalletToggle", {
    Text = "Permanent-Pallet",
    Default = false,
    Callback = function(on)
        _G.AutoPallet = on
        if on then
            task.spawn(function()
                local RS = game:GetService("ReplicatedStorage")
                local LP = game:GetService("Players").LocalPlayer
                local HIDDEN_CF = CFrame.new(0, 1e9, 0)

                while _G.AutoPallet do
                    local MyToys = workspace:FindFirstChild(LP.Name .. "SpawnedInToys")
                    local pallet = MyToys and MyToys:FindFirstChild("PalletLightBrown")

                    if not pallet then
                        pcall(function()
                            RS.MenuToys.SpawnToyRemoteFunction:InvokeServer("PalletLightBrown", HIDDEN_CF, Vector3.new(0, -90, 0))
                        end)
                        task.wait(0.05)
                    end

                    task.wait(0.1)
                end
            end)
        end
    end
}))

table.insert(ownershipRagdollUI, KicktwoSection:AddCheckbox("UsePalletForKickToggle", {
    Text = "Should-Ragdoll",
    Default = false,
    Callback = function(on)
        _G.UsePalletForKick = on
    end
}))

KicktwoSection:AddCheckbox("RemoveAntiKickToggle", {
    Text = "Remove Anti-Kick [Shuriken & Toy]",
    Default = false,
    Callback = function(Value)
        antiAntiKickActive = Value
        if Value then
            if antiAntiKickTask then
                pcall(task.cancel, antiAntiKickTask)
                antiAntiKickTask = nil
            end
            local targetName = Options.TargetPlayer.Value
            if targetName and targetName ~= "" then
                antiAntiKickTask = task.spawn(RemoveAntiKickFunction)
            else
                antiAntiKickActive = false
            end
        else
            if antiAntiKickTask then
                pcall(task.cancel, antiAntiKickTask)
                antiAntiKickTask = nil
            end
        end
    end
})

local ownershipRagdollSettingsLabel = KicktwoSection:AddLabel("Fast Settings", true)
ownershipRagdollSettingsLabel:SetText("Fast " .. previewColorText("Settings", PREVIEW_COLORS.orange))
table.insert(ownershipRagdollUI, ownershipRagdollSettingsLabel)

table.insert(ownershipRagdollUI, KicktwoSection:AddSlider("OwnershipKickOffsetX", {
    Text = "Offset X",
    Min = -5,
    Max = 8,
    Default = 0,
    Rounding = 1,
    Callback = function(Value)
        ownershipKickOffsetX = Value
    end
}))

table.insert(ownershipRagdollUI, KicktwoSection:AddSlider("OwnershipKickOffsetY", {
    Text = "Offset Y",
    Min = -5,
    Max = 5,
    Default = 0,
    Rounding = 1,
    Callback = function(Value)
        ownershipKickOffsetY = Value
    end
}))

table.insert(ownershipRagdollUI, KicktwoSection:AddSlider("OwnershipKickOffsetZ", {
    Text = "Offset Z",
    Min = -5,
    Max = 8,
    Default = 0,
    Rounding = 1,
    Callback = function(Value)
        ownershipKickOffsetZ = Value
    end
}))

local ownershipSpamGrabSettingsLabel = KicktwoSection:AddLabel("Spam-Grab Kick Settings", true)
ownershipSpamGrabSettingsLabel:SetText("Spam-Grab Kick " .. previewColorText("Settings", PREVIEW_COLORS.orange))
table.insert(ownershipSpamGrabUI, ownershipSpamGrabSettingsLabel)

table.insert(ownershipSpamGrabUI, KicktwoSection:AddSlider("OwnershipKickGrabOffsetX", {
    Text = "Offset X",
    Min = -5,
    Max = 8,
    Default = 0,
    Rounding = 1,
    Callback = function(Value)
        ownershipKickGrabOffsetX = Value
    end
}))

table.insert(ownershipSpamGrabUI, KicktwoSection:AddSlider("OwnershipKickGrabOffsetY", {
    Text = "Offset Y",
    Min = -5,
    Max = 5,
    Default = 0,
    Rounding = 1,
    Callback = function(Value)
        ownershipKickGrabOffsetY = Value
    end
}))

table.insert(ownershipSpamGrabUI, KicktwoSection:AddSlider("OwnershipKickGrabOffsetZ", {
    Text = "Offset Z",
    Min = -5,
    Max = 8,
    Default = 0,
    Rounding = 1,
    Callback = function(Value)
        ownershipKickGrabOffsetZ = Value
    end
}))

local respawnConnection
KicktwoSection:AddButton("PlatformTPToggle", {
    Text = "Platform-TP",
    Default = false,
    Callback = function(on)
        if respawnConnection then
            respawnConnection:Disconnect()
            respawnConnection = nil
        end

        if on then
            local function teleportToPlatform(character)
                local hrp = character:WaitForChild("HumanoidRootPart", 5)
                if hrp and LocalPlatform then
                    task.wait(0.05)
                    hrp.CFrame = LocalPlatform.CFrame * CFrame.new(0, 3, 0)
                end
            end

            if LocalPlayer.Character then
                task.spawn(teleportToPlatform, LocalPlayer.Character)
            end

            respawnConnection = LocalPlayer.CharacterAdded:Connect(function(newCharacter)
                teleportToPlatform(newCharacter)
            end)
        end
    end
})

updateOwnershipSettingsVisibility()

do
    local flingerActive = false
    local flingerTask = nil
    local toyPartMap = { DiceBig = "SoundPart", DiceSmall = "SoundPart", YouDecoy = "Head", YouLittle = "Head" }

    getgenv().stopToyFlinger = function()
        flingerActive = false
        if flingerTask then pcall(task.cancel, flingerTask) flingerTask = nil end
        pcall(function()
            local folder = workspace:FindFirstChild(LocalPlayer.Name .. "SpawnedInToys")
            local toyName = Options.FlingToySelect.Value
            if folder and folder:FindFirstChild(toyName) then game.ReplicatedStorage.MenuToys.DestroyToy:FireServer(folder[toyName]) end
        end)
    end

    getgenv().startToyFlinger = function()
        if flingerActive then return end
        flingerActive = true
        flingerTask = task.spawn(function()
            while flingerActive do
                local target = getSelectedTargetPlayer()
                local char = LocalPlayer.Character
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                if target and target.Character and hrp then
                    local tRoot = target.Character:FindFirstChild("HumanoidRootPart")
                    local sToy = Options.FlingToySelect.Value
                    local folder = workspace:FindFirstChild(LocalPlayer.Name .. "SpawnedInToys")
                    local toy = folder and folder:FindFirstChild(sToy)

                    if not toy or not toy.Parent then
                        game.ReplicatedStorage.MenuToys.SpawnToyRemoteFunction:InvokeServer(sToy, hrp.CFrame * CFrame.new(0, -10, 0), Vector3.zero)
                        task.wait(0.25)
                    else
                        local pName = toyPartMap[sToy] or "Handle"
                        local p = toy:FindFirstChild(pName)
                        if p and tRoot then
                            game.ReplicatedStorage.GrabEvents.SetNetworkOwner:FireServer(p, p.CFrame)
                            p.CFrame = tRoot.CFrame + (tRoot.Velocity * 0.12)
                            p.Velocity = Vector3.new(0, 5000, 0)
                            p.RotVelocity = Vector3.new(5000, 5000, 5000)
                        end
                    end
                end
                task.wait()
            end
        end)
    end

    local FlingerSettings = KicktwoSection:AddDependencyGroupbox("Toy Flinger Settings")
    FlingerSettings:AddDropdown("FlingToySelect", {
        Text = "Fling Toy",
        Values = {"DiceBig", "DiceSmall", "YouDecoy", "YouLittle"},
        Default = "DiceBig",
        Callback = function()
            if flingerActive then
                getgenv().stopToyFlinger()
                task.wait(0.1)
                getgenv().startToyFlinger()
            end
        end
    })
    FlingerSettings:SetupDependencies({{ Options.OwnershipAction, "Toy Flinger" }})
end

end

do



local BlobTarg = Tabs.Blobman:AddLeftGroupbox("Target")

local function getSelectedTargetBlobPlayer()
    local name = Options.TargetBlobPlayer and Options.TargetBlobPlayer.Value
    if type(name) ~= "string" or name == "" or name == "None" or name == "..." then
        return nil
    end
    return Players:FindFirstChild(name)
end

local blobPlayerList = getTargetBlobPlayerOptionsList()
BlobTarg:AddDropdown("TargetBlobPlayer", {
    Text = "Target Blob Player Name",
    Values = blobPlayerList,
    Default = blobPlayerList[1],
    Callback = function() 
    end
})

task.defer(refreshTargetBlobPlayersDropdown)

BlobTarg:AddLabel("Select Target Key"):AddKeyPicker("SelectTargetKeybind", {
    Default = "T",
    Mode = "Press",
    Text = "Select Target Key",
    NoUI = false,
    Callback = function()
        local mouse = LocalPlayer:GetMouse()
        local targetPart = mouse and mouse.Target
        if not targetPart then return end

        local targetModel = targetPart:FindFirstAncestorOfClass("Model")
        if not targetModel then return end

        local hoveredPlayer = Players:GetPlayerFromCharacter(targetModel)
        if hoveredPlayer and hoveredPlayer ~= LocalPlayer then
            Options.TargetBlobPlayer:SetValue(hoveredPlayer.Name)
        end
    end
})

  local BlobFunc = Tabs.Blobman:AddRightGroupbox("Blobman Functions")

  BlobFunc:AddDropdown("MethodSelect", {
    Text = "Method List",
    Values = {"Bring", "Loop-Kick (Grab+Blob)", "Loop-Kick (Spin grab)", "Blob-Kill", "Lock"},
    Default = "Bring",
    Callback = function() end
})

BlobFunc:AddCheckbox("LoopAppleMethod", {
    Text = "Apply Selected Method",
    Default = false,
    Callback = function(Value)
        if Value then
            local targetName = Options.TargetBlobPlayer and Options.TargetBlobPlayer.Value
            local method = Options.MethodSelect.Value
            if targetName and targetName ~= "" and targetName ~= "None" then
                task.spawn(function()
                    if method == "Loop-Kick (Grab+Blob)" then
                        loopKickBlobActive = true
                        LoopKickBlobFunction(targetName)
                        while Toggles.LoopAppleMethod.Value do
                            task.wait(0.1)
                        end
                        loopKickBlobActive = false
                    elseif method == "Loop-Kick (Spin grab)" then
                        loopKickSpinGrabBlobActive = true
                        LoopKickSpinGrabFunction(targetName)
                        while Toggles.LoopAppleMethod.Value do
                            task.wait(0.1)
                        end
                        loopKickSpinGrabBlobActive = false
                    elseif method == "Lock" then
                        BlobLock:Start(targetName)
                        while Toggles.LoopAppleMethod.Value and BlobLock.Running do
                            task.wait(0.1)
                        end
                        BlobLock:Stop()
                    else
                        while Toggles.LoopAppleMethod.Value do
                            if method == "Bring" then Bring(targetName)
                            elseif method == "Kick" then Kick(targetName)
                            elseif method == "Loop Kick" then LoopKick(targetName)
                            elseif method == "Bypass" then Bypass(targetName)
                            elseif method == "Blob-Kill" then BlobKill(targetName) end
                            task.wait(1)
                        end
                    end
                end)
            else
                Toggles.LoopAppleMethod:SetValue(false)
            end
        else
            loopKickBlobActive = false
            loopKickSpinGrabBlobActive = false
            if loopKickSpinGrabTask then
                pcall(task.cancel, loopKickSpinGrabTask)
                loopKickSpinGrabTask = nil
            end
            if BlobLock then
                BlobLock:Stop()
            end
        end
    end
})

BlobFunc:AddButton({
    Text = "Apply Selected Method",
    Func = function()
        local targetName = Options.TargetBlobPlayer and Options.TargetBlobPlayer.Value
        local method = Options.MethodSelect.Value
        if targetName and targetName ~= "" and targetName ~= "None" then
            if method == "Loop-Kick (Grab+Blob)" then
                LoopKickBlobFunction(targetName)
            elseif method == "Loop-Kick (Spin grab)" then
                LoopKickSpinGrabFunction(targetName)
            elseif method == "Lock" then
                BlobLock:Start(targetName)
            else
                if method == "Bring" then Bring(targetName)
                elseif method == "Kick" then Kick(targetName)
                elseif method == "Loop Kick" then LoopKick(targetName)
                elseif method == "Bypass" then Bypass(targetName)
                elseif method == "Blob-Kill" then BlobKill(targetName) end
            end
        end
    end
})
end

do
local VisualsLeft1 = Tabs.Visuals:AddLeftGroupbox("Camera")
local VisualsLeft2 = Tabs.Visuals:AddLeftGroupbox("ESP")
local VisualsRight = Tabs.Visuals:AddRightGroupbox("PCLD Tracker")

local currentFOV = workspace.CurrentCamera.FieldOfView
VisualsLeft1:AddSlider("FOVSlider", {
    Text = "Field of View",
    Default = currentFOV,
    Min = 40,
    Max = 120,
    Rounding = 1,
    Callback = function(Value)
        workspace.CurrentCamera.FieldOfView = Value
    end
})

VisualsLeft1:AddCheckbox('ThirdEyeToggle', {
    Text = 'Third Person',
    Tooltip = 'Unlocks camera zoom distance.',
    Default = false,
    Callback = function(v)
        local plr = LocalPlayer

        if v then
            plr.CameraMode = Enum.CameraMode.Classic
            plr.CameraMaxZoomDistance = 1000
            plr.CameraMinZoomDistance = 12

            task.wait()

            plr.CameraMinZoomDistance = 0.5
        else
            plr.CameraMode = Enum.CameraMode.LockFirstPerson
            plr.CameraMaxZoomDistance = 0.5
            plr.CameraMinZoomDistance = 0.5
        end
    end,
})

local espEnabled = false
local espBoxes = {}
local espColor = Color3.fromRGB(238, 32, 77)
local espNameEnabled = false
local espNameColor = Color3.fromRGB(255, 255, 255)
local espNameOptions = {
    Name = true,
    HP = true,
    Distance = true,
    Coordinates = true,
    Avatar = true,
}
local ESP_NAME_WIDTH = 220
local ESP_NAME_TEXT_SIZE = 11
local ESP_NAME_LINE_HEIGHT = 14
local ESP_NAME_AVATAR_SIZE = 28
local ESP_NAME_AVATAR_PADDING = 4
local ESP_NAME_WORLD_OFFSET = Vector3.new(0, 2.5, 0)
local nameEspUpdateConnection = nil
local nameEspScreenGui = nil
local espNames = {}
local setupNameEspForPlayer

local ESP_NAME_COLORS = {
    green = "#00FF00",
    red = "#FF4444",
    yellow = "#FFD700",
    cyan = "#00BFFF",
}

local function colorToHex(color)
    return string.format(
        "#%02X%02X%02X",
        math.floor(color.R * 255 + 0.5),
        math.floor(color.G * 255 + 0.5),
        math.floor(color.B * 255 + 0.5)
    )
end

local function espColorText(text, color)
    return string.format('<font color="%s">%s</font>', color, tostring(text))
end

local function getEspHpColor(health, maxHealth)
    if health <= 0 then
        return ESP_NAME_COLORS.red
    end
    local ratio = maxHealth > 0 and health / maxHealth or 0
    if ratio >= 1 then
        return ESP_NAME_COLORS.green
    elseif ratio >= 0.4 then
        return ESP_NAME_COLORS.yellow
    end
    return ESP_NAME_COLORS.red
end

local function getNameEspLineCount()
    local count = 0
    if espNameOptions.Name then count = count + 1 end
    if espNameOptions.HP then count = count + 1 end
    if espNameOptions.Distance then count = count + 1 end
    if espNameOptions.Coordinates then count = count + 1 end
    return math.max(count, 1)
end

local function buildNameEspText(player)
    local lines = {}
    local char = player.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    local myChar = LocalPlayer.Character
    local myHrp = myChar and myChar:FindFirstChild("HumanoidRootPart")

    if espNameOptions.Name then
        table.insert(lines, espColorText(
            string.format("| %s (%s) |", player.DisplayName, player.Name),
            colorToHex(espNameColor)
        ))
    end

    if espNameOptions.HP then
        if hum then
            local health = math.floor(hum.Health + 0.5)
            local maxHealth = math.floor(hum.MaxHealth + 0.5)
            local hpColor = getEspHpColor(health, maxHealth)
            table.insert(lines, string.format(
                "HP: %s/%d",
                espColorText(health, hpColor),
                maxHealth
            ))
        else
            table.insert(lines, "HP: N/A")
        end
    end

    if espNameOptions.Distance then
        if hrp and myHrp then
            local dist = math.floor((hrp.Position - myHrp.Position).Magnitude + 0.5)
            table.insert(lines, string.format(
                "Distance: %s Studs",
                espColorText(dist, ESP_NAME_COLORS.green)
            ))
        else
            table.insert(lines, "Distance: N/A")
        end
    end

    if espNameOptions.Coordinates then
        if hrp then
            local pos = hrp.Position
            table.insert(lines, string.format(
                "XYZ: %s, %s, %s",
                espColorText(math.floor(pos.X + 0.5), ESP_NAME_COLORS.cyan),
                espColorText(math.floor(pos.Y + 0.5), ESP_NAME_COLORS.cyan),
                espColorText(math.floor(pos.Z + 0.5), ESP_NAME_COLORS.cyan)
            ))
        else
            table.insert(lines, "XYZ: N/A")
        end
    end

    return table.concat(lines, "\n")
end

local function ensureNameEspScreenGui()
    if nameEspScreenGui and nameEspScreenGui.Parent then
        return nameEspScreenGui
    end

    pcall(function()
        for _, parent in ipairs({game:GetService("CoreGui"), LocalPlayer:WaitForChild("PlayerGui")}) do
            local existing = parent:FindFirstChild("TheRevenge_NameESP")
            if existing then
                existing:Destroy()
            end
        end
    end)

    local gui = Instance.new("ScreenGui")
    gui.Name = "TheRevenge_NameESP"
    gui.ResetOnSpawn = false
    gui.IgnoreGuiInset = true
    gui.DisplayOrder = 998
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    pcall(function()
        gui.ScreenInsets = Enum.ScreenInsets.None
    end)

    local success = pcall(function()
        gui.Parent = game:GetService("CoreGui")
    end)
    if not success then
        gui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    end

    nameEspScreenGui = gui
    return gui
end

local function ensureNameEspAvatarFrame(container)
    local avatarFrame = container:FindFirstChild("AvatarFrame")
    if avatarFrame then
        return avatarFrame
    end

    avatarFrame = Instance.new("Frame")
    avatarFrame.Name = "AvatarFrame"
    avatarFrame.BackgroundTransparency = 1
    avatarFrame.AnchorPoint = Vector2.new(0, 0.5)
    avatarFrame.Size = UDim2.fromOffset(ESP_NAME_AVATAR_SIZE, ESP_NAME_AVATAR_SIZE)
    avatarFrame.Position = UDim2.new(0, 0, 0.5, 0)
    avatarFrame.Parent = container

    local avatarImage = Instance.new("ImageLabel")
    avatarImage.Name = "AvatarImage"
    avatarImage.BackgroundTransparency = 1
    avatarImage.Size = UDim2.new(1, 0, 1, 0)
    avatarImage.ScaleType = Enum.ScaleType.Crop
    avatarImage.Parent = avatarFrame

    return avatarFrame
end

local function updateNameEspLabel(container, player)
    local topLabel = container:FindFirstChild("TopLabel")
    if not topLabel then return end

    local showAvatar = espNameOptions.Avatar == true
    local avatarOffset = 0

    if showAvatar then
        local avatarFrame = ensureNameEspAvatarFrame(container)
        avatarFrame.Visible = true

        local avatarImage = avatarFrame:FindFirstChild("AvatarImage")
        if avatarImage then
            avatarImage.Image = string.format(
                "rbxthumb://type=AvatarBust&id=%d&w=150&h=150",
                player.UserId
            )
        end

        avatarOffset = ESP_NAME_AVATAR_SIZE + ESP_NAME_AVATAR_PADDING
        topLabel.Position = UDim2.fromOffset(avatarOffset, 0)
        topLabel.Size = UDim2.new(1, -avatarOffset, 1, 0)
    else
        local avatarFrame = container:FindFirstChild("AvatarFrame")
        if avatarFrame then
            avatarFrame.Visible = false
        end
        topLabel.Position = UDim2.fromOffset(0, 0)
        topLabel.Size = UDim2.new(1, 0, 1, 0)
    end

    local lineCount = getNameEspLineCount()
    container.Size = UDim2.fromOffset(
        ESP_NAME_WIDTH + avatarOffset,
        math.max(ESP_NAME_AVATAR_SIZE, lineCount * ESP_NAME_LINE_HEIGHT + 6)
    )
    topLabel.Text = buildNameEspText(player)
end

local function updateNameEspPosition(container, character)
    if not container then return end

    local head = character and character:FindFirstChild("Head")
    if not head then
        container.Visible = false
        return
    end

    local camera = workspace.CurrentCamera
    if not camera then
        container.Visible = false
        return
    end

    local screenPos, onScreen = camera:WorldToViewportPoint(head.Position + ESP_NAME_WORLD_OFFSET)
    if onScreen and screenPos.Z > 0 then
        container.AnchorPoint = Vector2.new(0, 0.5)
        container.Position = UDim2.fromOffset(screenPos.X, screenPos.Y)
        container.Visible = true
    else
        container.Visible = false
    end
end

local function refreshAllNameEspLabels()
    for playerName, container in pairs(espNames) do
        local player = Players:FindFirstChild(playerName)
        if not player or not container then continue end

        local character = player.Character
        if not character or not character:FindFirstChild("Head") then
            if espNameEnabled and character then
                setupNameEspForPlayer(player, character)
            else
                container.Visible = false
            end
        else
            updateNameEspLabel(container, player)
            updateNameEspPosition(container, character)
        end
    end
end

local function startNameEspUpdates()
    if nameEspUpdateConnection then return end
    nameEspUpdateConnection = RunService.PreRender:Connect(function()
        if not espNameEnabled then return end
        refreshAllNameEspLabels()
    end)
end

local function stopNameEspUpdates()
    if nameEspUpdateConnection then
        nameEspUpdateConnection:Disconnect()
        nameEspUpdateConnection = nil
    end
end

do
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local espEnabled = false
local espColor = Color3.fromRGB(72, 6, 7)
local espBoxes = {}
local targetNames = {
	"partesp",
	"playercharacterlocationdetector"
}

local warpSpeed = 15
local POSITION_TOLERANCE = 5

local function GetDetectorOwner(detectorObj)
    if not detectorObj or not detectorObj:IsA("BasePart") then return "Unknown" end
    
    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if hrp then
        local dist = (detectorObj.Position - hrp.Position).Magnitude
        if dist <= 12 then
            return LocalPlayer.DisplayName
        end
    end
    
    local ownerAttr = detectorObj:GetAttribute("Owner")
    if ownerAttr then
        local p = Players:FindFirstChild(ownerAttr) or Players:GetPlayerByUserId(tonumber(ownerAttr) or 0)
        if p then return p.DisplayName end
    end
    
    if string.find(detectorObj.Name, " %(PCLD%)") then
        local cleanedName = string.gsub(detectorObj.Name, " %(PCLD%)", "")
        if cleanedName ~= "PlayerCharacterLocationDetector" and cleanedName ~= "" then
            return cleanedName
        end
    end

    local detectorPos = detectorObj.Position
    local bestPlayer = nil
    local bestDistance = POSITION_TOLERANCE + 1

    for _, player in ipairs(Players:GetPlayers()) do
        if player == LocalPlayer then continue end 
        local pChar = player.Character
        local pHrp = pChar and pChar:FindFirstChild("HumanoidRootPart")
        if pHrp then
            local dist = (detectorPos - pHrp.Position).Magnitude
            if dist <= POSITION_TOLERANCE and dist < bestDistance then
                bestDistance = dist
                bestPlayer = player
            end
        end
    end

    if bestPlayer then return bestPlayer.DisplayName end
    return "Unknown"
end

local function IsTarget(obj)
	if not obj:IsA("BasePart") then return false end
	for _, name in ipairs(targetNames) do
		if string.lower(obj.Name) == string.lower(name) or string.find(string.lower(obj.Name), "pcld") then
			return true
		end
	end
	return false
end

local function AddBoxESP(obj)
	if espBoxes[obj] then return end
	
	local box = Instance.new("BoxHandleAdornment")
	box.Adornee = workspace:FindFirstChildOfClass("Terrain") or workspace
	box.AlwaysOnTop = true
	box.ZIndex = 5
	box.Color3 = espColor
	box.Transparency = 0.70
	box.Size = obj.Size
	box.CFrame = obj.CFrame
	box.Parent = CoreGui
	
	local billboard = Instance.new("BillboardGui")
	billboard.Name = "PCLDTextESP"
	billboard.Size = UDim2.new(0, 150, 0, 30)
	billboard.AlwaysOnTop = true
	billboard.Adornee = obj
	billboard.Parent = CoreGui
	
	local textLabel = Instance.new("TextLabel")
	textLabel.Size = UDim2.new(1, 0, 1, 0)
	textLabel.BackgroundTransparency = 1
	textLabel.TextColor3 = espColor
	textLabel.TextStrokeTransparency = 0.2
	textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	textLabel.Font = Enum.Font.GothamBold
	textLabel.TextSize = 11
	textLabel.TextXAlignment = Enum.TextXAlignment.Center
	textLabel.TextYAlignment = Enum.TextYAlignment.Center
	textLabel.Parent = billboard
	
	local cachedOwner = GetDetectorOwner(obj)
	textLabel.Text = cachedOwner .. " (PCLD)"
	
	local lastUpdate = 0
	local connection = RunService.PreRender:Connect(function(dt)
		if obj and obj.Parent then
			-- Плавное движение бокса (выполняется каждый кадр)
			local alpha = 1 - math.exp(-warpSpeed * dt)
			box.CFrame = box.CFrame:Lerp(obj.CFrame, alpha)
			box.Size = box.Size:Lerp(obj.Size, alpha)
			
			local now = tick()
			if now - lastUpdate >= 0.4 then
				lastUpdate = now
				local currentOwner = GetDetectorOwner(obj)
				
				local char = LocalPlayer.Character
				local hrp = char and char:FindFirstChild("HumanoidRootPart")
				if hrp and (obj.Position - hrp.Position).Magnitude <= 12 then
					currentOwner = LocalPlayer.DisplayName
				end
				
				if textLabel.Text ~= currentOwner .. " (PCLD)" then
					textLabel.Text = currentOwner .. " (PCLD)"
				end
			end
		else
			if espBoxes[obj] then
				espBoxes[obj].Connection:Disconnect()
				espBoxes[obj].Box:Destroy()
				if espBoxes[obj].Billboard then espBoxes[obj].Billboard:Destroy() end
				espBoxes[obj] = nil
			end
		end
	end)
	
	espBoxes[obj] = { Box = box, Billboard = billboard, Connection = connection }
	
	obj.AncestryChanged:Connect(function(_, parent)
		if not parent and espBoxes[obj] then
			espBoxes[obj].Connection:Disconnect()
			espBoxes[obj].Box:Destroy()
			if espBoxes[obj].Billboard then espBoxes[obj].Billboard:Destroy() end
			espBoxes[obj] = nil
		end
	end)
end

local function RemoveAllBoxes()
	for obj, data in pairs(espBoxes) do
		if data.Connection then data.Connection:Disconnect() end
		if data.Box then data.Box:Destroy() end
		if data.Billboard then data.Billboard:Destroy() end
	end
	espBoxes = {}
end

local function Scan()
	for _, obj in ipairs(workspace:GetDescendants()) do
		if espEnabled and IsTarget(obj) then AddBoxESP(obj) end
	end
end

workspace.DescendantAdded:Connect(function(obj)
	if espEnabled and IsTarget(obj) then AddBoxESP(obj) end
end)

VisualsRight:AddCheckbox("BoxESPWhite", {
	Text = "Default-PCLD",
	Default = false,
	Callback = function(Value)
		espEnabled = Value
		if espEnabled then Scan() else RemoveAllBoxes() end
	end
}):AddColorPicker("GhostPCLDColor", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "Default-PCLD Color",
    Callback = function(Value)
        espColor = Value
        for _, data in pairs(espBoxes) do
            if data.Box then data.Box.Color3 = espColor end
            if data.Billboard and data.Billboard:FindFirstChildOfClass("TextLabel") then
                data.Billboard:FindFirstChildOfClass("TextLabel").TextColor3 = espColor
            end
        end
    end
})
end

local highlightEspEnabled = false
local highlightObjects = {} 

local function RemoveHighlightESP(player)
    if highlightObjects[player] then
        pcall(function() highlightObjects[player]:Destroy() end)
        highlightObjects[player] = nil
    end
end

local function AddHighlightESP(char)
    local highlight = Instance.new("Highlight")
    highlight.Name = "ESSP_Highlight"
    highlight.Adornee = char
    highlight.FillTransparency = 1
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = game.CoreGui
    return highlight
end

local function SetupHighlightPlayer(plr)
    if plr == game.Players.LocalPlayer then return end
    
    local function onChar(char)
        RemoveHighlightESP(plr) 
        if not highlightEspEnabled then return end
        
        local hrp = char:WaitForChild("HumanoidRootPart", 10)
        if hrp and char.Parent then
            highlightObjects[plr] = AddHighlightESP(char)
        end
    end

    plr.CharacterAdded:Connect(onChar)
    if plr.Character then onChar(plr.Character) end
end

game.Players.PlayerAdded:Connect(SetupHighlightPlayer)
game.Players.PlayerRemoving:Connect(RemoveHighlightESP)

VisualsRight:AddCheckbox("HighlightESSPToggle", {
    Text = "Highlight ESP",
    Default = false,
    Callback = function(Value)
        highlightEspEnabled = Value
        if highlightEspEnabled then
            for _, plr in ipairs(game.Players:GetPlayers()) do 
                SetupHighlightPlayer(plr) 
            end
        else
            for plr, _ in pairs(highlightObjects) do 
                RemoveHighlightESP(plr) 
            end
        end
    end
})

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")

local StickyESP = {
    Enabled = false,
    Color = Color3.fromRGB(255, 255, 255), -- Белая обводка
    FillColor = Color3.fromRGB(255, 0, 0), -- Красная заливка
    espObjects = {},
    trackedItems = {
        ["NinjaKatana"] = true,
        ["NinjaKunai"] = true, 
        ["NinjaShuriken"] = true,
        ["ToolCleaver"] = true,
        ["ToolDiggingForkRusty"] = true,
        ["ToolPencil"] = true,
        ["ToolPickaxe"] = true,
        ["NinjaLOL"] = true
    }
}

local function RemoveStickyESP(item)
    if StickyESP.espObjects[item] then
        pcall(function() StickyESP.espObjects[item]:Destroy() end)
        StickyESP.espObjects[item] = nil
    end
end

local function AddStickyESP(visualPart)
    local highlight = Instance.new("Highlight")
    highlight.Name = "Sticky_Highlight"
    highlight.Adornee = visualPart -- БАГФИКС: Обводим только физическую деталь, а не ломаную модель целиком
    
    highlight.FillColor = StickyESP.FillColor
    highlight.FillTransparency = 0.5 
    highlight.OutlineColor = StickyESP.Color
    highlight.OutlineTransparency = 0
    
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = CoreGui 
    return highlight
end

local function SetupStickyItem(item)
    if not item or not item.Parent then return end
    if not StickyESP.trackedItems[item.Name] then return end
    
    RemoveStickyESP(item)
    if not StickyESP.Enabled then return end
    
    -- Ищем реальную физическую часть внутри объекта
    local visualPart = item:IsA("BasePart") and item 
        or item:WaitForChild("StickyPart", 3) 
        or item:FindFirstChildWhichIsA("BasePart")
    
    -- Если это модель и у нее есть Handle/Mesh (как у мечей/катаны)
    if not visualPart and item:IsA("Model") then
        visualPart = item:FindFirstChild("Handle") or item:FindFirstChildWhichIsA("MeshPart")
    end
    
    -- Если вообще ничего не нашли, берем PrimaryPart модели
    if not visualPart and item:IsA("Model") then
        visualPart = item.PrimaryPart
    end

    if visualPart and item.Parent then
        -- Привязываем ESP именно к найденному парту
        StickyESP.espObjects[item] = AddStickyESP(visualPart)
    end
end

local function UpdateAllItems()
    if StickyESP.Enabled then
        for _, desc in ipairs(Workspace:GetDescendants()) do
            if StickyESP.trackedItems[desc.Name] then
                task.spawn(SetupStickyItem, desc)
            end
        end
    else
        for item, _ in pairs(StickyESP.espObjects) do
            RemoveStickyESP(item)
        end
    end
end

Workspace.DescendantAdded:Connect(function(desc)
    if StickyESP.trackedItems[desc.Name] then
        SetupStickyItem(desc)
    end
end)

Workspace.DescendantRemoving:Connect(RemoveStickyESP)

VisualsRight:AddCheckbox("HighlightESSPToggle", {
    Text = "Sticky ESP",
    Default = false,
    Callback = function(Value)
        StickyESP.Enabled = Value
        UpdateAllItems()
    end
})

local nameEspPlayerConnections = {}

local function removeNameEspForPlayer(player)
    if espNames[player.Name] then
        espNames[player.Name]:Destroy()
        espNames[player.Name] = nil
    end
end

setupNameEspForPlayer = function(player, character)
    if not character or not character.Parent then return end

    removeNameEspForPlayer(player)

    local head = character:WaitForChild("Head", 10)
    local hum = character:WaitForChild("Humanoid", 10)
    local hrp = character:WaitForChild("HumanoidRootPart", 10)
    if not head or not hum or not hrp then return end

    local screenGui = ensureNameEspScreenGui()

    local container = Instance.new("Frame")
    container.Name = player.Name .. "_NameESP"
    container.BackgroundTransparency = 1
    container.BorderSizePixel = 0
    container.Visible = false
    container.Parent = screenGui

    local topLabel = Instance.new("TextLabel")
    topLabel.Name = "TopLabel"
    topLabel.Parent = container
    topLabel.BackgroundTransparency = 1
    topLabel.Position = UDim2.fromOffset(0, 0)
    topLabel.Size = UDim2.new(1, 0, 1, 0)
    topLabel.TextXAlignment = Enum.TextXAlignment.Left
    topLabel.TextYAlignment = Enum.TextYAlignment.Top
    topLabel.RichText = true
    topLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    topLabel.TextStrokeTransparency = 0.2
    topLabel.TextSize = ESP_NAME_TEXT_SIZE
    topLabel.Font = Enum.Font.GothamBold

    updateNameEspLabel(container, player)
    updateNameEspPosition(container, character)

    espNames[player.Name] = container
end

local function AddNameESP(player)
    if nameEspPlayerConnections[player] then return end

    local charAddedConn = player.CharacterAdded:Connect(function(char)
        if espNameEnabled then
            task.defer(function()
                setupNameEspForPlayer(player, char)
            end)
        end
    end)

    local charRemovingConn = player.CharacterRemoving:Connect(function()
        removeNameEspForPlayer(player)
    end)

    nameEspPlayerConnections[player] = {charAddedConn, charRemovingConn}

    if player.Character then
        task.spawn(function()
            setupNameEspForPlayer(player, player.Character)
        end)
    end
end

local function ScanPlayers()
    for _, player in pairs(Players:GetPlayers()) do
        AddNameESP(player)
    end
end

local function RemoveAllNames()
    for _, gui in pairs(espNames) do
        if gui then gui:Destroy() end
    end
    table.clear(espNames)

    if nameEspScreenGui then
        nameEspScreenGui:Destroy()
        nameEspScreenGui = nil
    end

    for player, connections in pairs(nameEspPlayerConnections) do
        for _, conn in ipairs(connections) do
            conn:Disconnect()
        end
        nameEspPlayerConnections[player] = nil
    end
end

Players.PlayerAdded:Connect(function(player)
    if espNameEnabled then
        AddNameESP(player)
    end
end)

Players.PlayerRemoving:Connect(function(player)
    removeNameEspForPlayer(player)
    if nameEspPlayerConnections[player] then
        for _, conn in ipairs(nameEspPlayerConnections[player]) do
            conn:Disconnect()
        end
        nameEspPlayerConnections[player] = nil
    end
end)

VisualsLeft2:AddCheckbox("NameESPToggle", {
    Text = "Name-ESP",
    Default = false,
    Callback = function(Value)
        espNameEnabled = Value
        if Value then
            ScanPlayers()
            startNameEspUpdates()
        else
            stopNameEspUpdates()
            RemoveAllNames()
        end
    end
}):AddColorPicker("NameESPColor", {
    Default = Color3.fromRGB(255, 255, 255),
    Title = "Name ESP Color",
    Callback = function(Value)
        espNameColor = Value
        refreshAllNameEspLabels()
    end
})

VisualsLeft2:AddDropdown("NameESPOptions", {
    Text = "Name ESP Display",
    Values = {"Name", "HP", "Distance", "Coordinates", "Avatar"},
    Multi = true,
    Default = {"Name", "HP", "Distance", "Coordinates", "Avatar"},
    Callback = function(Value)
        espNameOptions = Value
        refreshAllNameEspLabels()
    end
})

local blobmanEspEnabled = false
local blobmanHighlights = {}

local function removeAllBlobmanESP()
    for _, h in pairs(blobmanHighlights) do
        if h and h.Parent then h:Destroy() end
    end
    blobmanHighlights = {}
end

local function applyBlobmanESP(model)
    if not blobmanEspEnabled then return end
    if not model or not model:IsA("Model") or model.Name ~= "CreatureBlobman" then return end
    if blobmanHighlights[model] then return end

    local oldHighlight = model:FindFirstChild("BlobmanESP")
    if oldHighlight then oldHighlight:Destroy() end

    local h = Instance.new("Highlight")
    h.Name = "BlobmanESP"
    h.FillColor = Color3.fromRGB(255, 255, 0)
    h.OutlineColor = Color3.fromRGB(255, 220, 0)
    h.FillTransparency = 0.75
    h.OutlineTransparency = 0.5
    h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    h.Adornee = model
    h.Parent = model

    blobmanHighlights[model] = h

    local connection
    connection = model.AncestryChanged:Connect(function()
        if not model:IsDescendantOf(Workspace) or not blobmanEspEnabled then
            if blobmanHighlights[model] == h then
                h:Destroy()
                blobmanHighlights[model] = nil
            end
            connection:Disconnect()
        end
    end)
end

local function scanAllBlobman()
    if not blobmanEspEnabled then return end
    for _, desc in ipairs(Workspace:GetDescendants()) do
        if desc:IsA("Model") and desc.Name == "CreatureBlobman" then
            applyBlobmanESP(desc)
        end
    end
end

Workspace.DescendantAdded:Connect(function(desc)
    if not blobmanEspEnabled then return end
    if desc:IsA("Model") and desc.Name == "CreatureBlobman" then
        task.wait(0.05)
        applyBlobmanESP(desc)
    end
end)

VisualsLeft2:AddCheckbox("BlobmanESP", {
    Text = "Blobman ESP",
    Default = false,
    Callback = function(Value)
        blobmanEspEnabled = Value
        if Value then
            scanAllBlobman()
        else
            removeAllBlobmanESP()
        end
    end
})

do
    local BHVisuals = {
        ActiveClones = {},
        Enabled = true,
        Assets = {
            ["Void Blackhole"] = "rbxassetid://15601115261",
            ["Water Style 1"] = "rbxassetid://76490441012398",
            ["Water Style 2"] = "rbxassetid://9528329581",
            ["Singularity"]   = "rbxassetid://13481688755"
        },
        Config = {
            SelectedAsset = "rbxassetid://15601115261",
            Size = 1.8,
            Glow = 5,
            Spin = 100,
            Opacity = 0.5,
            Color = Color3.fromRGB(0, 255, 255)
        }
    }

    local WS = game:GetService("Workspace")

    function BHVisuals:CleanModel(model)
        for _, v in ipairs(model:GetDescendants()) do
            if v:IsA("Decal") or v:IsA("Texture") or v:IsA("SurfaceGui") then
                v:Destroy()
            elseif v:IsA("BasePart") then
                v.Anchored, v.CanCollide, v.CanTouch, v.CanQuery = true, false, false, false
            end
        end
    end

    function BHVisuals:ApplySettings(clone)
        for _, v in ipairs(clone:GetDescendants()) do
            if v:IsA("ParticleEmitter") then
                v.Color = ColorSequence.new(self.Config.Color)
                v.Brightness = self.Config.Glow
                v.RotSpeed = NumberRange.new(self.Config.Spin * 0.5, self.Config.Spin)
            elseif v:IsA("BasePart") then
                v.Material, v.Color, v.Transparency = Enum.Material.Neon, self.Config.Color, self.Config.Opacity
            end
        end
    end

    function BHVisuals:Hook(obj)
        if not self.Enabled or self.ActiveClones[obj] then return end
        local hole = obj:FindFirstChild("Hole")
        if not hole then return end

        hole.Transparency = 1
        local ok, template = pcall(function() return game:GetObjects(self.Config.SelectedAsset)[1] end)
        if not ok or not template then return end

        local clone = template:Clone()
        self:CleanModel(clone)
        clone.Parent = obj
        self:ApplySettings(clone)
        self.ActiveClones[obj] = clone

        task.spawn(function()
            while obj.Parent and self.Enabled do
                if clone:IsA("Model") then clone:PivotTo(hole.CFrame) else clone.CFrame = hole.CFrame end
                task.wait()
            end
            if clone then clone:Destroy() end
            self.ActiveClones[obj] = nil
        end)
    end

    function BHVisuals:RefreshAll()
        for obj, oldClone in pairs(self.ActiveClones) do
            pcall(function() oldClone:Destroy() end)
            self.ActiveClones[obj] = nil
            self:Hook(obj)
        end
    end

    local BHGroup = Tabs.Visuals:AddLeftGroupbox("Blackhole Customization")

    BHGroup:AddCheckbox("EnableCustomBH", {
        Text = "Enable Custom Visuals",
        Default = true,
        Callback = function(v) 
            BHVisuals.Enabled = v 
            if not v then
                for _, c in pairs(BHVisuals.ActiveClones) do pcall(function() c:Destroy() end) end
                table.clear(BHVisuals.ActiveClones)
            end
        end
    })

    BHGroup:AddDropdown("BH_Style", {
        Text = "Effect Style",
        Values = {"Void Blackhole", "Water Style 1", "Water Style 2", "Singularity"},
        Default = "Void Blackhole",
        Callback = function(v)
            BHVisuals.Config.SelectedAsset = BHVisuals.Assets[v]
            BHVisuals:RefreshAll()
        end
    })

    BHGroup:AddSlider("BH_Size", { Text = "Effect Scale", Min = 0.5, Max = 5, Default = 1.8, Rounding = 1, Callback = function(v) BHVisuals.Config.Size = v BHVisuals:RefreshAll() end })
    BHGroup:AddSlider("BH_Glow", { Text = "Glow Intensity", Min = 0, Max = 20, Default = 5, Rounding = 0, Callback = function(v) BHVisuals.Config.Glow = v BHVisuals:RefreshAll() end })
    
    BHGroup:AddLabel("Primary Color"):AddColorPicker("BH_Color", {
        Default = Color3.fromRGB(0, 255, 255),
        Callback = function(v) 
            BHVisuals.Config.Color = v 
            for _, clone in pairs(BHVisuals.ActiveClones) do BHVisuals:ApplySettings(clone) end
        end
    })

    WS.ChildAdded:Connect(function(child)
        if child.Name == "BlackHoleKick" or child.Name == "BlackHoleDetected" then
            task.wait(0.1)
            BHVisuals:Hook(child)
        end
    end)

    for _, obj in ipairs(WS:GetChildren()) do
        if obj.Name == "BlackHoleKick" or obj.Name == "BlackHoleDetected" then
            BHVisuals:Hook(obj)
        end
    end
end

local VisualsShaders = Tabs.Visuals:AddRightGroupbox("Shaders")

VisualsShaders:AddButton({
    Text = "Activate PShade",
    Func = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua'))()
    end,
    DoubleClick = false
})

VisualsShaders:AddCheckbox("ShaderPurple", {
    Text = "Shader Purple",
    Default = false,
    Callback = function(Value)
        local Lighting = game:GetService("Lighting")
        
        if Value then
            _G.shader = "purple"
            
            if typeof(ShaderToggles) == "table" then
                if ShaderToggles.ShaderRTX and ShaderToggles.ShaderRTX.Value then ShaderToggles.ShaderRTX:SetValue(false) end
                if ShaderToggles.ShaderOld and ShaderToggles.ShaderOld.Value then ShaderToggles.ShaderOld:SetValue(false) end
                if ShaderToggles.ShaderFullbright and ShaderToggles.ShaderFullbright.Value then ShaderToggles.ShaderFullbright:SetValue(false) end
            end
            
            for _, child in pairs(Lighting:GetChildren()) do
                if child:IsA("PostEffect") or child:IsA("Sky") or child:IsA("Atmosphere") or child:IsA("DepthOfFieldEffect") then
                    child:Destroy()
                end
            end

            Lighting.Brightness = 2
            Lighting.ExposureCompensation = 0
            Lighting.ClockTime = 14
            Lighting.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
            Lighting.ColorShift_Top = Color3.fromRGB(0, 0, 0)
            Lighting.OutdoorAmbient = Color3.fromRGB(200, 200, 200)
            Lighting.FogColor = Color3.fromRGB(192, 192, 192)
            Lighting.FogEnd = 100000
            Lighting.FogStart = 0
            Lighting.ShadowSoftness = 0
            Lighting.Ambient = Color3.fromRGB(120, 120, 120)

            local Bloom1 = Instance.new('BloomEffect', Lighting)
            Bloom1.Intensity = 0.1
            Bloom1.Threshold = 0
            Bloom1.Size = 100

            local Sky1 = Instance.new('Sky', Lighting)
            Sky1.SkyboxUp = 'http://www.roblox.com/asset/?id=196263782'
            Sky1.SkyboxLf = 'http://www.roblox.com/asset/?id=196263721'
            Sky1.SkyboxBk = 'http://www.roblox.com/asset/?id=196263721'
            Sky1.SkyboxFt = 'http://www.roblox.com/asset/?id=196263721'
            Sky1.CelestialBodiesShown = false
            Sky1.SkyboxDn = 'http://www.roblox.com/asset/?id=196263643'
            Sky1.SkyboxRt = 'http://www.roblox.com/asset/?id=196263721'

            local Blur1 = Instance.new('BlurEffect', Lighting)
            Blur1.Size = 2

            local ColorCorrection1 = Instance.new('ColorCorrectionEffect', Lighting)
            ColorCorrection1.Saturation = 0.05
            ColorCorrection1.TintColor = Color3.fromRGB(255, 224, 219)

            local SunRays1 = Instance.new('SunRaysEffect', Lighting)
            SunRays1.Intensity = 0.05

            local Sky2 = Instance.new('Sky', Lighting)
            Sky2.SkyboxUp = 'rbxassetid://323493360'
            Sky2.SkyboxLf = 'rbxassetid://323494252'
            Sky2.SkyboxBk = 'rbxassetid://323494035'
            Sky2.SkyboxFt = 'rbxassetid://323494130'
            Sky2.SkyboxDn = 'rbxassetid://323494368'
            Sky2.SunAngularSize = 14
            Sky2.SkyboxRt = 'rbxassetid://323494067'

            Lighting.Brightness = 3.5
            Lighting.ColorShift_Bottom = Color3.fromRGB(11, 0, 20)
            Lighting.ColorShift_Top = Color3.fromRGB(240, 127, 14)
            Lighting.OutdoorAmbient = Color3.fromRGB(34, 0, 49)
            Lighting.ClockTime = 6.7
            Lighting.FogColor = Color3.fromRGB(94, 76, 106)
            Lighting.FogEnd = 1000
            Lighting.FogStart = 0
            Lighting.ExposureCompensation = 0.24
            Lighting.ShadowSoftness = 0
            Lighting.Ambient = Color3.fromRGB(59, 33, 27)
            
        else
            _G.shader = "default"
            
            for _, child in pairs(Lighting:GetChildren()) do
                if child:IsA("PostEffect") or child:IsA("Sky") or child:IsA("Atmosphere") or child:IsA("DepthOfFieldEffect") then
                    child:Destroy()
                end
            end

            Lighting.Brightness = 2
            Lighting.ExposureCompensation = 0
            Lighting.ClockTime = 14
            Lighting.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
            Lighting.ColorShift_Top = Color3.fromRGB(0, 0, 0)
            Lighting.OutdoorAmbient = Color3.fromRGB(200, 200, 200)
            Lighting.FogColor = Color3.fromRGB(192, 192, 192)
            Lighting.FogEnd = 100000
            Lighting.FogStart = 0
            Lighting.ShadowSoftness = 0
            Lighting.Ambient = Color3.fromRGB(120, 120, 120)
        end
    end
})

local DestinyVisuals = Tabs.Visuals:AddRightGroupbox("More Visuals")


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Player = Players.LocalPlayer

local Visuals = {}
Visuals.HatEnabled = false
Visuals.HatTransparency = 0.3
Visuals.HatRainbow = false
Visuals.HatColor = Color3.fromRGB(0,255,255)
Visuals.HatParts = {}

Visuals.TrailEnabled = false
Visuals.TrailGradient = false
Visuals.TrailLifetime = 0.5
Visuals.TrailTransparencyStart = 0
Visuals.TrailRainbow = false
Visuals.TrailColorStatic = Color3.fromRGB(0,255,255)
Visuals.TrailGradient1 = Color3.fromRGB(0,86,255)
Visuals.TrailGradient2 = Color3.fromRGB(255,0,0)
Visuals.TrailParts = {}

Visuals.SkinTrailEnabled = false
Visuals.SkinTrailColor = Color3.fromRGB(255,0,0)
Visuals.SkinTrailLife = 0.5

Visuals.ForceFieldEnabled = false
Visuals.ForceFieldColor = Color3.fromRGB(128,128,128)
Visuals.ForceFieldRainbow = false
Visuals.OriginalColors = {}

Visuals.AuraEnabled = false
Visuals.AuraType = "Godly"
Visuals.CustomAuraID = ""
Visuals.CurrentAuraModel = nil
Visuals.AuraEffects = {}

Visuals.AuraModels = {
    Godly = "rbxassetid://16699750981",
    ["North Star"] = "rbxassetid://83945069652732",
    ["Pink Aura"] = "rbxassetid://115980859615239",
    ["Angel Wing"] = "rbxassetid://90022969696073",
    ["Sweet Heart"] = "rbxassetid://91724768175470",
}

Visuals.FX = {}
Visuals.FX.ActiveEffect  = "None"
Visuals.FX.ActiveEnabled = false
Visuals.FX.Connections   = {}
Visuals.FX.Parts         = {}

function FX_cleanup()
    for _, c in ipairs(Visuals.FX.Connections) do pcall(function() c:Disconnect() end) end
    Visuals.FX.Connections = {}
    for _, p in ipairs(Visuals.FX.Parts) do pcall(function() p:Destroy() end) end
    Visuals.FX.Parts = {}
end

local FX_defs = {}

function Visuals.removeHat(c) 
    local h = Visuals.HatParts[c]
    if h then h:Destroy() Visuals.HatParts[c] = nil end 
end

function Visuals.addHat(c) 
    task.wait(0.1)
    local head = c and c:FindFirstChild("Head")
    if not head then return end
    Visuals.removeHat(c)
    local hat = Instance.new("Part")
    hat.Name = "Hat"
    hat.Transparency = Visuals.HatTransparency
    hat.Color = Visuals.HatColor
    hat.Material = Enum.Material.Neon
    hat.CanCollide = false hat.CanTouch = false hat.CanQuery = false hat.Massless = true
    local m = Instance.new("SpecialMesh")
    m.MeshId = "rbxassetid://1033714"
    m.Scale = Vector3.new(2.4, 1.6, 2.4)
    m.Parent = hat
    local w = Instance.new("WeldConstraint")
    w.Part0 = head w.Part1 = hat w.Parent = hat
    hat.CFrame = head.CFrame * CFrame.new(0, 1.1, 0)
    hat.Parent = c
    Visuals.HatParts[c] = hat 
end

function Visuals.updateHats() 
    for c, h in pairs(Visuals.HatParts) do 
        if h and h.Parent and c == Player.Character then 
            h.Transparency = Visuals.HatTransparency
            h.Color = Visuals.HatRainbow and Color3.fromHSV((tick()%5)/5, 1, 1) or Visuals.HatColor 
        end 
    end 
end

function Visuals.removeTrail(c) 
    if Visuals.TrailParts[c] then Visuals.TrailParts[c]:Destroy() Visuals.TrailParts[c] = nil end
    local t = c and c:FindFirstChild("HumanoidRootPart")
    if t then 
        local a0 = t:FindFirstChild("TrailAttach0")
        local a1 = t:FindFirstChild("TrailAttach1")
        if a0 then a0:Destroy() end
        if a1 then a1:Destroy() end 
    end 
end

function Visuals.addTrail(c) 
    local t = c and c:FindFirstChild("HumanoidRootPart")
    if not t then return end
    Visuals.removeTrail(c)
    local a0 = Instance.new("Attachment")
    a0.Name = "TrailAttach0"
    a0.Position = Vector3.new(0, 2, 0)
    a0.Parent = t
    local a1 = Instance.new("Attachment")
    a1.Name = "TrailAttach1"
    a1.Position = Vector3.new(0, -2, 0)
    a1.Parent = t
    local tr = Instance.new("Trail")
    tr.Attachment0 = a0
    tr.Attachment1 = a1
    tr.Lifetime = Visuals.TrailLifetime
    tr.LightEmission = 0.2
    tr.Enabled = true
    tr.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, Visuals.TrailTransparencyStart), NumberSequenceKeypoint.new(1, 1)})
    tr.Color = Visuals.TrailGradient and ColorSequence.new(Visuals.TrailGradient1, Visuals.TrailGradient2) or ColorSequence.new(Visuals.TrailColorStatic)
    tr.Parent = c
    Visuals.TrailParts[c] = tr 
end

function Visuals.updateTrails() 
    for c, tr in pairs(Visuals.TrailParts) do 
        if tr and tr.Parent and c == Player.Character then 
            tr.Lifetime = Visuals.TrailLifetime
            tr.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, Visuals.TrailTransparencyStart), NumberSequenceKeypoint.new(1, 1)})
            local col = Visuals.TrailRainbow and Color3.fromHSV((tick()%5)/5, 1, 1) or Visuals.TrailColorStatic
            tr.Color = Visuals.TrailGradient and ColorSequence.new(Visuals.TrailGradient1, Visuals.TrailGradient2) or ColorSequence.new(col) 
        end 
    end 
end

function Visuals.toggleSkinTrail(en) 
    local c = Player.Character
    if not c then return end
    local hrp = c:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    for _, p in ipairs(c:GetChildren()) do 
        if p:IsA("BasePart") and p ~= hrp then 
            if en then 
                if not p:FindFirstChild("SkinTrail") then 
                    local tr = Instance.new("Trail")
                    tr.Name = "SkinTrail"
                    tr.Texture = "rbxassetid://1390780157"
                    tr.Color = ColorSequence.new(Visuals.SkinTrailColor)
                    tr.Lifetime = Visuals.SkinTrailLife
                    tr.Parent = p
                    local p1 = Instance.new("Attachment")
                    p1.Name = "SkinPointer1"
                    p1.Parent = p
                    local p2 = Instance.new("Attachment")
                    p2.Name = "SkinPointer2"
                    p2.Parent = hrp
                    tr.Attachment0 = p1
                    tr.Attachment1 = p2 
                end 
            else 
                local tr = p:FindFirstChild("SkinTrail")
                local p1 = p:FindFirstChild("SkinPointer1")
                if tr then tr:Destroy() end
                if p1 then p1:Destroy() end 
            end 
        end 
    end
    if not en then local p2 = hrp:FindFirstChild("SkinPointer2") if p2 then p2:Destroy() end end 
end

function Visuals.updateSkinTrail() 
    local c = Player.Character
    if not c then return end
    for _, d in ipairs(c:GetDescendants()) do 
        if d:IsA("Trail") and d.Name == "SkinTrail" then 
            d.Color = ColorSequence.new(Visuals.SkinTrailColor)
            d.Lifetime = Visuals.SkinTrailLife 
        end 
    end 
end

function Visuals.saveOriginalColors(c) 
    Visuals.OriginalColors[c] = {} 
    for _, p in ipairs(c:GetDescendants()) do 
        if p:IsA("BasePart") and p.Name ~= "Hat" then 
            Visuals.OriginalColors[c][p] = {Color = p.Color, Material = p.Material} 
        end 
    end 
end

function Visuals.applyForceField(c) 
    Visuals.saveOriginalColors(c)
    for _, p in ipairs(c:GetDescendants()) do 
        if p:IsA("BasePart") and p.Name ~= "Hat" then 
            p.Color = Visuals.ForceFieldColor
            p.Material = Enum.Material.ForceField 
        end 
    end 
end

function Visuals.removeForceField(c) 
    local orig = Visuals.OriginalColors[c]
    if not orig then return end
    for p, d in pairs(orig) do 
        if p and p.Parent and p:IsA("BasePart") then 
            p.Color = d.Color
            p.Material = d.Material 
        end 
    end
    Visuals.OriginalColors[c] = nil 
end

function Visuals.updateForceField() 
    if not (Player.Character and Visuals.ForceFieldEnabled) then return end
    for _, p in ipairs(Player.Character:GetDescendants()) do 
        if p:IsA("BasePart") and p.Name ~= "Hat" and p.Material == Enum.Material.ForceField then 
            p.Color = Visuals.ForceFieldRainbow and Color3.fromHSV((tick()%5)/5, 1, 1) or Visuals.ForceFieldColor 
        end 
    end 
end

function Visuals.disableAura() 
    for _, o in ipairs(Visuals.AuraEffects) do if o and o.Parent then o:Destroy() end end
    table.clear(Visuals.AuraEffects) 
end

local function loadAuraModelFromId(id)
    local success, objects = pcall(function() return game:GetObjects(id) end)
    if success and objects and objects[1] then
        return objects[1]
    end
    return nil
end

function Visuals.enableAura(c) 
    Visuals.disableAura()
    if not Visuals.CurrentAuraModel then return end
    local tmp = Visuals.CurrentAuraModel:Clone()
    for _, o in ipairs(tmp:GetDescendants()) do 
        if not o:IsA("BasePart") then 
            local cl = o:Clone()
            local pn = o.Parent and o.Parent.Name
            local tgt = pn and c:FindFirstChild(pn) or c:FindFirstChildWhichIsA("BasePart")
            if tgt and not tgt:FindFirstChild(cl.Name) then 
                cl.Parent = tgt
                table.insert(Visuals.AuraEffects, cl) 
            end 
        end 
    end
    tmp:Destroy() 
end

function Visuals.updateAuraLogic() 
    local id = Visuals.CustomAuraID ~= "" and ("rbxassetid://" .. Visuals.CustomAuraID:gsub("%D", "")) or Visuals.AuraModels[Visuals.AuraType]
    if not id then return end
    
    local m = loadAuraModelFromId(id)
    if m then 
        Visuals.CurrentAuraModel = m
        if Visuals.AuraEnabled and Player.Character then Visuals.enableAura(Player.Character) end 
    end 
end

FX_defs["Orbit Rings"] = function()
    local char = Player.Character
    local hrp  = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local ringData, count = {}, 3
    for i = 1, count do
        local ring = Instance.new("Part")
        ring.Name = "CREEPYPart" ring.Size = Vector3.new(7, .18, .18)
        ring.Material = Enum.Material.Neon ring.CanCollide = false
        ring.CanTouch = false ring.CanQuery = false ring.Massless = true
        ring.Anchored = true ring.Parent = char
        table.insert(Visuals.FX.Parts, ring)
        table.insert(ringData, {
            part = ring,
            offset = (i - 1) * (math.pi * 2 / count),
            tilt = (i - 1) * (math.pi / count),
        })
    end
    local t = 0
    local conn = RunService.Heartbeat:Connect(function(dt)
        t = t + dt * 2.2
        local h2 = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
        if not h2 then return end
        for _, d in ipairs(ringData) do
            local ang = t + d.offset
            d.part.Color = Color3.fromHSV(((t * .08 + d.offset) % (math.pi * 2)) / (math.pi * 2), 1, 1)
            d.part.CFrame = h2.CFrame * CFrame.Angles(d.tilt, 0, 0) * CFrame.Angles(0, ang, 0) * CFrame.new(3.6, 0, 0) * CFrame.Angles(0, math.pi / 2, 0)
        end
    end)
    table.insert(Visuals.FX.Connections, conn)
end

FX_defs["Bubble Shield"] = function()
    local char = Player.Character
    local hrp  = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local sphere = Instance.new("Part")
    sphere.Name = "CREEPYPart" sphere.Size = Vector3.new(8, 8, 8)
    sphere.Shape = Enum.PartType.Ball
    sphere.Material = Enum.Material.Glass
    sphere.Transparency = 0.65
    sphere.Color = Color3.fromRGB(100, 200, 255)
    sphere.CanCollide = false sphere.CanTouch = false sphere.CanQuery = false
    sphere.Massless = true sphere.Anchored = true sphere.CastShadow = false
    sphere.Parent = char
    table.insert(Visuals.FX.Parts, sphere)
    local t = 0
    local conn = RunService.Heartbeat:Connect(function(dt)
        t = t + dt
        local h2 = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
        if not h2 then return end
        sphere.CFrame = h2.CFrame
        sphere.Color = Color3.fromHSV((t * .15) % 1, 0.6, 1)
        sphere.Transparency = 0.55 + math.sin(t * 3) * .1
    end)
    table.insert(Visuals.FX.Connections, conn)
end

FX_defs["Star Burst"] = function()
    local char = Player.Character
    local hrp  = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local starData = {}
    local count = 8
    for i = 1, count do
        local s = Instance.new("Part")
        s.Name = "CREEPYPart" s.Size = Vector3.new(.4, .4, .4)
        s.Material = Enum.Material.Neon s.Shape = Enum.PartType.Ball
        s.CanCollide = false s.CanTouch = false s.CanQuery = false
        s.Massless = true s.Anchored = true s.Parent = char
        table.insert(Visuals.FX.Parts, s)
        table.insert(starData, {part = s, phase = (i - 1) * (math.pi * 2 / count), radius = 3 + math.random() * 2, height = math.sin((i - 1) * 1.2) * 2})
    end
    local t = 0
    local conn = RunService.Heartbeat:Connect(function(dt)
        t = t + dt * 3
        local h2 = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
        if not h2 then return end
        for _, d in ipairs(starData) do
            local ang = t + d.phase
            local x = math.cos(ang) * d.radius
            local z = math.sin(ang) * d.radius
            local y = math.sin(t * 1.5 + d.phase) * d.height
            d.part.Color = Color3.fromHSV(((t * .05 + d.phase) % (math.pi * 2)) / (math.pi * 2), 1, 1)
            d.part.CFrame = h2.CFrame * CFrame.new(x, y, z)
            local scale = .3 + math.sin(t * 2 + d.phase) * .15
            d.part.Size = Vector3.new(scale, scale, scale)
        end
    end)
    table.insert(Visuals.FX.Connections, conn)
end

FX_defs["Ice Shards"] = function()
    local char = Player.Character
    local hrp  = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local shards = {}
    for i = 1, 6 do
        local s = Instance.new("Part")
        s.Name = "CREEPYPart" s.Size = Vector3.new(.3, 1.4 + math.random() * .8, .3)
        s.Material = Enum.Material.Ice s.Color = Color3.fromRGB(180, 230, 255)
        s.Transparency = 0.25 s.CanCollide = false s.CanTouch = false
        s.CanQuery = false s.Massless = true s.Anchored = true s.Parent = char
        table.insert(Visuals.FX.Parts, s)
        table.insert(shards, {part = s, phase = (i - 1) * (math.pi * 2 / 6), r = 2.5 + math.random()})
    end
    local t = 0
    local conn = RunService.Heartbeat:Connect(function(dt)
        t = t + dt * .8
        local h2 = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
        if not h2 then return end
        for _, d in ipairs(shards) do
            local ang = t + d.phase
            local x = math.cos(ang) * d.r local z = math.sin(ang) * d.r
            d.part.CFrame = h2.CFrame * CFrame.new(x, -1, z) * CFrame.Angles(0, ang, math.pi * .18)
        end
    end)
    table.insert(Visuals.FX.Connections, conn)
end

DestinyVisuals:AddSlider("HatTransparencySlider", {
    Text = "Hat Transparency",
    Min = 0,
    Max = 5,
    Default = 0,
    Rounding = 1,
    Callback = function(Value)
        Visuals.HatTransparency = Value
    end
})

DestinyVisuals:AddCheckbox("HatRainbowToggle", {
    Text = "Hat Rainbow",
    Default = false,
    Callback = function(Value)
        Visuals.HatRainbow = Value
    end
})

DestinyVisuals:AddCheckbox("HatEnabledToggle", {
    Text = "Enable Chinese Hat",
    Default = false,
    Callback = function(Value)
        Visuals.HatEnabled = Value
        if Value then
            if Player.Character then Visuals.addHat(Player.Character) end
        else
            if Player.Character then Visuals.removeHat(Player.Character) end
        end
    end
})

DestinyVisuals:AddSlider("TrailLifetimeSlider", {
    Text = "Trail Lifetime",
    Min = 0,
    Max = 5,
    Default = 0,
    Rounding = 1,
    Callback = function(Value)
        Visuals.TrailLifetime = Value
    end
})

DestinyVisuals:AddSlider("TrailTransStartSlider", {
    Text = "Trail Transparency",
    Min = 0,
    Max = 5,
    Default = 0,
    Rounding = 1,
    Callback = function(Value)
        Visuals.TrailTransparencyStart = Value
    end
})

DestinyVisuals:AddCheckbox("TrailRainbowToggle", {
    Text = "Rainbow Trail",
    Default = false,
    Callback = function(Value)
        Visuals.TrailRainbow = Value
    end
})

DestinyVisuals:AddCheckbox("TrailEnabledToggle", {
    Text = "Enable Trail",
    Default = false,
    Callback = function(Value)
        Visuals.TrailEnabled = Value
        if Value then
            if Player.Character then Visuals.addTrail(Player.Character) end
        else
            if Player.Character then Visuals.removeTrail(Player.Character) end
        end
    end
})

DestinyVisuals:AddSlider("SkinTrailLifeSlider", {
    Text = "Skin Trail Lifetime",
    Min = 0,
    Max = 1,
    Default = 0,
    Rounding = 1,
    Callback = function(Value)
        Visuals.SkinTrailLife = Value
        Visuals.updateSkinTrail()
    end
})

DestinyVisuals:AddCheckbox("SkinTrailToggle", {
    Text = "Enable Skin Trail",
    Default = false,
    Callback = function(Value)
        Visuals.SkinTrailEnabled = Value
        Visuals.toggleSkinTrail(Value)
    end
})

DestinyVisuals:AddCheckbox("ForceFieldToggle", {
    Text = "ForceField-Player",
    Default = false,
    Callback = function(Value)
        Visuals.ForceFieldEnabled = Value
        if Value then
            if Player.Character then Visuals.applyForceField(Player.Character) end
        else
            if Player.Character then Visuals.removeForceField(Player.Character) end
        end
    end
})

local FX_names = {}
for k in pairs(FX_defs) do table.insert(FX_names, k) end
table.sort(FX_names)
table.insert(FX_names, 1, "None")

Visuals.FX.ActiveEffect = "None"

DestinyVisuals:AddDropdown("AuraTypeDropdown", {
    Text = "Select Aura",
    Default = "Godly",
    Values = {"Godly", "North Star", "Pink Aura", "Angel Wing", "Sweet Heart"},
    Callback = function(Value)
        Visuals.AuraType = Value
        if Visuals.AuraEnabled then Visuals.updateAuraLogic() end
    end
})

DestinyVisuals:AddCheckbox("AuraToggle", {
    Text = "Enable Aura",
    Default = false,
    Callback = function(Value)
        Visuals.AuraEnabled = Value
        if Value then
            Visuals.updateAuraLogic()
        else
            Visuals.disableAura()
        end
    end
})

DestinyVisuals:AddDropdown("VisualFXSelect", {
    Text = "Select Custom Effect",
    Default = "None",
    Values = FX_names,
    Callback = function(Value)
        Visuals.FX.ActiveEffect = Value
        if Visuals.FX.ActiveEnabled then
            FX_cleanup()
            if Value ~= "None" and FX_defs[Value] then FX_defs[Value]() end
        end
    end
})

DestinyVisuals:AddCheckbox("VisualFXEnable", {
    Text = "Enable Custom Effect",
    Default = false,
    Callback = function(Value)
        Visuals.FX.ActiveEnabled = Value
        if Value then
            local name = Visuals.FX.ActiveEffect
            if name and name ~= "None" and FX_defs[name] then
                FX_cleanup()
                FX_defs[name]()
            end
        else
            FX_cleanup()
        end
    end
})

task.spawn(function()
    while task.wait() do
        pcall(function()
            if Visuals.HatEnabled then Visuals.updateHats() end
            if Visuals.TrailEnabled then Visuals.updateTrails() end
            if Visuals.ForceFieldEnabled then Visuals.updateForceField() end
        end)
    end
end)

Player.CharacterAdded:Connect(function(char)
    task.wait(0.6)
    pcall(function()
        if Visuals.HatEnabled then Visuals.addHat(char) end
        if Visuals.TrailEnabled then Visuals.addTrail(char) end
        if Visuals.SkinTrailEnabled then Visuals.toggleSkinTrail(true) end
        if Visuals.ForceFieldEnabled then Visuals.applyForceField(char) end
        if Visuals.AuraEnabled then Visuals.updateAuraLogic() end
        
        if Visuals.FX.ActiveEnabled and Visuals.FX.ActiveEffect ~= "None" then
            local name = Visuals.FX.ActiveEffect
            if FX_defs[name] then
                FX_cleanup()
                FX_defs[name]()
            end
        end
    end)
end)

end

do
local ServerKick = Tabs.Server:AddLeftGroupbox("Destroy Server")
local ServerRight = Tabs.Server:AddRightGroupbox("Crash Server")
local ServerMap = Tabs.Server:AddLeftGroupbox("Map Break")

local PacketSpamAmount = 75000
local PacketLagInterval = 1
local PacketPayloadText = "PLEASE DONT KICK ME 😂"

ServerRight:AddSlider("PacketAmountSlider", {
    Text = "Packet-Lag Amount",
    Default = 15000,
    Min = 15000,
    Max = 500000,
    Rounding = 0,
    Callback = function(Value)
        PacketSpamAmount = Value
    end
})

ServerRight:AddSlider("PacketIntervalSlider", {
    Text = "Packet Interval",
    Default = 1,
    Min = 0.01,
    Max = 5,
    Rounding = 2,
    Callback = function(Value)
        PacketLagInterval = Value
    end
})

ServerRight:AddInput("PacketTextInput", {
    Text = "Packet Custom Text",
    Default = "PLEASE DONT KICK ME 😂",
    Placeholder = "type:",
    Callback = function(Value)
        PacketPayloadText = Value
    end
})

ServerRight:AddCheckbox("PacketLagToggle", {
    Text = "Packet-Lag",
    Default = false,
    Callback = function(Value)
        _G.PacketLagActive = Value

        if Value then
            task.spawn(function()
                local event = game:GetService("ReplicatedStorage")
                    :WaitForChild("GrabEvents")
                    :WaitForChild("ExtendGrabLine")

                while _G.PacketLagActive do
                    local payload = string.rep(PacketPayloadText, PacketSpamAmount)

                    event:FireServer(payload)

                    task.wait(PacketLagInterval)
                end
            end)
        end
    end
})

local Players = game:GetService("Players")
local me = Players.LocalPlayer
local rs = game:GetService("ReplicatedStorage")
local CharacterEvents = rs:WaitForChild("CharacterEvents", 5)
local RagdollRemote = CharacterEvents and CharacterEvents:WaitForChild("RagdollRemote", 5)

local loopRagdoll = false

local function startLobotomy()
    task.spawn(function()
        while loopRagdoll do
            if me.Character then
                local hrp = me.Character:FindFirstChild("HumanoidRootPart")
                if hrp and RagdollRemote then
                    for i = 1, 6 do
                        if not loopRagdoll then break end
                        RagdollRemote:FireServer(hrp, 0)
                    end
                end
            end
            task.wait()
        end
    end)
end

local LobotomyToggle = ServerRight:AddCheckbox("LobotomyToggle", {
    Text = "Lobotomy Server",
    Default = false,
    Callback = function(Value)
        loopRagdoll = Value
        if loopRagdoll then
            startLobotomy()
        end
    end
})

_G.DestinyLagsEnabled = false

ServerRight:AddCheckbox("MonsterLagToggle", {
    Text = "Destiny Lags",
    Default = false,
    Callback = function(Value)
        _G.MonsterLagEnabled = Value
        
        if Value then
            task.spawn(function()
                local RepS = game:GetService("ReplicatedStorage")
                local WS = game:GetService("Workspace")
                local LP = game:GetService("Players").LocalPlayer
                local GrabEvents = RepS:FindFirstChild("GrabEvents")
                local CreateLine = GrabEvents and GrabEvents:FindFirstChild("CreateGrabLine")

                while _G.MonsterLagEnabled and CreateLine do
                    local spawnLocation = WS:FindFirstChild("SpawnLocation") 
                        or WS:FindFirstChild("Spawn") 
                        or (LP.Character and LP.Character:FindFirstChild("HumanoidRootPart"))

                    if spawnLocation then
                        local randomX = math.random(-9e9, 9e9)
                        local randomZ = math.random(-9e9, 9e9)
                        CreateLine:FireServer(spawnLocation, CFrame.new(randomX, 0, randomZ))
                    end
                    task.wait()
                end
            end)
        end
    end
})

ServerRight:AddButton("SendSinglePacket", {
    Text = "Send Single Packet",
    Callback = function()
        local event = game:GetService("ReplicatedStorage")
            :FindFirstChild("GrabEvents")
            :FindFirstChild("ExtendGrabLine")
            
        if event then
            local payload = string.rep("PLEASE DONT KICK ME 😂", PacketSpamAmount)
            event:FireServer(payload)
        else
            warn("Event 'ExtendGrabLine' not found!")
        end
    end
})

ServerRight:AddLabel({
    Text = "Lobotomy Server - do a Gucci and turn on",
    DoesWrap = true,
})

local CheckersSection = Tabs.Server:AddRightGroupbox("Checkers")

CheckersSection:AddButton({
    Text = "Find Cheaters",
    Func = function()
    local cheaters = {}
    local items = {"NinjaShuriken", "AntiKick", "NinjaKunai", "SpookyCandle1", "ClockAlarm", "ToolPickaxe", "FoodPlate"}
    
    local function getTool(plr)
        local char = plr.Character
        if not char then return nil end
        local sources = {workspace:FindFirstChild(plr.Name .. "SpawnedInToys"), workspace:FindFirstChild("PlotItems")}
        for _, src in ipairs(sources) do
            if not src then continue end
            for _, toy in ipairs(src:GetDescendants()) do
                if table.find(items, toy.Name) and toy:IsA("Model") then
                    local s = toy:FindFirstChild("StickyPart")
                    local w = s and (s:FindFirstChild("StickyWeld") or s:FindFirstChildWhichIsA("Weld"))
                    if w and w.Part1 and w.Part1:IsDescendantOf(char) then
                        return toy.Name
                    end
                end
            end
        end
        return nil
    end

    for _, plr in ipairs(game:GetService("Players"):GetPlayers()) do
        if plr ~= game:GetService("Players").LocalPlayer then
            local tool = getTool(plr)
            if tool then
                table.insert(cheaters, plr.DisplayName .. " (" .. tool .. ")")
            end
        end
    end

    Library:Notify({
        Title = "Cheater Search",
        Description = #cheaters == 0 and "No cheaters found" or table.concat(cheaters, "\n"),
        Time = 5
    })
end
})

-- Настройки координат по умолчанию
local targetPos = Vector3.new(107.5, -101.35, 43.37)
-- Переменная для обычного инпута (сюда будут сохраняться значения из Ground Kick)
local breakCFrame = CFrame.new(0, -1000033333, 12212311) 

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local GrabEvents = ReplicatedStorage:FindFirstChild("GrabEvents")
local SNO = GrabEvents and GrabEvents:FindFirstChild("SetNetworkOwner")
local PlayerEvents = ReplicatedStorage:FindFirstChild("PlayerEvents")
local SPE = PlayerEvents and PlayerEvents:FindFirstChild("StickyPartEvent")
local MenuToys = ReplicatedStorage:FindFirstChild("MenuToys")
local STE = MenuToys and MenuToys:FindFirstChild("SpawnToyRemoteFunction")
local DTE = MenuToys and MenuToys:FindFirstChild("DestroyToy")

local Inventory = Workspace:FindFirstChild(LocalPlayer.Name .. "SpawnedInToys")

local function Char()
    local Character = LocalPlayer.Character
    if not Character then return nil end
    return Character, Character:FindFirstChild("HumanoidRootPart"), Character:FindFirstChild("Humanoid")
end

local function SpawnToy(name)
    local _, HRP = Char()
    if not HRP then return nil end

    local Toy
    local conn
    conn = Inventory.ChildAdded:Connect(function(child)
        if child:IsA("Model") and child.Name == name then
            Toy = child
            conn:Disconnect()
        end
    end)

    task.spawn(function()
        STE:InvokeServer(name, CFrame.new(HRP.Position) + Vector3.new(5, 0, 20), Vector3.new())
    end)

    local Start = tick()
    repeat task.wait() until Toy or tick() - Start > 1

    if conn then conn:Disconnect() end
    return Toy
end

-- Функция принимает overrideCFrame. Если он передан (как в бинде), шлёт туда. Если нет — берет из инпута.
local function BreakPart(Part, overrideCFrame)
    if not Part or not Part:IsA("BasePart") then return nil end

    local Shuriken = SpawnToy("NinjaShuriken")
    if not Shuriken then return nil end
    
    local StickyPart = Shuriken:WaitForChild("StickyPart", 0.5)
    if not StickyPart then
        DTE:FireServer(Shuriken)
        return nil
    end

    SNO:FireServer(StickyPart, StickyPart.CFrame)

    local Start = tick()
    repeat task.wait() until (StickyPart:FindFirstChild("PartOwner") and StickyPart.PartOwner.Value == LocalPlayer.Name) or tick() - Start > 0.5
    
    if tick() - Start > 0.5 then
        DTE:FireServer(Shuriken)
        return nil
    end

    -- Выбираем конечный пункт назначения детали
    local finalCFrame = overrideCFrame or breakCFrame
    if typeof(finalCFrame) == "string" and finalCFrame == "half" then
        finalCFrame = Part.CFrame * CFrame.new(0, -10, 0)
    end

    SPE:FireServer(StickyPart, Part, finalCFrame)
    return Shuriken
end

local function findGrassAtSpawn()
    local grassPart = Workspace.Map and Workspace.Map.BaseGround and Workspace.Map.BaseGround:FindFirstChild("Grass")
    if grassPart and grassPart:IsA("BasePart") and (grassPart.Position - targetPos).Magnitude < 0.1 then
        return grassPart
    end
    for _, part in ipairs(Workspace:GetDescendants()) do
        if part.Name == "Grass" and part:IsA("BasePart") and (part.Position - targetPos).Magnitude < 0.1 then
            return part
        end
    end
    return nil
end

-- ИНПУТ 1: Изменение позиции поиска травы
ServerMap:AddInput("TargetPosInput", {
    Text = "Target Position (X, Y, Z)",
    Default = "107.5, -101.35, 43.37",
    Placeholder = "Введи координаты для поиска травы...",
    Callback = function(text)
        local coords = {}
        for val in string.gmatch(text, "[^,]+") do
            table.insert(coords, tonumber(val:match("^%s*(.-)%s*$")))
        end
        if #coords == 3 and coords[1] and coords[2] and coords[3] then
            targetPos = Vector3.new(coords[1], coords[2], coords[3])
            Library:Notify({ Title = "Target Pos", Description = "Позиция цели для кнопки обновлена!", Time = 2 })
        else
            Library:Notify({ Title = "Ошибка", Description = "Формат: X, Y, Z", Time = 3 })
        end
    end
})

-- ИНПУТ 2: Куда телепортировать траву при нажатии кнопки "Break Spawn" в меню
ServerMap:AddInput("BreakCFrameInput", {
    Text = "Ground Kick",
    Default = "0, -1000033333, 12212311",
    Placeholder = "0, -1000033333, 12212311",
    Callback = function(text)
        local cleanText = text:lower():match("^%s*(.-)%s*$")
        
        if cleanText == "inf" then
            breakCFrame = CFrame.new(1e15, 1e15, 1e15)
            Library:Notify({ Title = "Break Mode", Description = "Включена полная поломка (в бесконечность)", Time = 2 })
        elseif cleanText == "half" then
            breakCFrame = "half"
            Library:Notify({ Title = "Break Mode", Description = "Включена полу-поломка (-10 блоков вниз)", Time = 2 })
        else
            local coords = {}
            for val in string.gmatch(cleanText, "[^,]+") do
                table.insert(coords, tonumber(val:match("^%s*(.-)%s*$")))
            end
            if #coords == 3 and coords[1] and coords[2] and coords[3] then
                breakCFrame = CFrame.new(coords[1], coords[2], coords[3])
                Library:Notify({ Title = "Break Mode", Description = "Задан точный CFrame для кнопки!", Time = 2 })
            else
                Library:Notify({ Title = "Ошибка", Description = "Введи 'inf', 'half' или три числа 'X,Y,Z'", Time = 3 })
            end
        end
    end
})

-- Кнопка в меню (бьет по координатам из инпута "Ground Kick")
ServerMap:AddButton("BreakSpawn", {
    Text = "Break Spawn",
    Callback = function()
        local grass = findGrassAtSpawn()
        if grass then
            BreakPart(grass) -- Вызывается без второго аргумента, берет данные из инпута
            Library:Notify({ Title = "Break Spawn", Description = "Успешно отправлено!", Time = 2 })
        else
            Library:Notify({ Title = "Break Spawn", Description = "Трава не найдена в этой точке", Time = 3 })
        end
    end
})

-- Тоггл активации для работы бинда
ServerMap:AddToggle("BreakPartToggle", {
    Text = "Enable Break Part",
    Default = false
})

-- Бинд на кнопку P (игнорирует инпут, шлет строго на 0, -1000033333, 12212311 с эффектом неона)
ServerMap:AddLabel("Break Part Key"):AddKeyPicker("BreakPartKeybind", {
    Default = "P",
    SyncToggleState = false,
    Mode = "Press",
    Text = "Break Part",
    Callback = function()
        if not Toggles.BreakPartToggle.Value then return end
        
        local Mouse = LocalPlayer:GetMouse()
        local target = Mouse.Target
        
        if target and target:IsA("BasePart") then
            -- Жестко заданные координаты специально для этого бинда
            local customCFrame = CFrame.new(0, -1000033333, 12212311)
            
            -- Вызываем функцию и передаем customCFrame вторым аргументом
            local shuriken = BreakPart(target, customCFrame)
            
            if shuriken then
                local originalTransparency = target.Transparency
                target.Transparency = 0.3
                
                local high = Instance.new("Highlight")
                high.Name = "NeonShurikenEffect"
                high.Adornee = target
                high.FillTransparency = 1        
                high.OutlineColor = Color3.fromRGB(255, 255, 255) 
                high.OutlineTransparency = 0      
                high.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop 
                high.Parent = target

                local connection
                connection = shuriken.AncestryChanged:Connect(function(_, parent)
                    if not parent then
                        if target and target.Parent then
                            target.Transparency = originalTransparency
                        end
                        if high then high:Destroy() end
                        connection:Disconnect()
                    end
                end)
                
                local targetConn
                targetConn = target.AncestryChanged:Connect(function(_, parent)
                    if not parent then
                        if connection then connection:Disconnect() end
                        targetConn:Disconnect()
                    end
                end)
            end
        end
    end
})

    local LP = game:GetService("Players").LocalPlayer
local RepS = game:GetService("ReplicatedStorage")
local WS = game:GetService("Workspace")
local CF = CFrame.new
local V3 = Vector3.new

local GrabEvent = RepS:WaitForChild("GrabEvents"):WaitForChild("SetNetworkOwner")
local StickyPartEvent = RepS:WaitForChild("PlayerEvents"):WaitForChild("StickyPartEvent")

local isBroken = false
local currentTarget = "InnerUFO"

local function FindTarget()
    local map = WS:FindFirstChild("Map")
    if not map then return nil end
    
    local alwaysHere = map:FindFirstChild("AlwaysHereTweenedObjects")
    if not alwaysHere then return nil end
    
    local target = alwaysHere:FindFirstChild(currentTarget)
    if not target then return nil end
    
    local obj = target:FindFirstChild("Object")
    if not obj then return nil end
    
    local objectModel = obj:FindFirstChild("ObjectModel")
    if not objectModel then return nil end
    
    local targetPart
    if currentTarget == "Train" or currentTarget == "LrgDebris" or currentTarget == "LrgDebris2" or currentTarget == "SmlDebris" or currentTarget == "SmlDebris2" or currentTarget == "CaveCart" then
        targetPart = objectModel:FindFirstChild("Hitbox") or objectModel:FindFirstChild("Rock") or objectModel:FindFirstChild("Body")
    else
        targetPart = objectModel:FindFirstChild("Body")
    end
    
    if not targetPart then return nil end
    
    return {
        Target = target,
        Object = obj,
        ObjectModel = objectModel,
        TargetPart = targetPart,
        FollowThisPart = obj:FindFirstChild("FollowThisPart")
    }
end

local function CollideBreaker(kunai, targetPart)
    if not kunai or not kunai.Parent or not targetPart then return end
    local Sticky = kunai:FindFirstChild("StickyPart")
    if not Sticky then return end
    
    task.spawn(function()
        for i = 1, 20 do
            if not Sticky or not Sticky.Parent then break end
            pcall(function()
                GrabEvent:FireServer(Sticky, Sticky.CFrame)
            end)
            if Sticky:FindFirstChild("PartOwner") and Sticky.PartOwner.Value == LP.Name then
                break
            end
            task.wait(0.1)
        end
        pcall(function()
            StickyPartEvent:FireServer(
                Sticky,
                targetPart,
                CFrame.new(0, 0, 0)
            )
        end)
        task.wait(0.2)
        for _, v in pairs(kunai:GetChildren()) do
            if v:IsA("BasePart") then
                v.CanQuery = false
                v.CanCollide = false
            end
        end
    end)
end

local function FireShurikenAtObject(obj)
    if not obj then return end
    
    local canSpawn = LP:FindFirstChild("CanSpawnToy")
    local spawnRemote = RepS:FindFirstChild("MenuToys") and RepS.MenuToys:FindFirstChild("SpawnToyRemoteFunction")
    
    if not canSpawn or not spawnRemote then return end
    
    local timeout = 0
    while not canSpawn.Value and timeout < 50 do
        task.wait(0.1)
        timeout = timeout + 1
    end
    
    local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    
    local head = LP.Character:FindFirstChild("Head")
    local spawnPos
    
    if head then
        spawnPos = head.Position + V3(5, 10, 20)
    else
        spawnPos = hrp.Position + V3(5, 10, 20)
    end
    
    task.spawn(function()
        pcall(function()
            spawnRemote:InvokeServer(
                "NinjaShuriken",
                CFrame.new(spawnPos),
                V3(0,0,0)
            )
        end)
    end)
    
    local found = nil
    local t = tick()
    while tick() - t < 3 do
        local inv = WS:FindFirstChild(LP.Name.."SpawnedInToys")
        found = inv and inv:FindFirstChild("NinjaShuriken")
        if found then
            found.Name = "AntiKick"
            CollideBreaker(found, obj)
            break
        end
        task.wait(0.05)
    end
    
    return found
end
local function BreakTarget()
    if isBroken then return end
    
    local data = FindTarget()
    if not data then return end
    
    task.wait(0.5)  
    
    for i = 1, 10 do
        local shuriken = FireShurikenAtObject(data.TargetPart)
        if not shuriken then
            for retry = 1, 5 do
                task.wait(0.3)
                shuriken = FireShurikenAtObject(data.TargetPart)
                if shuriken then break end
            end
        end
        task.wait(0.5)
    end
    task.wait(0.5)
    
    for _, child in ipairs(data.TargetPart:GetChildren()) do
        if child:IsA("Attachment") then
            pcall(function()
                child:Destroy()
            end)
        end
    end
    
    local specificAttaches = {
        "ObjectModelAttachment",
        "BodyAttachment",
        "Attachment"
    }  
    for _, name in ipairs(specificAttaches) do
        local attach = data.TargetPart:FindFirstChild(name)
        if attach then
            pcall(function()
                attach:Destroy()
            end)
        end
    end
    
    if data.FollowThisPart then
        for _, child in ipairs(data.FollowThisPart:GetChildren()) do
            if child:IsA("Constraint") then
                pcall(function()
                    child.Enabled = false
                    if child:IsA("AlignPosition") or child:IsA("AlignOrientation") then
                        child.Attachment0 = nil
                        child.Attachment1 = nil
                    end
                end)
            end
        end
    end
    
    task.wait(0.3)
    pcall(function()
        if data.TargetPart and data.TargetPart.Parent then
            data.TargetPart.CanCollide = false
            data.TargetPart.CanQuery = false
            data.TargetPart.CanTouch = false
        end
    end)
    
    isBroken = true
end

ServerMap:AddDropdown("UFOSelector", {
    Text = "Select Tweened Objects (Buggy)",
    Values = {"CaveCart", "InnerUFO", "OuterUFO", "LrgDebris", "LrgDebris2", "SmlDebris", "SmlDebris2", "Train"},
    Default = 0,
    Callback = function(v)
        currentTarget = v
        isBroken = false
    end
})

ServerMap:AddButton("Break", function()
    isBroken = false
    BreakTarget()
end)

do
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local LP = Players.LocalPlayer

local function getOceanModel()
	local map = Workspace:FindFirstChild("Map")
	if not map then return nil end
	local tweened = map:FindFirstChild("AlwaysHereTweenedObjects")
	if not tweened then return nil end
	local ocean = tweened:FindFirstChild("Ocean")
	if not ocean then return nil end
	local obj = ocean:FindFirstChild("Object")
	if not obj then return nil end
	return obj:FindFirstChild("ObjectModel")
end

local function getSpawnToyRemote()
	local menu = ReplicatedStorage:FindFirstChild("MenuToys")
	if menu then
		return menu:FindFirstChild("SpawnToyRemoteFunction")
	end
	return nil
end

local Remotes = {
	SetNetworkOwner = ReplicatedStorage:WaitForChild("GrabEvents"):WaitForChild("SetNetworkOwner"),
	StickyPartEvent = ReplicatedStorage:WaitForChild("PlayerEvents"):WaitForChild("StickyPartEvent"),
	SpawnToy = getSpawnToyRemote(),
}

local Refs = {
	OceanModel = getOceanModel(),
}

if Refs.OceanModel then
	local children = Refs.OceanModel:GetChildren()
	Refs.Grass = children[14]
else
	Refs.Grass = nil
end

local Config = {
	ToyName = "NinjaShuriken",
	RenamedToy = "DestroyOcean",
	Count = 10,
	SpawnOffset = Vector3.new(5, 10, 20),
	FarCFrame = CFrame.new(
		21990233, 2199023355, 21990233,
		-1, 0, 0,
		0, 1, 0,
		0, 0, -1
	),
	CanSpawn = {Step = 0.1, MaxSteps = 50},
	FindToy = {Timeout = 3, Step = 0.05},
	Retry = {Count = 3, Delay = 0.3},
	BetweenSpawnsDelay = 0.1,
}

local function safeCall(fn, ...)
	return pcall(fn, ...)
end

local function safeFire(remote, ...)
	if remote then
		safeCall(function(...) remote:FireServer(...) end, ...)
	end
end

local function safeInvoke(remote, ...)
	if remote then
		safeCall(function(...) remote:InvokeServer(...) end, ...)
	end
end

local function getSpawnPosition()
	local char = LP.Character
	if not char then return nil end
	local hrp = char:FindFirstChild("HumanoidRootPart")
	if not hrp then return nil end
	local head = char:FindFirstChild("Head")
	local basePos = (head and head.Position) or hrp.Position
	return basePos + Config.SpawnOffset
end

local function canSpawnNow()
	local flag = LP:FindFirstChild("CanSpawnToy")
	if not flag then return false end
	if flag.Value then return true end
	for _ = 1, Config.CanSpawn.MaxSteps do
		if flag.Value then return true end
		task.wait(Config.CanSpawn.Step)
	end
	return flag.Value == true
end

local function spawnedFolder()
	return Workspace:FindFirstChild(LP.Name .. "SpawnedInToys")
end

local function findToy()
	local t0 = tick()
	while tick() - t0 < Config.FindToy.Timeout do
		local folder = spawnedFolder()
		local toy = folder and folder:FindFirstChild(Config.ToyName)
		if toy then return toy end
		task.wait(Config.FindToy.Step)
	end
	return nil
end

local function breakToy(toy)
	if not toy or not toy.Parent then return end
	local sticky = toy:FindFirstChild("StickyPart")
	if not sticky then return end
	local soundPart = toy:FindFirstChild("SoundPart")
	task.spawn(function()
		if soundPart then
			local owner = soundPart:FindFirstChild("PartOwner")
			if owner and owner.Value ~= LP.Name then
				safeFire(Remotes.SetNetworkOwner, soundPart, soundPart.CFrame)
			end
		end
		task.wait(0.05)
		safeFire(Remotes.StickyPartEvent, sticky, Refs.Grass, Config.FarCFrame)
	end)
end

local function spawnOne()
	if not Remotes.SpawnToy then return nil end
	if not canSpawnNow() then return nil end
	local pos = getSpawnPosition()
	if not pos then return nil end
	task.spawn(function()
		safeInvoke(Remotes.SpawnToy, Config.ToyName, CFrame.new(pos), Vector3.zero)
	end)
	local toy = findToy()
	if not toy then return nil end
	toy.Name = Config.RenamedToy
	breakToy(toy)
	return toy
end

local function spawnMany(n)
	for _ = 1, n do
		local toy = spawnOne()
		if not toy then
			for _ = 1, Config.Retry.Count do
				task.wait(Config.Retry.Delay)
				toy = spawnOne()
				if toy then break end
			end
		end
		task.wait(Config.BetweenSpawnsDelay)
	end
end

if ServerMap then
	ServerMap:AddButton("Tsunami", function()
		spawnMany(Config.Count)
	end)
end
end

ServerKick:AddButton("KickAllToggle", {
    Text = "Kick-All",
    Func = function()
        task.spawn(function()
            local players, me = game.Players, game.Players.LocalPlayer
            local char = me.Character or me.CharacterAdded:Wait()
            local hrp = char and char:WaitForChild("HumanoidRootPart", 5)
            local hum = char and char:WaitForChild("Humanoid", 5)
            if not hrp then return end

            local mytoys = workspace:FindFirstChild(me.Name.."SpawnedInToys")
            local replicstorage = game:GetService("ReplicatedStorage")
            local menutoys, grabevents = replicstorage:FindFirstChild("MenuToys"), replicstorage:FindFirstChild("GrabEvents")
            local spawntoy, destroytoy = menutoys:FindFirstChild("SpawnToyRemoteFunction"), menutoys:FindFirstChild("DestroyToy")
            local sno, destroyline = grabevents:FindFirstChild("SetNetworkOwner"), grabevents:FindFirstChild("DestroyGrabLine")
            local oldcframe = hrp.CFrame

            mytoys.ChildAdded:Once(function(toy)
                if toy.Name ~= "CreatureBlobman" then return end

                local vehsit = toy:WaitForChild("VehicleSeat", 3)
                local detector = toy:WaitForChild("LeftDetector", 3)
                local weld = detector and detector:WaitForChild("LeftWeld", 3)
                local seatownerscript = toy:WaitForChild("BlobmanSeatAndOwnerScript", 3)
                local grab, release = seatownerscript:WaitForChild("CreatureGrab", 3), seatownerscript:WaitForChild("CreatureRelease", 3)
                local playersnow = players:GetPlayers()
                local plrchar, plrhrp, plrhum

                local blobHrp = toy:WaitForChild("HumanoidRootPart", 5)

                if vehsit and hum then
                    local connection
                    connection = vehsit:GetPropertyChangedSignal("Occupant"):Connect(function()
                        if vehsit.Occupant == hum then
                            connection:Disconnect()
                        end
                    end)
                    
                    for i = 1, 10 do
                        if vehsit.Occupant == hum then break end
                        hrp.CFrame = vehsit.CFrame
                        vehsit:Sit(hum)
                        task.wait(0.05)
                    end
                end
                task.wait(.3)

                for _, plr in ipairs(playersnow) do
                    if plr and plr == me then continue end
                    if plr and plr:IsFriendsWith(me.UserId) then continue end
                    plrchar = plr.Character
                    plrhrp = plrchar and plrchar:FindFirstChild("HumanoidRootPart")
                    plrhum = plrchar and plrchar:FindFirstChild("Humanoid")
                    if not plrhrp then continue end
                    
                    for i = 1, 15 do
                        hrp.CFrame = plrhrp.CFrame * CFrame.new(0, 5, 0)
                        hrp.Velocity = Vector3.zero
                        hrp.RotVelocity = Vector3.zero
                        
                        if blobHrp then
                            blobHrp.Velocity = Vector3.zero
                            blobHrp.RotVelocity = Vector3.zero
                        end

                        grab:FireServer(detector, plrhrp, weld)
                        release:FireServer(weld)
                        task.wait(.01)
                    end
                    task.wait()
                end

                local myFixedPos = hrp.Position
                local vectorinf = Vector3.new(math.huge, math.huge, math.huge)
                
                hrp.Anchored = true

                local radius = 22.5         
                local targetHeight = 10   
                
                local targetPlayersCount = 0
                for _, plr in ipairs(playersnow) do
                    if plr ~= me and not plr:IsFriendsWith(me.UserId) and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                        targetPlayersCount = targetPlayersCount + 1
                    end
                end

                local index = 0

                for _, plr in ipairs(playersnow) do
                    if plr and plr == me then continue end
                    if plr and plr:IsFriendsWith(me.UserId) then continue end
                    
                    plrchar = plr.Character
                    plrhrp = plrchar and plrchar:FindFirstChild("HumanoidRootPart")
                    plrhum = plrchar and plrchar:FindFirstChild("Humanoid")
                    if not (plrhrp or plrhum) then continue end

                    index = index + 1
                    
                    local angle = index * (math.pi * 2) / (targetPlayersCount > 0 and targetPlayersCount or 1)
                    local x = myFixedPos.X + math.cos(angle) * radius
                    local z = myFixedPos.Z + math.sin(angle) * radius
                    local y = myFixedPos.Y + targetHeight

                    local targetPosVector = Vector3.new(x, y, z)

                    if plrhrp:FindFirstChild("BodyGyro") then plrhrp.BodyGyro:Destroy() end

                    plrhrp.CFrame = CFrame.lookAt(targetPosVector, myFixedPos)
                    
                    plrhrp.Velocity = Vector3.zero
                    plrhrp.RotVelocity = Vector3.zero
                    
                    for _, child in ipairs(plrhrp:GetChildren()) do
                        if child:IsA("AngularVelocity") or child:IsA("BodyAngularVelocity") then
                            child:Destroy()
                        end
                    end

                    local position = plrhrp and plrhrp:FindFirstChild("BodyPosition") or Instance.new("BodyPosition", plrhrp)
                    position.Position = targetPosVector
                    position.MaxForce = vectorinf
                    position.D = 100
                end

                if blobHrp then
                    blobHrp.Velocity = Vector3.zero
                    blobHrp.RotVelocity = Vector3.zero
                end

                task.wait(.1)

                for _, plr in ipairs(playersnow) do
                    if plr and plr == me then continue end
                    if plr and plr:IsFriendsWith(me.UserId) then continue end
                    plrchar = plr.Character
                    plrhrp = plrchar and plrchar:FindFirstChild("HumanoidRootPart")
                    plrhum = plrchar and plrchar:FindFirstChild("Humanoid")
                    if not (plrhrp or plrhum) then continue end

                    plrhrp.RotVelocity = Vector3.zero
                    for i = 1, 5 do
                        sno:FireServer(plrhrp, plrhrp.CFrame)
                        task.wait()
                        destroyline:FireServer(plrhrp)
                        task.wait()
                        grab:FireServer(detector, plrhrp, weld)
                    end
                end
                
                task.wait(.3)
                
                hrp.Anchored = false
                hrp.CFrame = oldcframe
                destroytoy:FireServer(toy)
            end)

            spawntoy:InvokeServer("CreatureBlobman", hrp.CFrame, Vector3.zero)
        end)
    end
})
end

do

    local KeybindLeft = Tabs.Keybinds:AddLeftGroupbox("Keybinds")

  local autoSitBlobmanToggle = KeybindLeft:AddCheckbox("AutoSitBlobmanToggle", {
    Text = "Auto-Sit Blobman",
    Default = false,
    Callback = function(Value)
        _G.AutoSitBlobZ = Value
        if Value then
            task.spawn(AutoSitLoop)
        end
    end
})

autoSitBlobmanToggle:AddKeyPicker("AutoSitBlobmanKeybind", {
    Default = "None",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Auto Sit Blobman",
    NoUI = false,
})

local freezeBlobmanToggle = KeybindLeft:AddCheckbox("FreezeBlobmanToggle", {
    Text = "Freeze Blobman",
    Default = false,
    Callback = function(Value)
        _G.FreezeBlobZ = Value
        if Value then
            task.spawn(FreezeBlobLoop)
        end
    end
})

freezeBlobmanToggle:AddKeyPicker("FreezeBlobmanKeybind", {
    Default = "None",
    SyncToggleState = true,
    Mode = "Toggle",
    Text = "Freeze Blobman",
    NoUI = false,
})
end

do
local FunLeft = Tabs.Fun:AddLeftGroupbox("Fun Stuff")
local FunRight = Tabs.Fun:AddRightGroupbox("Fun Keybinds")

FunLeft:AddToggle("JerkOffToggle", {
    Text = "Jerk-Off",
    Default = false,
    Callback = function(Value)
        if Value then
            StartJerkOff()
        else
            StopJerkOff()
        end
    end
})

local Players = game:GetService("Players")

local playBangActive = false
local bangAnimTrack = nil
local bangAnimId = "rbxassetid://148840371" 
local bangSpeed = 10

local function startBang()
	local plr = Players.LocalPlayer
	local char = plr.Character or plr.CharacterAdded:Wait()
	local hum = char:FindFirstChildOfClass("Humanoid")
	if not hum then
		return
	end
	local animator = hum:FindFirstChildOfClass("Animator")
	if not animator then
		animator = Instance.new("Animator")
		animator.Parent = hum
	end
	local anim = Instance.new("Animation")
	anim.AnimationId = bangAnimId
	bangAnimTrack = animator:LoadAnimation(anim)
	bangAnimTrack.Priority = Enum.AnimationPriority.Action
	bangAnimTrack:Play()
	bangAnimTrack:AdjustSpeed(bangSpeed)

	task.spawn(function()
		while playBangActive do
			task.wait(0.1)
			if bangAnimTrack and bangAnimTrack.IsPlaying then
				bangAnimTrack.TimePosition = 0.1
			end
		end
	end)
end

local function stopBang()
	if bangAnimTrack then
		bangAnimTrack:Stop()
		bangAnimTrack = nil
	end
end

FunLeft:AddToggle("BangToggle", {
	Text = "Bang-Off",
	Default = false,
	Callback = function(on)
		playBangActive = on
		if on then
			startBang()
		else
			stopBang()
		end
	end
})

FunRight:AddLabel("Bang Key"):AddKeyPicker("BangKeyPicker", {
    Default = "B",
    Mode = "Press",
    Text = "Bang Key",
    NoUI = false,
    Callback = function(Value)
    end,
    ChangedCallback = function(NewKey)
        bangKey = NewKey
    end
})

FunRight:AddLabel("Jerk Off Key"):AddKeyPicker("JerkOffKeyPicker", {
    Default = "Q",
    Mode = "Press",
    Text = "Jerk Off Key",
    NoUI = false,
    Callback = function(Value)
    end,
    ChangedCallback = function(NewKey)
        jerkOffKey = NewKey
    end
})
end

do
    local KeybindSys = {
        SelectedToy = "PalletLightBrown",
        Toys = {
            ["Pallet"] = "PalletLightBrown",
            ["Snowball"] = "BallSnowball",
            ["Balloon Bomb"] = "BombBalloon",
            ["Missile"] = "BombMissile",
            ["Void Bomb"] = "BombDarkMatter",
            ["Blobman"] = "CreatureBlobman",
            ["Robot"] = "CreatureRobot",
            ["UFO"] = "FlyingToyUfo",
            ["Hammer"] = "ToolCleaver",
            ["Pencil"] = "ToolPencil",
            ["Anvil"] = "AnvilGray",
            ["Burger"] = "FoodHamburger",
            ["Banana"] = "FoodBanana",
            ["Soda Can"] = "FoodSodaCan",
            ["Boombox"] = "Boombox",
            ["Katana"] = "NinjaKatana",
            ["Shuriken"] = "NinjaShuriken"
        }
    }

    local RS = game:GetService("ReplicatedStorage")
    local LP = game:GetService("Players").LocalPlayer
    local SpawnToyRF = RS:WaitForChild("MenuToys"):WaitForChild("SpawnToyRemoteFunction")

    local toyDisplayNames = {}
    for name, _ in pairs(KeybindSys.Toys) do table.insert(toyDisplayNames, name) end
    table.sort(toyDisplayNames)

    local function spawnToy()
        local char = LP.Character
        if not char then return end
        local spawnCF = char:GetPivot() * CFrame.new(0, 0, -5)
        pcall(function()
            SpawnToyRF:InvokeServer(KeybindSys.SelectedToy, spawnCF, Vector3.new(0, 0, 0))
        end)
    end

    local MobileGroup = Tabs.Keybinds:AddLeftGroupbox("Mobile Utility")
    local ToyGroup = Tabs.Keybinds:AddRightGroupbox("Toy Spawner")

    MobileGroup:AddButton({
        Text = "Load Mobile Keyboard",
        Func = function()
            if not _G.MobileKeyboardLoaded then
                _G.MobileKeyboardLoaded = true
                loadstring(game:HttpGet('https://raw.githubusercontent.com/Xxtan31/Ata/main/deltakeyboardcrack.txt'))()
            end
        end
    })

    ToyGroup:AddDropdown("ToySelectDropdown", {
        Text = "Select Toy",
        Values = toyDisplayNames,
        Default = "Pallet",
        Callback = function(v) KeybindSys.SelectedToy = KeybindSys.Toys[v] end
    })

    ToyGroup:AddCheckbox("EnableToySpawn", {
        Text = "Spawner Master Toggle",
        Default = false
    })

    ToyGroup:AddLabel("Quick Spawn Key"):AddKeyPicker("ToySpawnKey", {
        Default = "Tab",
        SyncToggleState = false,
        Mode = "Press",
        Text = "Spawn Key",
        Callback = function()
            if Toggles.EnableToySpawn.Value then
                spawnToy()
            end
        end
    })
    
    ToyGroup:AddButton("Spawn Once (Manual)", function() spawnToy() end)
end

do
    local DanceSystem = {
        CurrentEmoteTrack = nil,
        CurrentDanceTrack = nil,
        Speed = 1,
        SelectedEmoteData = nil,
        SelectedDanceData = nil,
        
        Emotes = {
            {name = 'None', id = 0},
            {name = 'Head Throw', id = 35154961},
            {name = 'Floating Head', id = 121572214},
            {name = 'Crouch', id = 182724289},
            {name = 'Floor Crawl', id = 282574440},
            {name = 'Dino Walk', id = 204328711},
            {name = 'Jumping Jacks', id = 429681631},
            {name = 'Loop Head', id = 35154961, isGlitch = true, glitchSpd = 1e6},
            {name = 'Hero Jump', id = 184574340},
            {name = 'Faint', id = 181526230},
            {name = 'Floor Faint', id = 181525546, isGlitch = true, glitchSpd = 2},
            {name = 'Super Faint', id = 181525546, isGlitch = true, glitchSpd = 40},
            {name = 'Levitate', id = 313762630},
            {name = 'Float Sit', id = 179224234},
            {name = 'Clone Illusion', id = 215384594, isGlitch = true, glitchSpd = 1e7},
            {name = 'Glitch Levitate', id = 313762630, isGlitch = true, glitchSpd = 1e7},
            {name = 'Bow Down', id = 204292303, isGlitch = true, glitchSpd = 3},
            {name = 'Loop Slam', id = 204295235, isGlitch = true, glitchSpd = 1e4},
            {name = 'Arm Turbine', id = 259438880, isGlitch = true, glitchSpd = 1e3},
            {name = 'Insane', id = 33796059, isGlitch = true, glitchSpd = 1e8},
            {name = 'Arm Detach', id = 33169583, isGlitch = true, glitchSpd = 1e6}
        },
        Dances = {
            {name = 'None', id = 0},
            {name = 'Dab', id = 183412246},
            {name = 'Spinner', id = 188632011, isGlitch = true, glitchSpd = 2},
            {name = 'Moving Dance', id = 429703734},
            {name = 'Spin Dance', id = 429730430},
            {name = 'Moon Dance', id = 45834924},
            {name = 'Thriller', id = 27789359},
            {name = 'Robot', id = 30196114},
            {name = 'Shuffle', id = 248263260},
            {name = 'Groove', id = 33796059},
            {name = 'Jump Dance', id = 52155728}
        }
    }

    function DanceSystem.Stop(trackType)
        if trackType == "Emote" and DanceSystem.CurrentEmoteTrack then
            pcall(function() DanceSystem.CurrentEmoteTrack:Stop() DanceSystem.CurrentEmoteTrack:Destroy() end)
            DanceSystem.CurrentEmoteTrack = nil
        elseif trackType == "Dance" and DanceSystem.CurrentDanceTrack then
            pcall(function() DanceSystem.CurrentDanceTrack:Stop() DanceSystem.CurrentDanceTrack:Destroy() end)
            DanceSystem.CurrentDanceTrack = nil
        elseif not trackType then
            DanceSystem.Stop("Emote")
            DanceSystem.Stop("Dance")
        end
    end

    function DanceSystem.Play(data, trackType)
        DanceSystem.Stop(trackType)
        if not data or data.id == 0 then return end

        local char = game:GetService("Players").LocalPlayer.Character
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        if not hum then return end

        local animator = hum:FindFirstChildOfClass("Animator") or Instance.new("Animator", hum)
        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://" .. data.id
        
        local track = animator:LoadAnimation(anim)
        local finalSpeed = (data.glitchSpd or 1) * DanceSystem.Speed

        if trackType == "Emote" then DanceSystem.CurrentEmoteTrack = track else DanceSystem.CurrentDanceTrack = track end
        
        track:Play(0.1, 1, finalSpeed)
    end

    local AnimSection = Tabs.Fun:AddLeftGroupbox("Animations & Dances")

    AnimSection:AddSlider("AnimGlobalSpeed", {
        Text = "Animation Speed",
        Default = 1, Min = 0.1, Max = 10, Rounding = 1,
        Callback = function(v)
            DanceSystem.Speed = v
            if DanceSystem.CurrentEmoteTrack then DanceSystem.CurrentEmoteTrack:AdjustSpeed(v) end
            if DanceSystem.CurrentDanceTrack then DanceSystem.CurrentDanceTrack:AdjustSpeed(v) end
        end
    })

    local emoteNames = {}
    for _, v in ipairs(DanceSystem.Emotes) do table.insert(emoteNames, v.name) end

    AnimSection:AddDropdown("EmoteDropdown", {
        Text = "Select Emote",
        Values = emoteNames,
        Default = "None",
        Callback = function(val)
            for _, v in ipairs(DanceSystem.Emotes) do
                if v.name == val then DanceSystem.SelectedEmoteData = v break end
            end
            if Toggles.ApplyEmote and Toggles.ApplyEmote.Value then
                DanceSystem.Play(DanceSystem.SelectedEmoteData, "Emote")
            end
        end
    })

    AnimSection:AddCheckbox("ApplyEmote", {
        Text = "Apply Emote (Loop)",
        Default = false,
        Callback = function(state)
            if state then
                DanceSystem.Play(DanceSystem.SelectedEmoteData, "Emote")
            else
                DanceSystem.Stop("Emote")
            end
        end
    })

    local danceNames = {}
    for _, v in ipairs(DanceSystem.Dances) do table.insert(danceNames, v.name) end

    AnimSection:AddDropdown("DanceDropdown", {
        Text = "Select Dance",
        Values = danceNames,
        Default = "None",
        Callback = function(val)
            for _, v in ipairs(DanceSystem.Dances) do
                if v.name == val then DanceSystem.SelectedDanceData = v break end
            end
            if Toggles.ApplyDance and Toggles.ApplyDance.Value then
                DanceSystem.Play(DanceSystem.SelectedDanceData, "Dance")
            end
        end
    })

    AnimSection:AddCheckbox("ApplyDance", {
        Text = "Apply Dance (Loop)",
        Default = false,
        Callback = function(state)
            if state then
                DanceSystem.Play(DanceSystem.SelectedDanceData, "Dance")
            else
                DanceSystem.Stop("Dance")
            end
        end
    })

    task.spawn(function()
        while true do
            if Toggles.ApplyEmote and Toggles.ApplyEmote.Value and DanceSystem.SelectedEmoteData then
                if not DanceSystem.CurrentEmoteTrack or not DanceSystem.CurrentEmoteTrack.IsPlaying then
                    DanceSystem.Play(DanceSystem.SelectedEmoteData, "Emote")
                end
            end
            if Toggles.ApplyDance and Toggles.ApplyDance.Value and DanceSystem.SelectedDanceData then
                if not DanceSystem.CurrentDanceTrack or not DanceSystem.CurrentDanceTrack.IsPlaying then
                    DanceSystem.Play(DanceSystem.SelectedDanceData, "Dance")
                end
            end
            task.wait(0.1)
        end
    end)

    AnimSection:AddButton("Stop All Animations", function()
        Toggles.ApplyEmote:SetValue(false)
        Toggles.ApplyDance:SetValue(false)
        DanceSystem.Stop()
        Options.EmoteDropdown:SetValue("None")
        Options.DanceDropdown:SetValue("None")
    end)

    game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
        DanceSystem.Stop()
    end)
end

do
    local MiscLeft = Tabs.Miscs:AddLeftGroupbox("Miscellaneous")
    local MiscAura = Tabs.Miscs:AddRightGroupbox("Aura Settings")
    local MiscWhitelist = Tabs.Miscs:AddLeftGroupbox("Whitelist")

    MiscLeft:AddCheckbox("TeleportToggle", {
        Text = "Enable Slide Teleport",
        Default = false,
        Callback = function(Value)
            tpEnabled = Value
        end
    })

    MiscLeft:AddLabel("Slide TP Key"):AddKeyPicker("TeleportKey", {
        Default = "X",
        SyncToggleState = false,
        Mode = "Press",
        Text = "Slide Teleport",
        NoUI = false,
        Callback = function()
            if not tpEnabled or slideTeleportBusy then return end
            local character = LocalPlayer.Character
            local hrp = character and character:FindFirstChild("HumanoidRootPart")
            if not hrp then return end

            local Mouse = LocalPlayer:GetMouse()
            if not (Mouse.Target and Mouse.Target.CanCollide) then return end

            local targetPos = Mouse.Hit.Position
            local endPos = targetPos + Vector3.new(0, 3, 0)
            local startCF = hrp.CFrame
            local startRot = startCF - startCF.Position
            local startPos = startCF.Position
            local dist = (endPos - startPos).Magnitude
            if dist < 0.25 then return end

            slideTeleportBusy = true
            task.spawn(function()
                local duration
                local arcHeight = 0
                if rabbitModeEnabled then
                    duration = math.clamp(0.12 + dist * 0.0022, 0.18, 0.45)
                    arcHeight = math.clamp(dist * 0.22, 3.5, 18)
                else
                    duration = math.clamp(0.1 + dist * 0.004, 0.2, 0.8)
                end

                local t0 = tick()
                local conn
                conn = RunService.RenderStepped:Connect(function()
                    if not hrp.Parent then
                        conn:Disconnect()
                        slideTeleportBusy = false
                        return
                    end
                    local alpha = math.clamp((tick() - t0) / duration, 0, 1)
                    local s = alpha * alpha * (3 - 2 * alpha)
                    local basePos = startPos:Lerp(endPos, s)
                    local lift = rabbitModeEnabled and Vector3.new(0, arcHeight * math.sin(s * math.pi), 0) or Vector3.zero
                    hrp.CFrame = CFrame.new(basePos + lift) * startRot
                    if alpha >= 1 then
                        conn:Disconnect()
                        hrp.CFrame = CFrame.new(endPos) * startRot
                        pcall(function()
                            hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                        end)
                        slideTeleportBusy = false
                    end
                end)
            end)
        end
    })

    MiscLeft:AddCheckbox("RabbitModeToggle", {
        Text = "Rabbit Mode",
        Default = true,
        Callback = function(Value)
            rabbitModeEnabled = Value
        end
    })

    MiscLeft:AddDivider()

    MiscLeft:AddCheckbox("BasicTeleportToggle", {
        Text = "Enable Basic Teleport",
        Default = false,
        Callback = function(Value)
            _G.BasicTeleportEnabled = Value
        end
    })

    MiscLeft:AddLabel("Basic TP Key"):AddKeyPicker("BasicTPKey", {
        Default = "Z",
        SyncToggleState = false,
        Mode = "Press",
        Text = "Basic Teleport",
        NoUI = false,
        Callback = function()
            if not _G.BasicTeleportEnabled then return end
            local character = LocalPlayer.Character
            local hrp = character and character:FindFirstChild("HumanoidRootPart")
            local mouse = LocalPlayer:GetMouse()
            if hrp and mouse.Hit then
                hrp.CFrame = CFrame.new(mouse.Hit.Position + Vector3.new(0, 3, 0))
            end
        end
    })

    MiscAura:AddSlider("AuraRadius", {
        Text = "Aura Radius",
        Default = 15,
        Min = 1,
        Max = 20,
        Rounding = 0,
        Callback = function(Value)
            removeAntiKickRadius = Value
        end
    })

    MiscAura:AddCheckbox("RemoveAntiKickAuraToggle", {
        Text = "Remove Anti-Kick Aura",
        Default = false,
        Callback = function(Value)
            removeAntiKickAuraActive = Value
            if Value then
                task.spawn(RemoveAntiKickAuraFunction)
            end
        end
    })

    MiscWhitelist:AddCheckbox("AuraWhitelistToggle", {
        Text = "Whitelist Friends",
        Default = false,
        Callback = function(Value)
            useWhitelistRemoveAntiKick = Value
        end
    })
end

do

local MenuGroup = Tabs.UISettings:AddLeftGroupbox("Menu", "wrench")

MenuGroup:AddToggle("KeybindMenuOpen", {
	Default = Library.KeybindFrame.Visible,
	Text = "Open Keybind Menu",
	Callback = function(value)
		Library.KeybindFrame.Visible = value
	end,
})
MenuGroup:AddToggle("ShowCustomCursor", {
	Text = "Custom Cursor",
	Default = true,
	Callback = function(Value)
		Library.ShowCustomCursor = Value
	end,
})
MenuGroup:AddDropdown("NotificationSide", {
	Values = { "Left", "Right" },
	Default = "Right",

	Text = "Notification Side",

	Callback = function(Value)
		Library:SetNotifySide(Value)
	end,
})
MenuGroup:AddDropdown("DPIDropdown", {
	Values = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
	Default = "100%",

	Text = "DPI Scale",

	Callback = function(Value)
		Value = Value:gsub("%%", "")
		local DPI = tonumber(Value)

		Library:SetDPIScale(DPI)
	end,
})

MenuGroup:AddSlider("UICornerSlider", {
	Text = "Corner Radius",
	Default = Library.CornerRadius,
	Min = 0,
	Max = 20,
	Rounding = 0,
	Callback = function(value)
		Window:SetCornerRadius(value)
	end
})

MenuGroup:AddDivider()
MenuGroup:AddLabel("Menu bind")
	:AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })

MenuGroup:AddButton("Unload", function()
	Library:Unload()
end)

local CusGroup = Tabs.UISettings:AddRightGroupbox("Custom BG & BlackHole")

local pendingUrl = "https://i.pinimg.com/736x/66/2a/8a/662a8a7dc6fef75f4583000d6f053c97.jpg" 

CusGroup:AddInput("BgUrlInput", {
    Default = pendingUrl,
    Numeric = false,
    Finished = false,
    Text = "Background URL",
    Placeholder = "Link / AssetID",
    Callback = function(Value)
        pendingUrl = Value
    end
})

local BGCheckbox = CusGroup:AddCheckbox("CustomBGToggle", {
    Text = "Apply",
    Default = true,
    Callback = function(Value)
        if Value then
            local value = pendingUrl
            if not value or value == "" then 
                if Library.Unloaded then return end 
                Library:Notify("type URL or ID!") 
                return 
            end

            if not value:match("^https?://") then 
                local ok = applyBackground(value:match("^rbxassetid://") and value or "rbxassetid://" .. value) 
                Library:Notify(ok and "Backround Applied" or "Error") 
                return 
            end

            safeMakeFolder("Obsidian")
            safeMakeFolder("Obsidian/custom_assets")
            local filePath = "Obsidian/custom_assets/bg_" .. tostring(math.floor(tick())) .. ".png"

            Library:Notify("Скачиваю...")
            local ok, data = pcall(game.HttpGet, game, value)
            if not ok then 
                Library:Notify("Ошибка загрузки: " .. tostring(data)) 
                return 
            end

            pcall(writefile, filePath, data)
            local assetId, err = safeGetCustomAsset(filePath)
            if not assetId then 
                Library:Notify("Error: " .. tostring(err)) 
                return 
            end

            Library:Notify(applyBackground(assetId) and "Backround Applied" or "Окна не найдены")
        else
            removeBackground()
            Library:Notify("Backround Removed")
        end
    end
})

task.spawn(function()
    if Toggles.CustomBGToggle then
        Toggles.CustomBGToggle:SetValue(true)
    end
end)

local bhAssetId = nil 
local pendingBHUrl = "" 
local originalTextures = {} 

local function applyBHSkin(child, reset) 
    if not child or not child.Parent then return end 
    if not originalTextures[child] then 
        originalTextures[child] = (child:IsA("Decal") or child:IsA("Texture")) and child.Texture or child.Image 
    end 
    local root = child.Parent 
    if not root:IsA("BasePart") then root = root.Parent end 
    
    if child:IsA("Decal") or child:IsA("Texture") then 
        child.Color3 = Color3.new(0, 0, 0) 
        child.Transparency = 0.4 
    elseif child:IsA("ImageLabel") then 
        child.ImageColor3 = Color3.new(0, 0, 0) 
        child.BackgroundTransparency = 1 
        
        child.AnchorPoint = Vector2.new(0.5, 0.5) 
        child.Position = UDim2.fromScale(0.5, 0.5) 
        
        child.Size = UDim2.fromScale(0.49, 0.50) 
    end 
    
    if root and root:IsA("BasePart") then 
        root.Transparency = 0.5 
        root.Color = Color3.fromRGB(30, 30, 30) 
    end

    if reset then 
        if child:IsA("Decal") or child:IsA("Texture") then 
            child.Texture = originalTextures[child] 
        elseif child:IsA("ImageLabel") then 
            child.Image = originalTextures[child] 
        end 
    else 
        if bhAssetId then 
            if child:IsA("Decal") or child:IsA("Texture") then 
                child.Texture = bhAssetId 
            elseif child:IsA("ImageLabel") then 
                child.Image = bhAssetId 
            end 
        end 
    end 
end 

CusGroup:AddCheckbox("BHSkinToggle", { 
    Text = "Translucent Blackhole", 
    Default = false,
    Callback = function(Value) 
        if Value then 
            local val = pendingBHUrl 
            if val ~= "" then 
                if val:match("^https?://") then 
                    safeMakeFolder("Obsidian/custom_assets")
                    local path = "Obsidian/custom_assets/bh_" .. math.floor(tick()) .. ".png" 
                    local ok, data = pcall(game.HttpGet, game, val) 
                    if ok then 
                        writefile(path, data) 
                        bhAssetId = safeGetCustomAsset(path) 
                    end 
                else 
                    bhAssetId = val:match("^rbxassetid://") and val or "rbxassetid://" .. val
                end 
            end 
            for _, v in ipairs(workspace:GetDescendants()) do 
                if v.Name == "Small" or v.Name == "Large" then applyBHSkin(v, false) end 
            end 
        else 
            for child, _ in pairs(originalTextures) do 
                applyBHSkin(child, true) 
            end 
            bhAssetId = nil 
        end 
    end 
}) 

task.spawn(function()
    while true do
        if _G.DestroyBarriersActive then
            local inv = workspace:FindFirstChild(game.Players.LocalPlayer.Name .. "SpawnedInToys")
            if inv then
                for _, item in ipairs(inv:GetChildren()) do
                    local mainPart = item:FindFirstChild("HoldPart") or item:FindFirstChild("Handle") or item.PrimaryPart
                    if mainPart then
                        pcall(function()
                            game:GetService("ReplicatedStorage").GrabEvents.SetNetworkOwner:FireServer(mainPart, mainPart.CFrame)
                        end)
                    end
                end
            end
        end
        task.wait(0.3)
    end
end)

task.spawn(function() 
    if Toggles.BHSkinToggle then 
        Toggles.BHSkinToggle:SetValue(false) 
    end 
end) 

workspace.DescendantAdded:Connect(function(desc) 
    if Toggles.BHSkinToggle and Toggles.BHSkinToggle.Value then 
        if desc.Name == "Small" or desc.Name == "Large" then 
            applyBHSkin(desc, false) 
        end 
    end 
end)

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({ "MenuKeybind" })

ThemeManager:SetFolder("MyScriptHub")
SaveManager:SetFolder("MyScriptHub/specific-game")
SaveManager:SetSubFolder("specific-place")

SaveManager:BuildConfigSection(Tabs.UISettings)
ThemeManager:AddThemeOptions(Tabs.UISettings)
end

UserInputService.InputBegan:Connect(function(input, processed)
    if not processed then
        if input.KeyCode == bangKey then
            if Toggles.BangToggle then
                Toggles.BangToggle:SetValue(not Toggles.BangToggle.Value)
            end
        end

        if input.KeyCode == jerkOffKey then
            if Toggles.JerkOffToggle then
                Toggles.JerkOffToggle:SetValue(not Toggles.JerkOffToggle.Value)
            end
        end
    end
end)

UserInputService.InputBegan:Connect(function(input, processed)
    if not processed and input.KeyCode == gucciKey then
        GucciAntiGrab()
    end
end)

Players.PlayerAdded:Connect(function()
    task.defer(function()
        task.wait(0.5)
        refreshAllPlayerDropdowns()
    end)
end)

Players.PlayerRemoving:Connect(function()
    task.defer(function()
        task.wait(0.25)
        refreshAllPlayerDropdowns()
    end)
end)

Library:Notify({
    Title = "The Revenge",
    BigIcon = "7355674024",
    Description = "The Revenge premium loaded",
    Duration = 5
})

do
local function playKickSound()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://97643101798871"
    sound.Volume = 1
    sound.Parent = game:GetService("SoundService")
    sound:Play()
    game:GetService("Debris"):AddItem(sound, 2)
end

workspace.ChildAdded:Connect(function(obj)
    local kickObjectNames = {
        ["blackholekick"] = true,
        ["blackholekicktweens(old)"] = true,
        ["blackholekicktweens"] = true,
        ["jhole"] = true,
        ["blackhole"] = true,
        ["black_hole"] = true,
        ["voidhole"] = true,
        ["singularity"] = true,
    }

    if not obj.Name or not kickObjectNames[obj.Name:lower()] then return end
    
    task.wait(0.1)
    
    local pos
    if obj:IsA("BasePart") then
        pos = obj.Position
    else
        local part = obj:FindFirstChildWhichIsA("BasePart", true)
        if part then pos = part.Position end
    end

    if not pos then return end

    local closestPlayer = getClosestPlayer(pos)
    local currentTarget = Options.TargetPlayer and Options.TargetPlayer.Value or ""

    if closestPlayer and currentTarget ~= "" and closestPlayer.Name == currentTarget then
        playKickSound()
        
        local displayName = closestPlayer.DisplayName or "Unknown"
        local realName = closestPlayer.Name or "Unknown"

        pcall(function()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://97643101798871"
            sound.Volume = 1
            sound.Parent = game:GetService("SoundService")
            sound:Play()
            game:GetService("Debris"):AddItem(sound, 3)
        end)

        Library:Notify({
            Title = "The Revenge",
            BigIcon = "7355674024",
            Description = displayName .. " (" .. realName .. ") Target Has Kicked",
            Duration = 5
        })
    end
end)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local remote = ReplicatedStorage:WaitForChild("GrabEvents"):WaitForChild("ExtendGrabLine")
local remote1 = ReplicatedStorage:WaitForChild("GrabEvents"):WaitForChild("CreateGrabLine")
local MIN_SIZE_BYTES = 1024 * 1024 * 0.1
local NOTIFY_COOLDOWN = 4
local lastNotifyTime = {}

local ScriptSignatures = {
    ["Hopium | wsp nigga"] = "Hopium",
    ["sosoososososo"] = "Neolose, Posral",
    ["FLOPPA LOVES YOU"] = "The Worst (prem, free)",
    ["sex 💖 sex 💖 sex 💖 "] = "Nil'e",
    ["Bliz_T HUB | FLOPPA LOVES YOU"] = "The Worst (priv)",
    ["balls balls balls"] = "SRV9 or other skid",
    ["❤️❤️❤️❤️❤️😘😘😘😘😍😍😍😍"] = "Mercury",
    ["00000000000000000"] = "Resonance",
    ["AAAAAA"] = "Neverlose",
    ["polarbestpolarbestpolarbest!!!!!"] = "Polar hub",
    ["polarthebest"] = "Polar hub",
    ["MISHA LUV PD"] = "Hammam",
    [" ‍‌‍‌"] = "Blizt hub",
    ["BinisJ"] = "хуйня какаята",
    ["😂😂😂😂🤣🤣🤣🤣"] = "смешные пакетики комика",
    ["ResistanceRe"] = "Resistance",
    ["RSC | -92233"] = "Resonance 2.7 (Fake)",
    ["Genesis Was "] = "Xocu, Genesis",
    ["PLEASE DONT"] = "The Revenge",
    ["❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️"] = "Phoenix hub",
	["PLEASE DONT KICK ME 😂"] = "The Revenge"
}

local function GetScriptName(data)
    if type(data) ~= "string" then
        return "Unknown"
    end
    for signature, scriptName in pairs(ScriptSignatures) do
        if string.match(data, signature) then
            return scriptName
        end
    end
    return "Unknown"
end

local function FormatToMB(bytes)
    local mb = bytes / (1024 * 1024)
    return string.format("%.2f MB", mb)
end

local function GetSenderName(sender)
    if type(sender) == "string" then
        local player = Players:FindFirstChild(sender)
        if player then
            return player.DisplayName .. " (" .. player.Name .. ")"
        end
        return sender
    elseif typeof(sender) == "Instance" and sender:IsA("Player") then
        return sender.DisplayName .. " (" .. sender.Name .. ")"
    end
    return tostring(sender)
end

local function GetPacketDataInfo(data)
    local dataInfo = {
        bytes = 0,
        text = "",
        type = "unknown"
    }
    
    if type(data) == "string" then
        dataInfo.bytes = string.len(data)
        dataInfo.type = "string"
        if #data >= 12 then
            dataInfo.text = string.sub(data, 1, 12) .. "..."
        else
            dataInfo.text = data
        end
        
    elseif type(data) == "table" then
        dataInfo.bytes = #data * 8
        dataInfo.type = "table"
        local items = {}
        for i, v in pairs(data) do
            if type(v) == "string" then
                if #v >= 12 then
                    table.insert(items, string.sub(v, 1, 12) .. "...")
                else
                    table.insert(items, v)
                end
            else
                table.insert(items, tostring(v))
            end
            if #items >= 5 then break end
        end
        dataInfo.text = "{" .. table.concat(items, ", ") .. "}"
        if #data > 5 then
            dataInfo.text = dataInfo.text .. " ... (" .. #data .. " items)"
        end
        
    elseif type(data) == "number" then
        dataInfo.bytes = 8
        dataInfo.text = tostring(data)
        dataInfo.type = "number"
        
    elseif type(data) == "boolean" then
        dataInfo.bytes = 1
        dataInfo.text = tostring(data)
        dataInfo.type = "boolean"
        
    else
        dataInfo.bytes = 50
        dataInfo.text = tostring(data)
        dataInfo.type = "other"
    end
    
    return dataInfo
end

local function PlayPacketSound()
    pcall(function()
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://97643101798871"
        sound.Volume = 1
        sound.Parent = game:GetService("SoundService")
        sound:Play()
        game:GetService("Debris"):AddItem(sound, 3)
    end)
end

remote.OnClientEvent:Connect(function(sender, data)
    local senderName = GetSenderName(sender)
    local packetInfo = GetPacketDataInfo(data)
    
    if packetInfo.bytes >= MIN_SIZE_BYTES then
        local now = tick()
        if lastNotifyTime[senderName] and now - lastNotifyTime[senderName] < NOTIFY_COOLDOWN then
            return
        end
        lastNotifyTime[senderName] = now
        
        PlayPacketSound()
        local scriptName = GetScriptName(data)
        local description = string.format(
            "From: %s\nSize: %s\nData: %s\nScript: %s",
            senderName,
            FormatToMB(packetInfo.bytes),
            packetInfo.text,
            scriptName
        )
        print(description)
        Library:Notify({
            Title = "Packet Detected",
            BigIcon = "7355674024",
            Description = description,
            Duration = 4
        })
    end
end)
end

Players.PlayerAdded:Connect(function(player)
    local currentTarget = Options.TargetPlayer and Options.TargetPlayer.Value or ""
    if currentTarget ~= "" and player.Name == currentTarget then
        
        pcall(function()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://97643101798871"
            sound.Volume = 1
            sound.Parent = game:GetService("SoundService")
            sound:Play()
            game:GetService("Debris"):AddItem(sound, 3)
        end)

        Library:Notify({
            Title = "The Revenge",
            BigIcon = "7355674024", 
            Description = player.DisplayName .. " (" .. player.Name .. ") Target Player joined",
            Duration = 5
        })
    end
end)

Players.PlayerRemoving:Connect(function(player)
    local currentTarget = Options.TargetPlayer and Options.TargetPlayer.Value or ""
    if currentTarget ~= "" and player.Name == currentTarget then
        
        pcall(function()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://97643101798871"
            sound.Volume = 1
            sound.Parent = game:GetService("SoundService")
            sound:Play()
            game:GetService("Debris"):AddItem(sound, 3)
        end)

        Library:Notify({
            Title = "The Revenge",
            BigIcon = "7355674024",
            Description = player.DisplayName .. " (" .. player.Name .. ") Target Player left",
            Duration = 5
        })
    end
end)

do
    local GrabSystem = {
        ActiveModes = {},
        MasterEnable = false,
        WS = game:GetService("Workspace"),
        LP = game:GetService("Players").LocalPlayer,
        SetOwner = game:GetService("ReplicatedStorage"):WaitForChild("GrabEvents"):WaitForChild("SetNetworkOwner"),
        DestroyLine = game:GetService("ReplicatedStorage"):WaitForChild("GrabEvents"):WaitForChild("DestroyGrabLine")
    }

    function GrabSystem:GetCurrentTarget()
        local grabModel = self.WS:FindFirstChild("GrabParts")
        if grabModel then
            local mainPart = grabModel:FindFirstChild("GrabPart")
            local weld = mainPart and mainPart:FindFirstChildOfClass("WeldConstraint")
            return weld and weld.Part1
        end
        return nil
    end

    local MainBox = Tabs.Grabs:AddLeftGroupbox("Main Controls")

    MainBox:AddCheckbox("MasterGrabToggle", {
        Text = "Enable Advanced Grabs",
        Default = false,
        Callback = function(v) GrabSystem.MasterEnable = v end
    })

    MainBox:AddDropdown("GrabModesDropdown", {
        Text = "Select Modes",
        AllowNull = true,
        Multi = true,
        Values = {"Loop Grab", "Kick Grab", "Noclip Grab", "Heavy Grab", "Kill Grab"},
        Default = {},
        Callback = function(val) GrabSystem.ActiveModes = val end
    })

    game:GetService("RunService").Heartbeat:Connect(function()
        if not GrabSystem.MasterEnable then return end
        
        local target = GrabSystem:GetCurrentTarget()
        if not target or not target.Parent then return end

        if GrabSystem.ActiveModes["Loop Grab"] then
            GrabSystem.SetOwner:FireServer(target, target.CFrame)
        end

        if GrabSystem.ActiveModes["Kick Grab"] then
            GrabSystem.SetOwner:FireServer(target, target.CFrame)
            target.AssemblyLinearVelocity = Vector3.new(0, 50000, 0)
            GrabSystem.DestroyLine:FireServer(target)
        end

        if GrabSystem.ActiveModes["Kill Grab"] then
            local hum = target.Parent:FindFirstChildOfClass("Humanoid")
            if hum and hum.Health > 0 then
                GrabSystem.SetOwner:FireServer(target, target.CFrame)
                hum.Health = 0
            end
        end

        if GrabSystem.ActiveModes["Noclip Grab"] then
            for _, part in ipairs(target.Parent:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end

        if GrabSystem.ActiveModes["Heavy Grab"] then
            local grabModel = GrabSystem.WS:FindFirstChild("GrabParts")
            local dragPart = grabModel and grabModel:FindFirstChild("DragPart")
            if dragPart then
                local ap = dragPart:FindFirstChild("AlignPosition")
                if ap then
                    ap.MaxForce = math.huge
                    ap.Responsiveness = 200
                end
            end
        end
    end)
end

do
    local LP = game:GetService("Players").LocalPlayer
    local RS = game:GetService("ReplicatedStorage")
    local WS = game:GetService("Workspace")
    local UIS = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    
    local Assist = {
        GrabReachEnabled = false,
        GrabReachDist = 25,
        TriggerBotEnabled = false,
        TBReady = true,
        InvisLineEnabled = false,
        ExtendLineEnabled = false,
        LineDistance = 11,
        ExtendStep = 7,
        
        CreateLine = RS:WaitForChild("GrabEvents"):WaitForChild("CreateGrabLine"),
        SetOwner = RS:WaitForChild("GrabEvents"):WaitForChild("SetNetworkOwner")
    }

    local function ApplyGrabReach(range)
        pcall(function()
            RS.DataEvents.UpdateLineColorsEvent:FireServer(ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 195)),
            }))
        end)
        pcall(function()
            for _, conn in pairs(getconnections(RS.GamepassEvents.FurtherReachBoughtNotifier.OnClientEvent)) do
                for i in debug.getupvalues(conn.Function) do
                    debug.setupvalue(conn.Function, i, range)
                end
            end
        end)
    end

    local AssistGroup = Tabs.Grabs:AddLeftGroupbox("Other")

    AssistGroup:AddCheckbox("ReachPassToggle", {
        Text = "Free Gamepass",
        Tooltip = "Gives you 30 studs reach (Client-side logic)",
        Default = false,
        Callback = function(state)
            if state then
                local Reach = Instance.new("BoolValue", LP)
                Reach.Name = "FartherReach"
                Reach.Value = true
                local Notifier = RS.GamepassEvents:FindFirstChild("FurtherReachBoughtNotifier")
                if Notifier then
                    for _, connection in ipairs(getconnections(Notifier.OnClientEvent)) do
                        pcall(connection.Function)
                    end
                end
            else
                if LP:FindFirstChild("FartherReach") then LP.FartherReach:Destroy() end
            end
        end
    })

    AssistGroup:AddSlider("GrabReachSlider", {
        Text = "Reach Distance",
        Min = 25, Max = 45, Default = 25, Rounding = 0,
        Callback = function(v)
            Assist.GrabReachDist = v
            if Toggles.GrabReachPassToggle and Toggles.GrabReachPassToggle.Value then
                ApplyGrabReach(v)
            end
        end
    })

    AssistGroup:AddCheckbox("TriggerBotToggle", {
        Text = "Trigger Bot",
        Default = false,
        Callback = function(v) Assist.TriggerBotEnabled = v end
    })

    AssistGroup:AddCheckbox("InvisLineToggle", {
        Text = "Invisible Grab",
        Default = false,
        Callback = function(v) 
            Assist.InvisLineEnabled = v 
            if v then
                task.spawn(function()
                    while Assist.InvisLineEnabled do
                        Assist.CreateLine:FireServer()
                        task.wait()
                    end
                end)
            end
        end
    })

    AssistGroup:AddCheckbox("ExtendLineToggle", {
        Text = "Extend Line",
        Default = false,
        Callback = function(v) Assist.ExtendLineEnabled = v end
    })

    RunService.Heartbeat:Connect(function()
        if Assist.TriggerBotEnabled and Assist.TBReady then
            local cam = workspace.CurrentCamera
            local rayParams = RaycastParams.new()
            rayParams.FilterType = Enum.RaycastFilterType.Exclude
            rayParams.FilterDescendantsInstances = {LP.Character, workspace.Terrain}
            
            local result = workspace:Raycast(cam.CFrame.Position, cam.CFrame.LookVector * 1000, rayParams)
            if result and result.Instance then
                local model = result.Instance:FindFirstAncestorOfClass("Model")
                if model and model:FindFirstChildOfClass("Humanoid") and not WS:FindFirstChild("GrabParts") then
                    Assist.TBReady = false
                    task.spawn(function()
                        pcall(mouse1press)
                        task.wait(1.6)
                        Assist.TBReady = true
                    end)
                end
            end
        end

        if Assist.ExtendLineEnabled then
            local gp = WS:FindFirstChild("GrabParts")
            if gp and gp:FindFirstChild("DragPart") then
                local dp = gp.DragPart
                if not gp:FindFirstChild("DragPart1") then
                    local cloned = dp:Clone()
                    cloned.Name = "DragPart1"
                    if cloned:FindFirstChild("DragAttach") then
                        dp.AlignPosition.Attachment1 = cloned.DragAttach
                    end
                    cloned.Parent = gp
                    dp.AlignPosition.Enabled = false
                    if cloned:FindFirstChild("AlignOrientation") then cloned.AlignOrientation.Enabled = false end
                end
                
                local cam = workspace.CurrentCamera
                local targetPart = gp:FindFirstChild("DragPart1")
                if targetPart then
                    targetPart.Position = cam.CFrame.Position + cam.CFrame.LookVector * Assist.LineDistance
                end
            end
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if Assist.ExtendLineEnabled and input.UserInputType == Enum.UserInputType.MouseWheel then
            if input.Position.Z > 0 then
                Assist.LineDistance = Assist.LineDistance + Assist.ExtendStep
            else
                Assist.LineDistance = math.max(5, Assist.LineDistance - Assist.ExtendStep)
            end
        end
    end)
end

do
    local AnchorSys = {
        AnchoredObjects = {},
        CompiledGroups = {},
        AutoRecover = false,
        ESP = { Anchored = false },
        Settings = {
            LineTrans = 0, SurfTrans = 0.5,
            AnchoredLine = Color3.fromRGB(194, 194, 194), 
            AnchoredSurf = Color3.fromRGB(209, 0, 0),
        }
    }

    local WS = game:GetService("Workspace")
    local LP = game:GetService("Players").LocalPlayer
    local RS = game:GetService("ReplicatedStorage")
    local SetOwnerRE = RS:WaitForChild("GrabEvents"):WaitForChild("SetNetworkOwner")
    local Mouse = LP:GetMouse()

    local function getTarget()
        local gp = WS:FindFirstChild("GrabParts")
        local weld = gp and gp:FindFirstChild("GrabPart") and gp.GrabPart:FindFirstChildOfClass("WeldConstraint")
        if weld and weld.Part1 then return weld.Part1 end
        
        local target = Mouse.Target
        if target and not target.Anchored and not target:IsDescendantOf(WS.Map) then
            return target
        end
        return nil
    end

    function AnchorSys:CreateStickGroup()
        local primary = getTarget()
        if not primary or not primary.Parent then return end
        local pModel = primary.Parent
        local group = { Name = "Group " .. (#self.CompiledGroups + 1), Primary = pModel, Items = {} }

        for model, data in pairs(self.AnchoredObjects) do
            if model ~= pModel then
                local offset = primary.CFrame:ToObjectSpace(data.Part.CFrame)
                table.insert(group.Items, {Model = model, Part = data.Part, Offset = offset, BP = data.BP, BG = data.BG})
                model:SetAttribute("Glue", true)
                if data.SB then data.SB.Color3 = Color3.fromRGB(255, 0, 57) end
            else
                model:SetAttribute("GluePrimary", true)
                if data.SB then data.SB.Color3 = Color3.fromRGB(123, 85, 38) end
            end
        end
        table.insert(self.CompiledGroups, group)
    end

    function AnchorSys:ProcessAnchor(part)
        if not part then return end
        local model = (part.Parent:IsA("Model") or part.Parent:IsA("Folder")) and part.Parent or part
        
        if model:GetAttribute("IsAnchored") then
            local data = self.AnchoredObjects[model]
            if data then
                pcall(function() 
                    if data.BP then data.BP:Destroy() end
                    if data.BG then data.BG:Destroy() end
                    if data.SB then data.SB:Destroy() end
                end)
                for _, c in pairs(data.Conns or {}) do c:Disconnect() end
                if model:FindFirstChild("ESP_Anchored") then model.ESP_Anchored:Destroy() end
                
                model:SetAttribute("IsAnchored", false)
                model:SetAttribute("Glue", false)
                model:SetAttribute("GluePrimary", false)
                self.AnchoredObjects[model] = nil
            end
        else
            local bp = Instance.new("BodyPosition", part)
            local bg = Instance.new("BodyGyro", part)
            local sb = Instance.new("SelectionBox", model)
            
            bp.MaxForce = Vector3.new(1e9, 1e9, 1e9)
            bg.MaxTorque = Vector3.new(1e9, 1e9, 1e9)
            bp.P, bg.P = 40000, 40000
            bp.Position, bg.CFrame = part.Position, part.CFrame
            
            sb.Name = "ObjectState"
            sb.Adornee = model
            sb.SurfaceTransparency = self.Settings.SurfTrans
            sb.Transparency = self.Settings.LineTrans
            sb.Color3 = self.Settings.AnchoredLine
            sb.SurfaceColor3 = self.Settings.AnchoredSurf

            local data = {BP = bp, BG = bg, SB = sb, Conns = {}, Part = part, Model = model}
            
            table.insert(data.Conns, model.DescendantAdded:Connect(function(d)
                if d.Name == "PartOwner" then
                    bp.MaxForce = (d.Value == LP.Name) and Vector3.new(1e9, 1e9, 1e9) or Vector3.zero
                end
            end))

            model:SetAttribute("IsAnchored", true)
            self.AnchoredObjects[model] = data
            
            if self.ESP.Anchored then
                local h = Instance.new("Highlight", model)
                h.Name = "ESP_Anchored"
                h.FillColor, h.OutlineColor = self.Settings.AnchoredLine, self.Settings.AnchoredSurf
                h.FillTransparency = 0.5
            end
        end
    end

    local MainBox = Tabs.Anchor:AddLeftGroupbox("Anchor Controls")
    local GroupBox = Tabs.Anchor:AddRightGroupbox("Stick Groups")
    local VisualBox = Tabs.Anchor:AddLeftGroupbox("Appearance")

    MainBox:AddLabel("Anchor/Unanchor Object"):AddKeyPicker("AnchorKey", { 
        Default = "K", 
        SyncToggleState = false, 
        Mode = "Press", 
        Text = "Anchor Key",
        Callback = function() AnchorSys:ProcessAnchor(getTarget()) end 
    })

    MainBox:AddCheckbox("AutoRecover", { Text = "Auto Recover Parts", Default = false, Callback = function(v) AnchorSys.AutoRecover = v end })
    MainBox:AddCheckbox("ESPAnchored", { Text = "ESP Highlight", Default = false, Callback = function(v) AnchorSys.ESP.Anchored = v end })
    
    MainBox:AddButton({ Text = "Unanchor All", Func = function()
        for m, data in pairs(AnchorSys.AnchoredObjects) do AnchorSys:ProcessAnchor(data.Part) end
    end })

    GroupBox:AddLabel("Stick Held to Anchored"):AddKeyPicker("StickGroupKey", {
        Default = "None",
        SyncToggleState = false,
        Mode = "Press",
        Text = "Stick Key",
        Callback = function() AnchorSys:CreateStickGroup() end
    })

    GroupBox:AddButton({ Text = "Stick Now (Manual)", Func = function() AnchorSys:CreateStickGroup() end })

    VisualBox:AddSlider("AnchorLineTrans", { Text = "Line Transparency", Min = 0, Max = 1, Default = 0, Rounding = 2, Callback = function(v)
        AnchorSys.Settings.LineTrans = v
        for _, d in pairs(AnchorSys.AnchoredObjects) do if d.SB then d.SB.Transparency = v end end
    end })

    VisualBox:AddLabel("Main Color"):AddColorPicker("AnchoredCol", { Default = Color3.fromRGB(194, 194, 194), Callback = function(v)
        AnchorSys.Settings.AnchoredLine = v
        for m, d in pairs(AnchorSys.AnchoredObjects) do if d.SB and not m:GetAttribute("Glue") then d.SB.Color3 = v end end
    end })

    game:GetService("RunService").Heartbeat:Connect(function()
        for _, group in ipairs(AnchorSys.CompiledGroups) do
            local pPart = group.Primary.PrimaryPart or group.Primary:FindFirstChildOfClass("BasePart")
            if pPart then
                for _, item in ipairs(group.Items) do
                    if item.BP and item.BG then
                        item.BP.Position = (pPart.CFrame * item.Offset).Position
                        item.BG.CFrame = pPart.CFrame * item.Offset
                    end
                end
            end
        end

        if AnchorSys.AutoRecover then
            local root = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
            if root then
                for _, data in pairs(AnchorSys.AnchoredObjects) do
                    local po = data.Part:FindFirstChild("PartOwner")
                    if not po or po.Value ~= LP.Name then
                        if (root.Position - data.Part.Position).Magnitude < 30 then
                            SetOwnerRE:FireServer(data.Part, data.Part.CFrame)
                        end
                    end
                end
            end
        end
    end)
end

do
    local TeleSystem = {
        Locations = {
            Spawn = Vector3.new(0, -7.35, 0),
            SpawnCave = Vector3.new(-90, 14.6, -314.3),
            GreenHouse = Vector3.new(-538, -7, 74),
            PinkHouse = Vector3.new(-478, -7, -147),
            Barn = Vector3.new(-228, 82, -318),
            BlueHouse = Vector3.new(496, 83, -350),
            ChineseHouse = Vector3.new(542, 123, -93),
            PurpleHouse = Vector3.new(270, -7, 448),
            Factory = Vector3.new(134, 347, 352),
            Prison = Vector3.new(195, -7, -561),
            Beach = Vector3.new(-546.97, -5.3, -41.09)
        },
        PlotNames = {"Any", "Plot 1", "Plot 2", "Plot 3", "Plot 4", "Plot 5"},
        SelectedLoc = "Spawn",
        SelectedClaimTarget = "Any",
        FarmActive = false,
        AutoClaimActive = false,
        LoopHomeActive = false
    }

    local LP = game:GetService("Players").LocalPlayer
    local RS = game:GetService("ReplicatedStorage")
    local WS = game:GetService("Workspace")

    local function getMyPlot()
        for i = 1, 5 do
            local plot = WS.Plots:FindFirstChild("Plot"..i)
            if plot then
                for _, v in ipairs(plot.PlotSign.ThisPlotsOwners:GetChildren()) do
                    if v.Value == LP.Name then return plot end
                end
            end
        end
        return nil
    end

    local function doTeleport(pos)
        local char = LP.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        if hrp then
            hrp.CFrame = CFrame.new(pos + Vector3.new(0, 3, 0))
            hrp.AssemblyLinearVelocity = Vector3.zero
        end
    end

    local LocGroup = Tabs.Teleport:AddLeftGroupbox("Teleport To Location")
    local FarmGroup = Tabs.Teleport:AddLeftGroupbox("Farm Coins")
    local PlotGroup = Tabs.Teleport:AddRightGroupbox("Plot Management")

    LocGroup:AddDropdown("LocDropdown", {
        Text = "Select Destination",
        Values = (function() local t={} for k,_ in pairs(TeleSystem.Locations) do table.insert(t,k) end table.sort(t) return t end)(),
        Default = "Spawn",
        Callback = function(v) TeleSystem.SelectedLoc = v end
    })
    LocGroup:AddButton("Teleport Now", function() doTeleport(TeleSystem.Locations[TeleSystem.SelectedLoc]) end)

    FarmGroup:AddCheckbox("AutoFarmCoins", {
        Text = "Auto Spin Slots (0:00)",
        Default = false,
        Callback = function(v) TeleSystem.FarmActive = v end
    })

    PlotGroup:AddDropdown("ClaimTarget", {
        Text = "Plot to Claim",
        Values = TeleSystem.PlotNames,
        Default = "Any",
        Callback = function(v) TeleSystem.SelectedClaimTarget = v end
    })

    PlotGroup:AddCheckbox("AutoClaimPlot", {
        Text = "Auto Claim Selected",
        Default = false,
        Callback = function(v) TeleSystem.AutoClaimActive = v end
    })

    PlotGroup:AddDivider()


    task.spawn(function()
        while true do
            if TeleSystem.FarmActive then
                pcall(function()
                    local timer = WS.Slots.Slots.Screen.SlotGui.TimeLeftFrame.TimeText.Text
                    if timer == "0:00" then
                        local handle = WS.Slots.Slots.SlotHandle.Handle
                        local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            local oldCF = hrp.CFrame
                            hrp.CFrame = handle.CFrame
                            task.wait(0.2)
                            RS.GrabEvents.SetNetworkOwner:FireServer(handle, handle.CFrame)
                            task.wait(0.2)
                            hrp.CFrame = oldCF
                        end
                    end
                end)
            end
            task.wait(1)
        end
    end)

    task.spawn(function()
        while true do
            if TeleSystem.AutoClaimActive then
                if not getMyPlot() then
                    local targetStr = TeleSystem.SelectedClaimTarget
                    for i = 1, 5 do
                        local pName = "Plot"..i
                        if targetStr == "Any" or targetStr == "Plot "..i then
                            local plot = WS.Plots:FindFirstChild(pName)
                            if plot and #plot.PlotSign.ThisPlotsOwners:GetChildren() == 0 then
                                local part = plot.PlotSign.Sign.Plus.PlusGrabPart
                                doTeleport(part.Position)
                                task.wait(0.3)
                                RS.GrabEvents.SetNetworkOwner:FireServer(part, part.CFrame)
                                break
                            end
                        end
                    end
                end
            end
            task.wait(2)
        end
    end)

    task.spawn(function()
        while true do
            if TeleSystem.LoopHomeActive then
                local myPlot = getMyPlot()
                if myPlot then
                    local hrp = LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
                    if hrp then
                        local targetPos = myPlot.Base.Position + Vector3.new(0, 5, 0)
                        if (hrp.Position - targetPos).Magnitude > 5 then
                            hrp.CFrame = CFrame.new(targetPos)
                            hrp.AssemblyLinearVelocity = Vector3.zero
                        end
                    end
                end
            end
            task.wait(0.1)
        end
    end)
end

do
    local GrabVisuals = {
        LineConfig = {
            SelectedTexture = "rbxassetid://8933346550",
            Color1 = Color3.fromRGB(255, 255, 255),
            Color2 = Color3.fromRGB(255, 255, 255),
            Rainbow = false,
            Width = 1,
            Speed = 1,
            Length = 1
        },
        Textures = {
            ["Default"] = "rbxassetid://8933346550",
            ["Chain"] = "rbxassetid://81358145120405",
            ["Rope"] = "rbxassetid://78999022056924",
            ["Lazar"] = "rbxassetid://8922958725",
            ["Spider Web"] = "rbxassetid://123815660139244",
            ["Electric"] = "rbxassetid://82163767314193"
        }
    }

    local RS = game:GetService("ReplicatedStorage")
    local LP = game:GetService("Players").LocalPlayer
    local RunService = game:GetService("RunService")

    function GrabVisuals:ApplyToBeam(beam)
        if not beam or not beam:IsA("Beam") then return end
        beam.Texture = self.LineConfig.SelectedTexture
        beam.Width0 = self.LineConfig.Width
        beam.Width1 = self.LineConfig.Width
        beam.TextureSpeed = self.LineConfig.Speed
        beam.TextureLength = self.LineConfig.Length
        
        if self.LineConfig.Rainbow then
            local hue = (tick() % 5) / 5
            beam.Color = ColorSequence.new(Color3.fromHSV(hue, 1, 1))
        else
            beam.Color = ColorSequence.new(self.LineConfig.Color1, self.LineConfig.Color2)
        end
    end

    local LineGroup = Tabs.Grabs:AddRightGroupbox("Line Customization")

    LineGroup:AddDropdown("LineTexture", {
        Text = "Line Texture",
        Values = {"Default", "Chain", "Rope", "Lazar", "Spider Web", "Electric"},
        Default = "Default",
        Callback = function(v) GrabVisuals.LineConfig.SelectedTexture = GrabVisuals.Textures[v] end
    })

    LineGroup:AddLabel("Start Color"):AddColorPicker("LineCol1", {
        Default = Color3.fromRGB(255, 255, 255),
        Callback = function(v) GrabVisuals.LineConfig.Color1 = v end
    })

    LineGroup:AddLabel("End Color"):AddColorPicker("LineCol2", {
        Default = Color3.fromRGB(255, 255, 255),
        Callback = function(v) GrabVisuals.LineConfig.Color2 = v end
    })

    LineGroup:AddCheckbox("LineRainbow", {
        Text = "Rainbow Line",
        Default = false,
        Callback = function(v) GrabVisuals.LineConfig.Rainbow = v end
    })

    LineGroup:AddSlider("LineWidth", { Text = "Width", Min = 0.1, Max = 10, Default = 1, Rounding = 1, Callback = function(v) GrabVisuals.LineConfig.Width = v end })
    LineGroup:AddSlider("LineSpeed", { Text = "Speed", Min = 0, Max = 20, Default = 1, Rounding = 1, Callback = function(v) GrabVisuals.LineConfig.Speed = v end })

    RunService.Heartbeat:Connect(function()
        local gp = workspace:FindFirstChild("GrabParts")
        if gp then
            local beam = gp:FindFirstChild("GrabBeam", true)
            if beam then GrabVisuals:ApplyToBeam(beam) end
        end
    end)
end

do
    local MovementSys = {
        Speed = 16,
        SpeedEnabled = false,
        Jump = 50,
        JumpEnabled = false,
        InfJump = false,
        FlyEnabled = false,
        FlySpeed = 100,
        WaterWalkEnabled = false,
        BV = nil,
        BG = nil
    }

    local LP = game:GetService("Players").LocalPlayer
    local RunService = game:GetService("RunService")
    local UIS = game:GetService("UserInputService")

    local function setWaterCollision(state)
        pcall(function()
            local oceanModel = workspace.Map.AlwaysHereTweenedObjects.Ocean.Object.ObjectModel
            for _, part in ipairs(oceanModel:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = state
                end
            end
        end)
    end

    function MovementSys:HandleFly()
        local char = LP.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        
        if not root or not hum then return end

        if self.FlyEnabled then
            if not self.BV then
                self.BV = Instance.new("BodyVelocity", root)
                self.BV.MaxForce = Vector3.new(1e9, 1e9, 1e9)
            end
            if not self.BG then
                self.BG = Instance.new("BodyGyro", root)
                self.BG.MaxTorque = Vector3.new(1e9, 1e9, 1e9)
                self.BG.D = 100
            end

            local cam = workspace.CurrentCamera
            local moveDir = Vector3.zero

            if UIS:IsKeyDown(Enum.KeyCode.W) then moveDir += cam.CFrame.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.S) then moveDir -= cam.CFrame.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.A) then moveDir -= cam.CFrame.RightVector end
            if UIS:IsKeyDown(Enum.KeyCode.D) then moveDir += cam.CFrame.RightVector end
            if UIS:IsKeyDown(Enum.KeyCode.Space) then moveDir += Vector3.new(0, 1, 0) end
            if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then moveDir -= Vector3.new(0, 1, 0) end

            self.BV.Velocity = moveDir * self.FlySpeed
            self.BG.CFrame = cam.CFrame
            hum.PlatformStand = true
        else
            if self.BV then self.BV:Destroy() self.BV = nil end
            if self.BG then self.BG:Destroy() self.BG = nil end
            hum.PlatformStand = false
        end
    end

    local MoveGroup = Tabs.Player:AddLeftGroupbox("Movement")

    MoveGroup:AddCheckbox("SpeedTog", { 
        Text = "Walkspeed", 
        Default = false, 
        Callback = function(v) MovementSys.SpeedEnabled = v end 
    }):AddKeyPicker("SpeedKey", { 
        Default = "V", 
        SyncToggleState = true, 
        Mode = "Toggle", 
        Text = "Walkspeed", 
        NoUI = false 
    })

    MoveGroup:AddSlider("SpeedVal", { Text = "Speed Value", Min = 16, Max = 500, Default = 16, Rounding = 0, Callback = function(v) MovementSys.Speed = v end })

    MoveGroup:AddDivider()
--deobf by cimkarta https://discord.gg/S8BQWyjyvN
    MoveGroup:AddCheckbox("FlyTog", { 
        Text = "Flight", 
        Default = false, 
        Callback = function(v) MovementSys.FlyEnabled = v end 
    }):AddKeyPicker("FlyKey", { 
        Default = "F", 
        SyncToggleState = true, 
        Mode = "Toggle", 
        Text = "Flight", 
        NoUI = false 
    })

    MoveGroup:AddSlider("FlySpeedVal", { Text = "Flight Speed", Min = 10, Max = 1000, Default = 100, Rounding = 0, Callback = function(v) MovementSys.FlySpeed = v end })

    MoveGroup:AddDivider()

    MoveGroup:AddCheckbox("JumpTog", { Text = "Jump Power", Default = false, Callback = function(v) MovementSys.JumpEnabled = v end })
    MoveGroup:AddSlider("JumpVal", { Text = "Jump Value", Min = 50, Max = 500, Default = 50, Rounding = 0, Callback = function(v) MovementSys.Jump = v end })
    MoveGroup:AddCheckbox("InfJumpTog", { Text = "Infinite Jump", Default = false, Callback = function(v) MovementSys.InfJump = v end })

    MoveGroup:AddDivider()

    MoveGroup:AddCheckbox("WaterWalkTog", { 
        Text = "Water Walk", 
        Default = false, 
        Callback = function(v) 
            MovementSys.WaterWalkEnabled = v 
            setWaterCollision(v)
        end 
    })

    RunService.Heartbeat:Connect(function()
        local char = LP.Character
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        if not hum then return end

        if MovementSys.SpeedEnabled then
            local root = char:FindFirstChild("HumanoidRootPart")
            if root then
                local dir = hum.MoveDirection
                if dir.Magnitude > 0 then
                    root.AssemblyLinearVelocity = Vector3.new(dir.X * MovementSys.Speed, root.AssemblyLinearVelocity.Y, dir.Z * MovementSys.Speed)
                end
            end
        end

        if MovementSys.JumpEnabled then
            hum.JumpPower = MovementSys.Jump
            hum.UseJumpPower = true
        end

        MovementSys:HandleFly()
    end)

    UIS.JumpRequest:Connect(function()
        if MovementSys.InfJump and LP.Character and LP.Character:FindFirstChildOfClass("Humanoid") then
            LP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)

    LP.CharacterAdded:Connect(function()
        if MovementSys.WaterWalkEnabled then
            task.wait(1)
            setWaterCollision(true)
        end
    end)
end

SaveManager:LoadAutoloadConfig()
print("The Revenge loaded")

--deobf by cimkarta https://discord.gg/S8BQWyjyvN

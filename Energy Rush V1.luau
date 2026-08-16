--

--

--
print("Energy Rush")--
--
print("by Stratus_bl")--
--

--

--i didnt script this very well but its fine

local Vec3=Vector3.new;
local cFrame=CFrame.new;
local cfnew=CFrame.new;
local v3n=Vector3.new;
local cf=CFrame.new;
local Euler=CFrame.fromEulerAnglesXYZ;
local radian=math.rad;
local random=math.random;
local strsub=string.sub;
local strfin=string.find;
local strlwr=string.lower;
local strupr=string.upper;
local cam=workspace.CurrentCamera;
local bcolor=BrickColor.new;
local colror=Color3.new;
local plrs=game.Players;
local plr=plrs.LocalPlayer;
local mouse=plr:GetMouse();
local char=plr.Character;
local hum=char:WaitForChild("Humanoid");
local tors=char.Torso;
local lleg=char["Left Leg"];
local root=char.HumanoidRootPart;
local hed=char.Head;
local rleg=char["Right Leg"];
local rarm=char["Right Arm"];
local larm=char["Left Arm"];
local RW, LW=Instance.new("Weld"), Instance.new("Weld");
RW.Name="Right Shoulder"
RW.Part0=char.Torso 
RW.C0=cf(1.5, 0.5, 0)
RW.C1=cf(0, 0.5, 0) 
RW.Part1=char["Right Arm"] 
RW.Parent=char.Torso 
LW.Name="Left Shoulder"
LW.Part0=char.Torso 
LW.C0=cf(-1.5, 0.5, 0)
LW.C1=cf(0, 0.5, 0) 
LW.Part1=char["Left Arm"] 
LW.Parent=char.Torso 
local LH=tors["Left Hip"];
local RH=tors["Right Hip"];
local RootJoint=root.RootJoint;
local cellservice=game:GetService("RunService");
local attacktypecurrent=1;
local attack=false;
local ArtificialHB = Instance.new("BindableEvent",script);
ArtificialHB.Name="Heartbeat";
local tf=0;
local frame = 1/60;
local tossremainder=true;
local allowframeloss=false;
local lastframe = tick();
game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, num do
			ArtificialHB.Event:wait()
		end
	end
end


local blockyavatar=true;

if(blockyavatar)then
	for _,v in pairs(char:GetDescendants()) do
		if v:IsA("CharacterMesh") then
			v:Remove()
		end
	end
else
	return
end

function lerp(object, newCFrame, alpha)
	return object:lerp(newCFrame, alpha)
end

function CameraEnshaking(Length,Intensity)
	coroutine.resume(coroutine.create(function()
		local intensity = 1*Intensity
		local rotM = 0.01*Intensity
		for i = 0, Length, 0.1 do
			swait()
			intensity = intensity - 0.05*Intensity/Length
			rotM = rotM - 0.0005*Intensity/Length
			hum.CameraOffset = Vec3(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity)))
			cam.CFrame = cam.CFrame * cFrame(radian(random(-intensity, intensity)), radian(random(-intensity, intensity)), radian(random(-intensity, intensity))) * Euler(radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM, radian(random(-intensity, intensity)) * rotM)
		end
		Humanoid.CameraOffset = Vec3(0, 0, 0)
	end))
end

function QuaternionFromCFrame(cf) 
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
	local trace = m00 + m11 + m22 
	if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5/s 
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
	else 
		local i = 0 
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
			i = 2 
		end 
		if i == 0 then 
			local s = math.sqrt(m00-m11-m22+1) 
			local recip = 0.5/s 
			return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
		elseif i == 1 then 
			local s = math.sqrt(m11-m22-m00+1) 
			local recip = 0.5/s 
			return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
		elseif i == 2 then 
			local s = math.sqrt(m22-m00-m11+1) 
			local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
		end 
	end 
end

function QuaternionToCFrame(px, py, pz, x, y, z, w) 
	local xs, ys, zs = x + x, y + y, z + z 
	local wx, wy, wz = w*xs, w*ys, w*zs 
	local xx = x*xs 
	local xy = x*ys 
	local xz = x*zs 
	local yy = y*ys 
	local yz = y*zs 
	local zz = z*zs 
	return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end

function QuaternionSlerp(a, b, t) 
	local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
			local theta = math.acos(cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((1-t)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta  
		else 
			startInterp = 1-t 
			finishInterp = t 
		end 
	else 
		if (1+cosTheta) > 0.0001 then 
			local theta = math.acos(-cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((t-1)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta 
		else 
			startInterp = t-1 
			finishInterp = t 
		end 
	end 
	return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function clerp(a,b,t) 
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1-t
	return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 

function FaceMouse()
	local Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end
local Create = function(instance,properties)
	local inst = Instance.new(instance)
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end
local vt=Vector3.new;
function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part",{
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			})
			RemoveOutlines(Part)
			return Part
		end;
	};

	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh,{
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			})
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};

	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld",{
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			})
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound",{
					Volume = vol,
					Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				})
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};

	["TimeSound"] = {
		Create = function(id, par, vol, pit, timepos) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound",{
					Volume = vol,
					Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
					TimePosition = timepos,
					Parent = par or workspace,
				})
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
	["EchoSound"] = {
		Create = function(id, par, vol, pit, timepos,delays,echodelay,fedb,dryl) 
			coroutine.resume(coroutine.create(function()
				local Sas = Create("Sound",{
					Volume = vol,
					Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
					TimePosition = timepos,
					Parent = par or workspace,
				})
				local E = Create("EchoSoundEffect",{
					Delay = echodelay,
					Name = "Echo",
					Feedback = fedb,
					DryLevel = dryl,
					Parent = Sas,
				})
				wait() 
				Sas:play() 
				game:GetService("Debris"):AddItem(Sas, delays)
			end))
		end;
	};

	["LongSound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound",{
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				})
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 60)
			end))
		end;
	};

	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter",{
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			})
			return fp
		end;
	};

	CreateTemplate = {

	};
}

function chatfunc(text,color)
	local chat = coroutine.wrap(function()
		if char:FindFirstChild("TalkingBillBoard")~= nil then
			char:FindFirstChild("TalkingBillBoard"):destroy()
		end
		local naeeym2 = Instance.new("BillboardGui",char)
		naeeym2.Size = UDim2.new(0,100,0,40)
		naeeym2.StudsOffset = Vector3.new(0,3,0)
		naeeym2.Adornee = char.Head
		naeeym2.Name = "TalkingBillBoard"
		local tecks2 = Instance.new("TextLabel",naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = "SciFi"
		tecks2.TextSize = 30
		tecks2.TextStrokeTransparency = 0
		tecks2.TextColor3 = color
		tecks2.TextStrokeColor3 = Color3.new(0,0,0)
		tecks2.Size = UDim2.new(1,0,0.5,0)
		local tecks3 = Instance.new("TextLabel",naeeym2)
		tecks3.BackgroundTransparency = 1
		tecks3.BorderSizePixel = 0
		tecks3.Text = ""
		tecks3.Font = "SciFi"
		tecks3.TextSize = 30
		tecks3.TextStrokeTransparency = 0
		tecks3.TextColor3 = Color3.new(0,0,0)
		tecks3.TextStrokeColor3 = color
		tecks3.Size = UDim2.new(1,0,0.5,0)
		for i = 1,string.len(text),1 do
			CFuncs["Sound"].Create("rbxassetid://274118116", char, 0.25, 0.115)
			tecks2.Text = string.sub(text,1,i)
			tecks3.Text = string.sub(text,1,i)
			swait(1)
		end
		wait(1)
		local randomrot = math.random(1,2)
		if randomrot == 1 then
			for i = 1, 50 do
				swait()
				tecks2.Rotation = tecks2.Rotation - .75
				tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
				tecks2.TextTransparency = tecks2.TextTransparency + .04
				tecks3.Rotation = tecks2.Rotation + .75
				tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
				tecks3.TextTransparency = tecks2.TextTransparency + .04
			end
		elseif randomrot == 2 then
			for i = 1, 50 do
				swait()
				tecks2.Rotation = tecks2.Rotation + .75
				tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
				tecks2.TextTransparency = tecks2.TextTransparency + .04
				tecks3.Rotation = tecks2.Rotation - .75
				tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
				tecks3.TextTransparency = tecks2.TextTransparency + .04
			end
		end
		naeeym2:Destroy()
	end)
	chat()
end
local rainbowmode=true;
local kan=Instance.new("Sound",char);
kan.Name="theme";
kan.Pitch=1;
kan.Looped=true;
kan.SoundId="rbxassetid://1836465431";
kan:Play()
--weapon and band create
local gun=Instance.new("Model",char);
gun.Name="gun"
local partaforgun=Instance.new("Part",gun);
partaforgun.Size=Vector3.new(1,1,1);
partaforgun.Anchored=false;
partaforgun.CanCollide=false;
partaforgun.Transparency=0;
local partaweldthing=Instance.new("Weld",partaforgun);
partaweldthing.Part0=rarm;
partaweldthing.Part1=partaforgun;
partaweldthing.C0=CFrame.new(0,-1.55,0);
partaforgun.Orientation=Vector3.new(-90,0,0);
local gunmes=Instance.new("SpecialMesh",partaforgun);
gunmes.MeshId="http://www.roblox.com/asset/?id=130099641";
gunmes.TextureId="http://www.roblox.com/asset?id=140862019";
gunmes.Scale=Vector3.new(0.65,0.65,0.65);
local gunligh=Instance.new("PointLight",partaforgun);
gunligh.Brightness=1;
gunligh.Range=10;
gunligh.Color=Color3.new(1,1,1);
local modellringy=Instance.new("Model",char);
modellringy.Name="band";
local ringycolor=Instance.new("Part",modellringy);
ringycolor.Size=Vector3.new(1.12,0.12,1.12);
ringycolor.Anchored=false;
ringycolor.CanCollide=false;
ringycolor.Transparency=0;
ringycolor.Material=Enum.Material.Neon;
local ringycolorweld=Instance.new("Weld",ringycolor);
ringycolorweld.Part0=larm;
ringycolorweld.Part1=ringycolor;
ringycolorweld.C0=CFrame.new(0,-0.6,0);
local ringycolorjunior=Instance.new("Part",modellringy);
ringycolorjunior.Size=Vector3.new(1.11,0.17,1.11);
ringycolorjunior.Anchored=false;
ringycolorjunior.CanCollide=false;
ringycolorjunior.Transparency=0;
ringycolorjunior.Material=Enum.Material.Granite;
local ringycolorjuniorweld=Instance.new("Weld",ringycolorjunior);
ringycolorjuniorweld.Part0=ringycolor;
ringycolorjuniorweld.Part1=ringycolorjunior;
local ringy2=Instance.new("Part",modellringy);
ringy2.Size=Vector3.new(1.1,0.22,1.1);
ringy2.Anchored=false;
ringy2.CanCollide=false;
ringy2.Transparency=0;
ringy2.Material=Enum.Material.Granite;
ringy2.Color=colror(0,0,0)
local ringy2weld=Instance.new("Weld",ringy2);
ringy2weld.Part0=ringycolor;
ringy2weld.Part1=ringy2;
local ringy3=Instance.new("Part",modellringy);
ringy3.Size=Vector3.new(1.07,0.27,1.07);
ringy3.Anchored=false;
ringy3.CanCollide=false;
ringy3.Transparency=0;
ringy3.Material=Enum.Material.Glass;
ringy3.Color=colror(0,0,0)
local ringy3weld=Instance.new("Weld",ringy3);
ringy3weld.Part0=ringy2;
ringy3weld.Part1=ringy3;
--end of gun and band create
plr.Chatted:Connect(function(mess)
	chatfunc(mess,colror(1,1,1))
end)

local r = 255
local g = 0
local b = 0
coroutine.resume(coroutine.create(function()
	while wait() do
		for i = 0, 254/5 do
			swait()
			g = g + 5
		end
		for i = 0, 254/5 do
			swait()
			r = r - 5
		end
		for i = 0, 254/5 do
			swait()
			b = b + 5
		end
		for i = 0, 254/5 do
			swait()
			g = g - 5
		end
		for i = 0, 254/5 do
			swait()
			r = r + 5
		end
		for i = 0, 254/5 do
			swait()
			b = b - 5
		end
	end
end))
function PixelBlock(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos,heart,invert)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Brick"
	if(heart)then
		rngm.MeshType = Enum.MeshType.FileMesh
		rngm.MeshId = "rbxassetid://105992239"
		rngm.Offset = Vector3.new(0,0,-.25)
	end
	rngm.Scale = vt(x1,y1,z1)
	if rainbowmode == true then
		rng.Color = Color3.new(r/255,g/255,b/255)
	end
	local scaler2 = 1
	local speeder = FastSpeed/10
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if rainbowmode == true then
				rng.Color = Color3.new(r/255,g/255,b/255)
			end
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			speeder = speeder - 0.01*FastSpeed*bonuspeed/10
			if(invert)then rng.CFrame = rng.CFrame - rng.CFrame.lookVector*speeder*bonuspeed else rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed end
			--rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed)
		end
		rng:Destroy()
	end))
end
local MAINRUINCOLOR=BrickColor.new("White");
local bilguit = Instance.new("BillboardGui", hed)
bilguit.Adornee = nil
bilguit.Name = "namebillboardgui"
bilguit.Size = UDim2.new(4, 0, 1.2, 0)
bilguit.StudsOffset = Vector3.new(-8, 8/1.5, 0)
local text = Instance.new("TextLabel", bilguit)
text.Size = UDim2.new(10/2, 0, 7/2, 0)
text.FontSize = "Size8"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = Enum.Font.SciFi
text.TextStrokeColor3 = Color3.new(0, 0, 0)
text.TextColor3 = Color3.new(1, 1, 1)
text.Text = "ENERGY RUSH"
function sphere(bonuspeed,type,pos,scale,value,color,heart,invert,notaffectbychaosrainbow)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Sphere"


	if(heart)then
		rngm.MeshType = Enum.MeshType.FileMesh
		rngm.MeshId = "rbxassetid://105992239"
		rngm.Offset = Vector3.new(0,0,-.25)
	end
	rngm.Scale = scale
	if rainbowmode == true and not notaffectbychaosrainbow then
		rng.Color = Color3.new(r/255,g/255,b/255)
	end
	local scaler2 = 1
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if rainbowmode == true and not notaffectbychaosrainbow then
				rng.Color = Color3.new(r/255,g/255,b/255)
			end
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			if(invert)then
				if(heart)then 
					rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0) 
				else 
					rngm.Scale = rngm.Scale - Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed) 
				end
			else
				if(heart)then 
					rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0) 
				else 
					rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, scaler2*bonuspeed) 
				end
			end
			rng.CFrame = pos
		end
		rng:Destroy()
	end))
end
local necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local angles=CFrame.Angles;
function dmg(dude)
	if dude.Name ~= char then
		local bgf = Instance.new("BodyGyro",dude.Head)
		bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
		local val = Instance.new("BoolValue",dude)
		val.Name = "IsHit"
		local ds = coroutine.wrap(function()
			local torso = dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso'
			for i = 1, 10 do
				sphereMK(1.5,2,"Add",torso.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),1,1,25,-.01,Color3.new(r/255,g/255,b/255),0,true)
			end
			dude:WaitForChild("Head"):BreakJoints()
			wait(0.5)
			targetted = nil
			CFuncs["Sound"].Create("rbxassetid://130113415", char, 0.5, 1)

			coroutine.resume(coroutine.create(function()
				for i, v in pairs(dude:GetChildren()) do
					if v:IsA("Accessory") then
						v:Destroy()
					end
					if v:IsA("Humanoid") then
						v:Destroy()
					end
					if v:IsA("CharacterMesh") then
						v:Destroy()
					end
					if v:IsA("Model") then
						v:Destroy()
					end
					if v:IsA("Part") or v:IsA("MeshPart") then
						for x, o in pairs(v:GetChildren()) do
							if o:IsA("Decal") then
								o:Destroy()
							end
						end
						coroutine.resume(coroutine.create(function()
							v.Material = "Neon"
							v.CanCollide = false
							local bld = Instance.new("ParticleEmitter",v)
							bld.LightEmission = 1
							bld.Texture = "rbxassetid://284205403"
							bld.Color = ColorSequence.new(Color3.new(r/255,g/255,b/255))
							bld.Rate = 50
							bld.Lifetime = NumberRange.new(1)
							bld.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.75,0),NumberSequenceKeypoint.new(1,0,0)})
							bld.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0,0),NumberSequenceKeypoint.new(1,1,0)})
							bld.Speed = NumberRange.new(0,0)
							bld.VelocitySpread = 50000
							bld.Rotation = NumberRange.new(-500,500)
							bld.RotSpeed = NumberRange.new(-500,500)
							local sbs = Instance.new("BodyPosition", v)
							sbs.P = 3000
							sbs.D = 1000
							sbs.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
							sbs.position = v.Position + Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
							v.Color = Color3.new(1,1,1)
							coroutine.resume(coroutine.create(function()
								for i = 0, 49 do
									swait(1)
									v.Transparency = v.Transparency + 0.02
								end
								bld.Speed = NumberRange.new(1,5)
								bld.Acceleration = vt(0,10,0)
								wait(0.5)
								bld.Enabled = false
								wait(3)
								v:Destroy()
								dude:Destroy()
							end))
						end))
					end
				end
			end))
		end)
		ds()
	end
end



function FindNearestHead(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Torso.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("Model") then
			if v:findFirstChild("Head") then
				if v ~= char then
					if (v.Head.CFrame.p - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end
function sphereMKCharge(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 1
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = vt(x1,y1,z1)
	if rainbowmode == true then
		rng.Color = Color3.new(r/255,g/255,b/255)
	end
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if rainbowmode == true then
				rng.Color = Color3.new(r/255,g/255,b/255)
			end
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			speeder = speeder - 0.01*FastSpeed*bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency - 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
		end
		rng:Destroy()
	end))
end
function CorruptBlink()
	attack=true
	hum.WalkSpeed=0
	hum.JumpPower=0
	for i=1,25 do
		swait()
		root.CFrame = FaceMouse()[1]
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(1 / 28))*angles(math.rad(0 - 1 * math.cos(1 / 34)),math.rad(0),math.rad(0)),.1)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(1 / 32)),math.rad(0 + 15 * math.cos(1 / 0.25)),math.rad(-20 - 5 * math.cos(1 / 0.465))),.1)
		RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(90),math.rad(-10),math.rad(5 + 2.5 * math.cos(1 / 25))),.1)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(15 - 15 * math.cos(1 / 0.5265)),math.rad(0 - 15 * math.cos(1 / 0.25)),math.rad(0 - 15 * math.cos(1 / 0.465)))*angles(math.rad(math.random(5,15)),math.rad(5),math.rad(-15 - 7.5 * math.cos(1 / 12.5))),.1)
	end
	CFuncs["Sound"].Create("rbxassetid://130113322",partaforgun,10,1)
	for i = 0, 14 do
		PixelBlock(3,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,MAINRUINCOLOR,0)
	end
	sphere(10,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
	root.CFrame = mouse.Hit *CFrame.new(0,2,0)
	CameraEnshaking(2,10)
	for i = 0, 14 do
		PixelBlock(3,math.random(4,8),"Add",root.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,MAINRUINCOLOR,0)
	end
	sphere(10,"Add",root.CFrame,vt(0,0,0),1,MAINRUINCOLOR)
	for i=1,50 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(1 / 28))*angles(math.rad(0 - 1 * math.cos(1 / 34)),math.rad(0),math.rad(0)),.1)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(1 / 32)),math.rad(0 + 15 * math.cos(1 / 0.25)),math.rad(-20 - 5 * math.cos(1 / 0.465))),.1)
		RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(90),math.rad(-30),math.rad(-40 - 10 * math.cos(1 / 25))),.1)
		LW.C0=clerp(LW.C0,cf(-0.85,0.5 + 0.05 * math.cos(1 / 28),-0.65)*angles(math.rad(40 - 1 * math.cos(1 / 34)),math.rad(60),math.rad(90 + 2.5 * math.cos(1 / 28))),.1)
	end
	CFuncs["Sound"].Create("rbxassetid://130113370",partaforgun,10,1)
	attack=false
	hum.WalkSpeed=16
	hum.JumpPower=50
end

function shoot()
	attack=true;
	hum.WalkSpeed=0;
	hum.JumpPower=0;
	CFuncs["Sound"].Create("rbxassetid://136007472", root, 2.5, 1.25)
	for i=1,45 do
		swait()
		root.CFrame=FaceMouse()[1]
		sphereMKCharge(5,-0.25,"Add",partaforgun.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,5,-0.005,BrickColor.new("White"),10)
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(1 / 28))*angles(math.rad(0 - 1 * math.cos(1 / 34)),math.rad(0),math.rad(0)),.1)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(1 / 32)),math.rad(0 + 15 * math.cos(1 / 0.25)),math.rad(-20 - 5 * math.cos(1 / 0.465))),.1)
		RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(90),math.rad(-10),math.rad(5 + 2.5 * math.cos(1 / 25))),.1)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(15 - 15 * math.cos(1 / 0.5265)),math.rad(0 - 15 * math.cos(1 / 0.25)),math.rad(0 - 15 * math.cos(1 / 0.465)))*angles(math.rad(math.random(5,15)),math.rad(5),math.rad(-15 - 7.5 * math.cos(1 / 12.5))),.1)
	end
	CFuncs["Sound"].Create("rbxassetid://130113322",partaforgun,10,1)
	for i = 0, 14 do
		PixelBlock(3,math.random(4,8),"Add",mouse.Hit*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,MAINRUINCOLOR,0)
	end
	sphere(10,"Add",mouse.Hit,vt(0,0,0),1,MAINRUINCOLOR)
	for i = 0, 14 do
		PixelBlock(3,math.random(4,8),"Add",mouse.Hit*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),3,3,3,0.03,MAINRUINCOLOR,0)
	end
	sphere(10,"Add",mouse.Hit,vt(0,0,0),1,MAINRUINCOLOR)
	for i, v in pairs(FindNearestHead(mouse.Hit.Position, 20)) do
			if v:FindFirstChild('Head') then
				dmg(v)
			end
		end
	for i=1,50 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(1 / 28))*angles(math.rad(0 - 1 * math.cos(1 / 34)),math.rad(0),math.rad(0)),.1)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(1 / 32)),math.rad(0 + 15 * math.cos(1 / 0.25)),math.rad(-20 - 5 * math.cos(1 / 0.465))),.1)
		RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(90),math.rad(-30),math.rad(-40 - 10 * math.cos(1 / 25))),.1)
		LW.C0=clerp(LW.C0,cf(-0.85,0.5 + 0.05 * math.cos(1 / 28),-0.65)*angles(math.rad(40 - 1 * math.cos(1 / 34)),math.rad(60),math.rad(90 + 2.5 * math.cos(1 / 28))),.1)
	end
	CFuncs["Sound"].Create("rbxassetid://130113370",partaforgun,10,1)
	attack=false;
	hum.WalkSpeed=16;
	hum.JumpPower=50;
end

function rainbowifygunandnameandstuff()
	gunligh.Color=colror(r/255,g/255,b/255)
	gunmes.VertexColor=Vector3.new(r/255,g/255,b/255)
	text.TextColor3=colror(r/255,g/255,b/255)
	ringycolor.Color=colror(r/255,g/255,b/255)
	ringycolorjunior.Color=colror(r/255,g/255,b/255)
end

local RootPart=char:WaitForChild("HumanoidRootPart");
local angles=CFrame.Angles;

Humanoid=hum
local CamInterrupt = false
local TwoD = false
local TargetInfo = {nil, nil}
local Booleans = {
	CamFollow = true,
	GyroUse = true
}
Camera=cam
local CPart = Instance.new("Part")
CPart.Anchored = true
CPart.CanCollide = false
CPart.Locked = true
CPart.Transparency = 1
Hum=hum
hum.Animator.Parent = nil
function CameraManager()
	if TwoD and not CamInterrupt then
		if Humanoid.Health > 0 then
			Camera.CameraSubject = Humanoid
			Camera.CameraType = "Scriptable"
			Humanoid.AutoRotate = false
			if Booleans.GyroUse then
				Directer.MaxTorque = Vec3(0, math.huge, 0)
			else
				Directer.MaxTorque = Vec3(0, 0, 0)
			end
			if TargetInfo[1] ~= nil and TargetInfo[2] ~= nil then
				if Booleans.CamFollow then
					CPart.CFrame = cFrame(RootPart.Position, Vec3(TargetInfo[1].Position.X, RootPart.Position.Y, TargetInfo[1].Position.Z))
					Directer.CFrame = cFrame((RootPart.CFrame * cFrame(0, 0, 10)).p, TargetInfo[1].Position)
				else
					CPart.Position = RootPart.Position
				end
			else
				local ahead = (RootPart.CFrame * cFrame(0, 0, -3)).p
				CPart.CFrame = cFrame(RootPart.Position, Vec3(ahead.X, RootPart.Position.Y, ahead.Z))
			end
			Camera.CFrame = lerp(Camera.CFrame, CPart.CFrame * cFrame(25, 3, 0) * Euler(0, radian(90), 0), 0.2)
		else
			Camera.CameraSubject = Humanoid
			Camera.CameraType = "Custom"
		end
	end
end

function taunt()
	attack=true;
	hum.WalkSpeed=0;
	hum.JumpPower=0;
	CFuncs["Sound"].Create("rbxassetid://7649721525",hed,1,1);
	chatfunc("Ahahahahahahahaaaaaaah........",colror(1,1,1));
	for i=1,125 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(1 / 28))*angles(math.rad(0 - 1 * math.cos(1 / 34)),math.rad(0),math.rad(0)),.1)
		tors.Neck.C0=clerp(tors.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(1 / 32)),math.rad(0 + 15 * math.cos(1 / 0.25)),math.rad(-20 - 5 * math.cos(1 / 0.465))),.1)
		RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(90),math.rad(-10),math.rad(5 + 2.5 * math.cos(1 / 25))),.1)
		LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(15 - 15 * math.cos(1 / 0.5265)),math.rad(0 - 15 * math.cos(1 / 0.25)),math.rad(0 - 15 * math.cos(1 / 0.465)))*angles(math.rad(math.random(5,15)),math.rad(5),math.rad(-15 - 7.5 * math.cos(1 / 12.5))),.1)
	end
	attack=false;
	hum.WalkSpeed=16;
	hum.JumpPower=50;
end
function reloadfunnyhahahahahaahahlol()
	attack=true;
	hum.WalkSpeed=0;
	hum.JumpPower=0;
	CFuncs["Sound"].Create("rbxassetid://130113370",partaforgun,10,1)
	for i=1,50 do
		swait()
		RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(1 / 28))*angles(math.rad(0 - 1 * math.cos(1 / 34)),math.rad(0),math.rad(0)),.1)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(1 / 32)),math.rad(0 + 15 * math.cos(1 / 0.25)),math.rad(-20 - 5 * math.cos(1 / 0.465))),.1)
		RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(90),math.rad(-30),math.rad(-40 - 10 * math.cos(1 / 25))),.1)
		LW.C0=clerp(LW.C0,cf(-0.85,0.5 + 0.05 * math.cos(1 / 28),-0.65)*angles(math.rad(40 - 1 * math.cos(1 / 34)),math.rad(60),math.rad(90 + 2.5 * math.cos(1 / 28))),.1)
	end
	attack=false;
	hum.WalkSpeed=16;
	hum.JumpPower=50;
end
function execute()
	local targetted = nil
	if mouse.Target.Parent ~= char and mouse.Target.Parent.Parent ~= char and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
		targetted = mouse.Target.Parent
	end
	if targetted ~= nil then
		attack = true
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		targetted.Head.Anchored = true
		local originalpos = root.CFrame
		RootPart.CFrame = targetted.Head.CFrame * CFrame.new(0,-2,4)
		CFuncs["Sound"].Create("rbxassetid://235097614",root,1,3)
		chatfunc("Too slow!",colror(1,1,1))
		for i=1,25 do
			swait()
			RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
			LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(1 / 28))*angles(math.rad(0 - 1 * math.cos(1 / 34)),math.rad(0),math.rad(0)),.1)
			tors.Neck.C0=clerp(tors.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(1 / 32)),math.rad(0 + 15 * math.cos(1 / 0.25)),math.rad(-20 - 5 * math.cos(1 / 0.465))),.1)
			RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(90),math.rad(-10),math.rad(5 + 2.5 * math.cos(1 / 25))),.1)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(15 - 15 * math.cos(1 / 0.5265)),math.rad(0 - 15 * math.cos(1 / 0.25)),math.rad(0 - 15 * math.cos(1 / 0.465)))*angles(math.rad(math.random(5,15)),math.rad(5),math.rad(-15 - 7.5 * math.cos(1 / 12.5))),.1)
		end
		CFuncs["Sound"].Create("rbxassetid://130113322",partaforgun,10,1)
		dmg(targetted)
		for i=1,25 do
			swait()
			RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
			LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(1 / 28))*angles(math.rad(0 - 1 * math.cos(1 / 34)),math.rad(0),math.rad(0)),.1)
			tors.Neck.C0=clerp(tors.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(1 / 32)),math.rad(0 + 15 * math.cos(1 / 0.25)),math.rad(-20 - 5 * math.cos(1 / 0.465))),.1)
			RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(180),math.rad(-10),math.rad(5 + 2.5 * math.cos(1 / 25))),.1)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(15 - 15 * math.cos(1 / 0.5265)),math.rad(0 - 15 * math.cos(1 / 0.25)),math.rad(0 - 15 * math.cos(1 / 0.465)))*angles(math.rad(math.random(5,15)),math.rad(5),math.rad(-15 - 7.5 * math.cos(1 / 12.5))),.1)
		end
		CFuncs["Sound"].Create("rbxassetid://235097614",root,1,3)
		root.CFrame = originalpos
		for i=1,50 do
			swait()
			RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
			LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(1 / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(1 / 34))),.1)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(1 / 28))*angles(math.rad(0 - 1 * math.cos(1 / 34)),math.rad(0),math.rad(0)),.1)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 - 2.5 * math.cos(1 / 32)),math.rad(0 + 15 * math.cos(1 / 0.25)),math.rad(-20 - 5 * math.cos(1 / 0.465))),.1)
			RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(90),math.rad(-30),math.rad(-40 - 10 * math.cos(1 / 25))),.1)
			LW.C0=clerp(LW.C0,cf(-0.85,0.5 + 0.05 * math.cos(1 / 28),-0.65)*angles(math.rad(40 - 1 * math.cos(1 / 34)),math.rad(60),math.rad(90 + 2.5 * math.cos(1 / 28))),.1)
		end
		CFuncs["Sound"].Create("rbxassetid://130113370",partaforgun,10,1)
		attack=false;
		hum.WalkSpeed=16;
		hum.JumpPower=50;
	end
end
local vt=Vector3.new;
function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
	local type = type
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.Color = color
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Material = "Neon"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.CFrame = pos
	rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshType = "Sphere"
	rngm.Scale = vt(x1,y1,z1)
	local scaler2 = 1
	local speeder = FastSpeed
	if type == "Add" then
		scaler2 = 1*value
	elseif type == "Divide" then
		scaler2 = 1/value
	end
	coroutine.resume(coroutine.create(function()
		for i = 0,10/bonuspeed,0.1 do
			swait()
			if type == "Add" then
				scaler2 = scaler2 - 0.01*value/bonuspeed
			elseif type == "Divide" then
				scaler2 = scaler2 - 0.01/value*bonuspeed
			end
			speeder = speeder - 0.01*FastSpeed*bonuspeed
			rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
			rng.Transparency = rng.Transparency + 0.01*bonuspeed
			rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
		end
		rng:Destroy()
	end))
end
mouse.KeyDown:Connect(function(k)
	if k =="t" and attack==false then
		taunt()
	elseif k=="n" and attack==false then
		CorruptBlink()
	elseif k=="z" and attack==false then
		shoot()
	elseif k=="r" and attack==false then
		reloadfunnyhahahahahaahahlol()--this is only cosmetic there is no actual ammo
	elseif k=="x" and attack==false then
		execute()
	end
end)
function rayCast(Pos, Dir, Max, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
hum.Name="ENERGYRUSH"
local forcefield=Instance.new("ForceField",char);
forcefield.Visible=false;
hum.MaxHealth=math.huge;
hum.Health=hum.MaxHealth;
local Anim="Idle"
local sine=0;
local change=1;
Torso=tors
euler=Euler
RootCF=euler(-1.57,0,3.14)
coroutine.resume(coroutine.create(function()
	while true do
		swait()
		CameraManager()
		if attack == false then
			local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
			local velderp=RootPart.Velocity.y
			local hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,char)
			sine = sine + change
			if torvel<1 and hitfloor~=nil then
				Anim="Idle"
				local snap = math.random(1,2)
				if snap == 1 then
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
					RW.C0=clerp(RW.C0,RW.C0*angles(math.rad(1 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
				end
				RH.C0=clerp(RH.C0,cf(1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 + 2.5 * math.cos(sine / 100)),math.rad(0),math.rad(0 + 5 * math.cos(sine / 8))),.1)
				RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(180),math.rad(-10),math.rad(5 + 2.5 * math.cos(sine / 25))),.1)
				LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),0.45)*angles(math.rad(-30),math.rad(0),math.rad(30)),.1)
			elseif torvel>2 and torvel<173 and hitfloor~=nil then
				Anim = "Walk" 
				local snap = math.random(1,2)
				if snap == 1 then
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
					RW.C0=clerp(RW.C0,RW.C0*angles(math.rad(1 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
				end
				RH.C0=clerp(RH.C0,cf(1,-0.85,-0.15 - 0.15 * math.cos(sine / 4))*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 25 * math.cos(sine / 8))),.1)
				LH.C0=clerp(LH.C0,cf(-1,-0.85,-0.15 + 0.15 * math.cos(sine / 4))*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0 + 5 * math.cos(sine / 8)),math.rad(0 + 25 * math.cos(sine / 8))),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.15 - 0.1 * math.cos(sine / 4))*angles(math.rad(5),math.rad(0),math.rad(0 - 5 * math.cos(sine / 8))),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10 + 2.5 * math.cos(sine / 100)),math.rad(0),math.rad(0 + 5 * math.cos(sine / 8))),.1)
				RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(180),math.rad(-10),math.rad(5 + 2.5 * math.cos(sine / 25))),.1)
				LW.C0=clerp(LW.C0,cf(-1,0.5 + 0.1 * math.cos(sine / 28),0.45)*angles(math.rad(-30),math.rad(0),math.rad(30)),.1)
			elseif RootPart.Velocity.y > 1 and hitfloor==nil then 
				Anim="Jump"
				local snap = math.random(1,2)
				if snap == 1 then
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
					RW.C0=clerp(RW.C0,RW.C0*angles(math.rad(1 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
				end
				if attack==false then
				RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-tors.Velocity.Y/6),math.rad(0),math.rad(0)),.1)
				RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(180),math.rad(-10),math.rad(5 + 2.5 * math.cos(sine / 25))),.1)
				LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(-25)),.1)
				elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
				Anim="Fall"
					local snap = math.random(1,2)
					if snap == 1 then
						Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(25 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
						RW.C0=clerp(RW.C0,RW.C0*angles(math.rad(1 + math.random(-1,1)),math.rad(math.random(-1,1)),math.rad(math.random(-1,1))),0.6)
					end
				if attack==false then
				RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
				LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-tors.Velocity.Y/6),math.rad(0),math.rad(0)),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2.5),math.rad(0),math.rad(0)),.1)
				RW.C0=clerp(RW.C0,cf(1.5,-0.1,0)*angles(math.rad(180),math.rad(-10),math.rad(5 + 2.5 * math.cos(sine / 25))),.1)
				LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(-55)),.1)
				end
				end
			end
		end
	end
end))
coroutine.resume(coroutine.create(function()
	while true do
		swait()
		rainbowifygunandnameandstuff()
	end
end))

print("it works")

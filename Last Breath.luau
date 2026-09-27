print([[

----------------------------------
-----------LAST BREATH------------
----------------------------------
----------By GT4XSTRATUS----------
----------------------------------

-//----------------------------\\-
	A warrior of time, the 
monochromatic one, angered into
such pure crimson fury and rage,
beyond human comprehension.
Who could have known this could
happen, ever in the universe?
Unbound by reality and time, he
has entered an infernal bloodlust,
and will destroy whatever, or
whoever gets in his way. A last
resort, to do none other, than
draw whoever he can's last breath.
-\\----------------------------//-


Based off of an ultraskid I made as a
new scripter. (You guessed it, a star
glitcher.)

]])

--finished 9/27/2026

local Anim="Idle";
local Vec3=Vector3.new;
local cFrame=CFrame.new;
local cfnew=CFrame.new;
local angles=CFrame.Angles;
local v3n=Vector3.new;
local cf=CFrame.new;
local Euler=CFrame.fromEulerAnglesXYZ;
local euler=Euler;
local radian=math.rad;
local vt=Vector3.new;
local v3=Vector3.new;
local random=math.random;
local strsub=string.sub;
local strfin=string.find;
local strlwr=string.lower;
local strupr=string.upper;
local cam=workspace.Camera;
local Camera=cam;
local killaura=false;
local thisistheend=false;
local allowdoomsday=false;
local timeuntildoomsdayallow=25;
local bcolor=BrickColor.new;
local colror=Color3.new;
local plrs=game:GetService("Players");
local plr=plrs.LocalPlayer;
local char=plr.Character;
local Character=char;
local hum=char:WaitForChild("Humanoid");
local mouse=plr:GetMouse();
local char=plr.Character;
if char:FindFirstChild("UpperTorso") and char:FindFirstChild("LowerTorso") then
	print("You need to be R6 to run this!")
	return
end
local hum=char:WaitForChild("Humanoid");
local tors=char.Torso;
local Torso=tors;
local lleg=char["Left Leg"];
local root=char.HumanoidRootPart;
local RootPart=root;
local hed=char.Head;
local rleg=char["Right Leg"];
local rarm=char["Right Arm"];
local larm=char["Left Arm"];
local RootCF=euler(-1.57,0,3.14);
local necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0);
local necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0);
local RW, LW=Instance.new("Weld"), Instance.new("Weld");
RW.Name="Right Shoulder";
RW.Part0=char.Torso;
RW.C0=cf(1.5, 0.5, 0);
RW.C1=cf(0, 0.5, 0);
RW.Part1=char["Right Arm"];
RW.Parent=char.Torso;
LW.Name="Left Shoulder";
LW.Part0=char.Torso;
LW.C0=cf(-1.5, 0.5, 0);
LW.C1=cf(0, 0.5, 0);
LW.Part1=char["Left Arm"];
LW.Parent=char.Torso;
local LH=tors["Left Hip"];
local RH=tors["Right Hip"];
local RootJoint=root.RootJoint;
local cellservice=game:GetService("RunService");
local attacktypecurrent=1;
local attack=false;
local sine=0;
local change=1;
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
		hum.CameraOffset = Vec3(0, 0, 0)
	end))
end

local hhhhh=Instance.new("Humanoid")

local mmmusic=Instance.new("Sound",char)
mmmusic.SoundId="rbxassetid://121719325382620"
mmmusic.Looped=true
mmmusic.Pitch=1
mmmusic.Volume=2
mmmusic:Play()
local killauramusic=Instance.new("Sound",char)
killauramusic.SoundId="rbxassetid://5375147888"
killauramusic.Looped=true
killauramusic.Volume=1
killauramusic.Pitch=1

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
	return game:GetService("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

-------- RAINBOW LEAVE IT TO ME
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

hum.Animator.Parent=nil
hum.WalkSpeed=30
hum.JumpPower=50
hum.Name="Last Breath"

local Create = function(instance,properties)
	local inst = Instance.new(instance)
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

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
	local scaler2 = 1
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

function dmg(dude)
	if dude.Name ~= char then
		local bgf = Instance.new("BodyGyro",dude.Head)
		bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)
		local val = Instance.new("BoolValue",dude)
		val.Name = "IsHit"
		local ds = coroutine.wrap(function()
			local torso = dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso'
			for _,v in pairs(dude:GetChildren()) do
				if v:IsA("BasePart") then
					v.Anchored = true
				end
			end
			wait(0.5)
			local targetted = nil
			CFuncs["Sound"].Create("rbxassetid://9058393493", root, 2.5, 1)
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
							v.Color = Color3.new(1,0,0)
							v.Anchored = true
							coroutine.resume(coroutine.create(function()
								wait(0.5)
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

function Damagefunc(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	if game:GetService("Players"):GetPlayerFromCharacter(hit.Parent) then
		local hittedplr = game:GetService("Players"):GetPlayerFromCharacter(hit.Parent)
		if hittedplr.Name=="gt4xstratus" then
			chatfunc("I can't attack my creator.",BrickColor.new("Crimson").Color)
			return
		end
	end
	local h = hit.Parent:FindFirstChildOfClass("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Head") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
			return
		end
		local c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = game:GetService("Players").LocalPlayer
		c.Parent = h

		game:GetService("Debris"):AddItem(c, 0.5)
		if HitSound ~= nil and HitPitch ~= nil then
			CFuncs["EchoSound"].Create(HitSound, char, 1.5, 1,0,10,0.15,0.5,1)
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil and block.className == "IntValue" and block.Value > 0 then
			blocked = true
			block.Value = block.Value - 1
			print(block.Value)
		end
		if blocked == false then
			local HitHealth = h.Health
			h.Health = h.Health - Damage
			if 0 >= h.Health and h.Parent.Name ~= "Hologram" then
				print("gained kill")
				dmg(hit.Parent)
			end
			ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).Position + Vector3.new(0, 1.5, 0), -Damage, 1.5, BrickColor.new("Crimson").Color)
		else
			h.Health = h.Health - Damage / 2
			ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).Position + Vector3.new(0, 1.5, 0), -Damage, 1.5,  BrickColor.new("Crimson").Color)
		end
		local debounce = Instance.new("BoolValue")
		debounce.Name = "DebounceHit"
		debounce.Parent = hit.Parent
		debounce.Value = true

		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = plr
		c.Parent = h
		game:GetService("Debris"):AddItem(c, 0.5)
	end
end
function MagniDamage(Part, magni, mindam, maxdam, knock, Type)
	for _, c in pairs(workspace:GetDescendants()) do
		local hum = c:findFirstChildOfClass("Humanoid")
		if hum ~= nil then
			local head = c:FindFirstChild("Head")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if magni >= mag and c.Name ~= plr.Name then
					Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "rbxassetid://231917784", 1)
				end
			end
		end
	end
end
function ShowDamage(Pos, tex, Time, Color)
	local Rate = 0.03333333333333333
	local Pos = Pos or Vector3.new(0, 0, 0)
	local Text = tex or ""
	local Time = Time or 2
	local Color = Color or Color3.new(1, 0, 1)
	local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui",{
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart
	})
	local TextLabel = Create("TextLabel",{
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		TextColor3 = Color,
		TextScaled = true,
		Font = Enum.Font.ArialBold,
		Parent = BillboardGui
	})
	game.Debris:AddItem(EffectPart, Time + 0.1)
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = Time / Rate
		for Frame = 1, Frames do
			wait(Rate)
			TextLabel.Rotation = math.random(-10,10)
			local Percent = Frame / Frames
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end
function CreatePart(parry, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Instance.new("Part")
	Part.Parent = parry
	Part.Reflectance = Reflectance
	Part.Transparency = Transparency
	Part.CanCollide = false
	Part.Locked = true
	Part.BrickColor = BrickColor.new(tostring(BColor))
	Part.Name = Name
	Part.Size = Size
	Part.Material = Material
	Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
	RemoveOutlines(Part)
	return Part
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

local txt = Instance.new("BillboardGui", char)
txt.Adornee = hed
txt.Name = "NameDetect"
txt.Size = UDim2.new(4, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-8, 9/1.5, 0)
txt.AlwaysOnTop=true
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10/2, 0, 7/2, 0)
text.FontSize = "Size8"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = Enum.Font.Fantasy
text.TextStrokeColor3 = BrickColor.new("Crimson").Color
text.TextColor3 = Color3.new(0, 0, 0)
text.Text = "Last Breath"
local ohsoaurafunk = Instance.new("BillboardGui", char)
ohsoaurafunk.Adornee=tors
ohsoaurafunk.Size=UDim2.new(0, 500, 0, 500)
local squareglowthingyimagebilbord = Instance.new("ImageLabel", ohsoaurafunk)
squareglowthingyimagebilbord.Size=UDim2.new(1, 0, 1, 0)
squareglowthingyimagebilbord.Image="rbxassetid://83143107026081"
squareglowthingyimagebilbord.BackgroundTransparency=1
squareglowthingyimagebilbord.ImageColor3=Color3.new(0.333333, 0, 0)
local squareglow2 = Instance.new("ImageLabel", ohsoaurafunk)
squareglow2.Size=UDim2.new(1, 0, 1, 0)
squareglow2.Image="rbxassetid://83143107026081"
squareglow2.BackgroundTransparency=1
squareglow2.ImageColor3=Color3.new(0.333333, 0, 0)

local CPart = Instance.new("Part")
CPart.Anchored = true
CPart.CanCollide = false
CPart.Locked = true
CPart.Transparency = 1
local CamInterrupt = false
local TwoD = false
local TargetInfo = {nil, nil}
local Booleans = {
	CamFollow = true,
	GyroUse = true
}

function CameraManager()
	if TwoD and not CamInterrupt then
		if hum.Health > 0 then
			Camera.CameraSubject = hum
			Camera.CameraType = "Scriptable"
			hum.AutoRotate = false
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
			Camera.CameraSubject = hum
			Camera.CameraType = "Custom"
		end
	end
end

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
		tecks3.Font = "Fantasy"
		tecks3.TextSize = 30
		tecks3.TextStrokeTransparency = 0
		tecks3.TextColor3 = Color3.new(0,0,0)
		tecks3.TextStrokeColor3 = color
		tecks3.Size = UDim2.new(1,0,0.5,0)
		for i = 1,string.len(text),1 do
			CFuncs["Sound"].Create("rbxassetid://113967755234595", char, 0.25, 1.2)
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

function FaceMouse()
	local Cam = workspace.CurrentCamera
	return {
		CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
		Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
	}
end

function joemama()
	attack=true
	CFuncs["Sound"].Create("rbxassetid://147722098", root, 2.5, 1)
	for i=1,25 do
		swait()
		sphereMK(5,-0.25,"Add",larm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,2,-0.005,BrickColor.new("Crimson").Color,10)
		RH.C0=clerp(RH.C0,cf(1,-0.5 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(25),math.rad(math.random(73,73.5)),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-0.5 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(-12),math.rad(math.random(-73,-73.5)),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,3 + 0.25 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(math.random(-10,10) * math.cos(sine / 28)),math.rad(math.random(-25,25) * math.cos(sine / 28))),.1)
		RW.C0=clerp(RW.C0,cf(1.35,0.5 + 0.1 * math.cos(sine / 28),0.05)*angles(math.rad(0),math.rad(-10),math.rad(10)),.1)
		LW.C0=clerp(LW.C0,cf(-1.35,0.5 + 0.1 * math.cos(sine / 28),0.05)*angles(math.rad(math.random(90.38,90.5)),math.rad(10),math.rad(10)),.1)
	end
	CFuncs["Sound"].Create("rbxassetid://468991944", char, 4, 1)
	CameraEnshaking(0.2,3)
	for i=1,50 do
		swait()
		local mousepos=Instance.new("Part",char)
		mousepos.Anchored=true
		mousepos.CanCollide=false
		mousepos.Transparency=1
		mousepos.Size=vt(0.1,0.1,0.1)
		mousepos.CFrame=mouse.Hit
		sphereMK(5,-0.25,"Add",mousepos.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,-2,-0.005,BrickColor.new("Crimson").Color,10)
		sphereMK(5,-0.25,"Add",larm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,2,-0.005,BrickColor.new("Crimson").Color,10)
		RH.C0=clerp(RH.C0,cf(1,-0.5 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(25),math.rad(math.random(73,73.5)),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-0.5 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(-12),math.rad(math.random(-73,-73.5)),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,3 + 0.25 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(math.random(-10,10) * math.cos(sine / 28)),math.rad(math.random(-25,25) * math.cos(sine / 28))),.1)
		RW.C0=clerp(RW.C0,cf(1.35,0.5 + 0.1 * math.cos(sine / 28),0.05)*angles(math.rad(0),math.rad(-10),math.rad(10)),.1)
		LW.C0=clerp(LW.C0,cf(-1.35,0.5 + 0.1 * math.cos(sine / 28),0.05)*angles(math.rad(math.random(90.38,90.5)),math.rad(10),math.rad(-90)),.1)
		sphere(0,"Add",mousepos.CFrame,vt(3,3,3),1,BrickColor.new("Crimson"),false,false,false)
		MagniDamage(mousepos,3,922337,922337,"Normal")
		mousepos:Destroy()
	end
	attack=false
end

function boomboomboomboom() -- we detonating da alpha warheads in t-90 secondS!!!!!11!1
	timeuntildoomsdayallow=math.huge
	allowdoomsday=false
	mmmusic:Stop()
	chatfunc("I'm not letting you stay anymore....A L L O F Y O U W I L L D I E . . .",BrickColor.new("Crimson").Color)
	wait(6)
	CFuncs["Sound"].Create("rbxassetid://147722098", root, 2.5, 1)
	chatfunc("However, I will give you time to prepare for the end of the world... It will happen in about 2.5 minutes...",BrickColor.new("Crimson").Color)
	wait(.4)
	mmmusic.SoundId="rbxassetid://87275728813427"
	mmmusic.Looped=false
	mmmusic.Pitch=1.35
	mmmusic:Play()
	repeat
		swait()
		CameraEnshaking(.1,3)
		sphereMK(5,-0.25,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,20,-0.005,BrickColor.new("Crimson").Color,10)
		squareglowthingyimagebilbord.Rotation=squareglowthingyimagebilbord.Rotation+9
		squareglow2.Rotation=squareglow2.Rotation-9
	until mmmusic.Playing==false
	CFuncs["Sound"].Create("rbxassetid://468991944", char, 4, 0.4)
	for i=1,100 do
	swait()
	MagniDamage(tors,9223372036,922337,922337,"Normal")
	CameraEnshaking(.1,200)
	sphereMK(5,-0.25,"Add",tors.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,-100,-0.005,BrickColor.new("Crimson").Color,10)
	end
	timeuntildoomsdayallow=500
	allowdoomsday=false
	mmmusic.SoundId="rbxassetid://121719325382620"
	mmmusic.Looped=true
	mmmusic.Pitch=1
	mmmusic:Play()
	chatfunc("Welcome back...everyone...",BrickColor.new("Crimson").Color)
end

function hugeassorb()
	attack=true
	hum.WalkSpeed=0;
	hum.JumpPower=0;
	CFuncs["Sound"].Create("rbxassetid://9058393493", root, 2.5, 1)
	CFuncs["Sound"].Create("rbxassetid://147722098", root, 2.5, 1)
	CFuncs["Sound"].Create("rbxassetid://1846714431", root, 2.5, 1)
	CFuncs["Sound"].Create("rbxassetid://136007472", root, 2.5, 1)
	for i=1,100 do
		swait()
		sphere(1,"Add",root.CFrame+Vector3.new(0,70,0),vt(50,50,50),1,BrickColor.new("Crimson"),false,false,false)
		sphere(1,"Add",root.CFrame+Vector3.new(0,70,0),vt(40,40,40),1,BrickColor.new("Maroon"),false,false,false)
		sphereMK(5,-0.25,"Add",larm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,2,-0.005,BrickColor.new("Crimson").Color,10)
		RH.C0=clerp(RH.C0,cf(1,-0.5 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(-12),math.rad(math.random(73,73.5)),math.rad(0))*angles(math.rad(-2.5 + 1 * math.cos(sine / 34)),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-0.5 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(-12),math.rad(math.random(-73,-73.5)),math.rad(0))*angles(math.rad(-2.5 + 5 * math.cos(sine / 34)),math.rad(0),math.rad(0 - 1 * math.cos(sine / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,3 - .25 * math.cos(sine / 28))*angles(math.rad(-120 + 5 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
		RW.C0=clerp(RW.C0,cf(1.35,0.5 + 0.1 * math.cos(sine / 28),0.05)*angles(math.rad(math.random(178.38,178.5)),math.rad(10),math.rad(10)),.1)
		LW.C0=clerp(LW.C0,cf(-1.35,0.5 + 0.1 * math.cos(sine / 28),0.05)*angles(math.rad(math.random(178.38,178.5)),math.rad(10),math.rad(-10)),.1)
	end
	CFuncs["Sound"].Create("rbxassetid://129186052203024", char, 4, 1)
	CFuncs["Sound"].Create("rbxassetid://178038408", char, 4, 1)
	CFuncs["Sound"].Create("rbxassetid://9057559034", char, 4, 1)
	for i=1,50 do
		swait()
		CameraEnshaking(0.2,3)
		sphere(5,"Add",root.CFrame+Vector3.new(0,70,0),vt(100,100,100),1,BrickColor.new("Crimson"),false,false,false)
		sphere(5,"Add",root.CFrame+Vector3.new(0,70,0),vt(80,80,80),1,BrickColor.new("Maroon"),false,false,false)
		sphereMK(-5,0.25,"Add",larm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,2,-0.005,BrickColor.new("Crimson").Color,10)
		MagniDamage(root,100,92237,922337,"Normal")
		RH.C0=clerp(RH.C0,cf(1,-0.5 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(-12),math.rad(math.random(73,73.5)),math.rad(0))*angles(math.rad(-2.5 + 1 * math.cos(sine / 34)),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
		LH.C0=clerp(LH.C0,cf(-1,-0.5 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(-12),math.rad(math.random(-73,-73.5)),math.rad(0))*angles(math.rad(-2.5 + 5 * math.cos(sine / 34)),math.rad(0),math.rad(0 - 1 * math.cos(sine / 34))),.1)
		RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,3 - .25 * math.cos(sine / 28))*angles(math.rad(120 + 5 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
		RW.C0=clerp(RW.C0,cf(1.35,0.5 + 0.1 * math.cos(sine / 28),0.05)*angles(math.rad(math.random(178.38,178.5)),math.rad(10),math.rad(10)),.1)
		LW.C0=clerp(LW.C0,cf(-1.35,0.5 + 0.1 * math.cos(sine / 28),0.05)*angles(math.rad(math.random(178.38,178.5)),math.rad(10),math.rad(-10)),.1)
	end
	attack=false
	hum.WalkSpeed=30;
	hum.JumpPower=50;
end

function natsuki()
	local targetted = nil
	if mouse.Target.Parent ~= char and mouse.Target.Parent.Parent ~= char and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
	targetted = mouse.Target.Parent
	if targetted ~= nil then
		attack = true
		hum.WalkSpeed=0;
		hum.JumpPower=0;
		hum.WalkSpeed = 0
		hum.JumpPower = 0
		local originalpos = root.CFrame
		RootPart.CFrame = targetted.Head.CFrame * CFrame.new(0,-2,2)
		for i=1,25 do
			swait()
			RH.C0=clerp(RH.C0,cf(1,-0.7,0)*angles(math.rad(-12),math.rad(math.random(73,73.5)),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
			LH.C0=clerp(LH.C0,cf(-1,-0.7,0)*angles(math.rad(-12),math.rad(math.random(-73,-73.5)),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
			RW.C0=clerp(RW.C0,cf(1.2,1,-1)*angles(math.rad(90),math.rad(0),math.rad(0)),.1)
			LW.C0=clerp(LW.C0,cf(-1.2,1,-1)*angles(math.rad(90),math.rad(0),math.rad(0)),.1)
		end
		CFuncs["Sound"].Create("rbxassetid://1093102664", char, 4, 1)
		CFuncs["Sound"].Create("rbxassetid://836796971", char, 10,1)
		for i=1,5 do
			swait()
			RH.C0=clerp(RH.C0,cf(1,-0.7,0)*angles(math.rad(-12),math.rad(math.random(73,73.5)),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
			LH.C0=clerp(LH.C0,cf(-1,-0.7,0)*angles(math.rad(-12),math.rad(math.random(-73,-73.5)),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
			Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.1)
			RW.C0=clerp(RW.C0,cf(1.2,1,-1)*angles(math.rad(90),math.rad(0),math.rad(-90)),.1)
			LW.C0=clerp(LW.C0,cf(-1.2,1,-1)*angles(math.rad(90),math.rad(0),math.rad(-90)),.1)
		end
		if targetted:FindFirstChild("UpperTorso") then
			targetted.Head.Neck.C0=targetted.Head.Neck.C0*CFrame.Angles(0,90,0)
		elseif targetted:FindFirstChild("Torso") then
			targetted.Torso.Neck.C0=targetted.Torso.Neck.C0*CFrame.Angles(0,90,0)
		end
		wait(.1)
		dmg(targetted)
		end
	end
	attack=false
	hum.WalkSpeed=30;
	hum.JumpPower=50;
end

function knockknockknock()
	CFuncs["Sound"].Create("rbxassetid://5989943797", char, 4, 1)
	RootPart.CFrame = mouse.Hit *CFrame.new(0,2,0)
	local whosjoe=math.random(1,10)
	if whosjoe==1 then
		CFuncs["Sound"].Create("rbxassetid://6965169740", char, 4, 1)
		chatfunc("i was bad to the bone",BrickColor.new("Crimson").Color)
		warn("i was bad to the bone")
	end
	
end

mouse.Button1Down:Connect(function()
	if attack==false then
		joemama()
	end
end)

mouse.KeyDown:Connect(function(k)
	if k=="0" and attack==false and allowdoomsday==true then
		boomboomboomboom()
	elseif k=="0" and attack==false and allowdoomsday==false then
		chatfunc("Not yet..... wait "..timeuntildoomsdayallow.." more seconds..",BrickColor.new("Crimson").Color)
	elseif k=="v" and attack==false then
		hugeassorb()
	elseif k=="m" and attack==false and killaura==false then
		wait(.1)
		killaura=true
		killauramusic.Playing=true
		chatfunc("KILL AURA ACTIVATED.",BrickColor.new("Crimson").Color)
	elseif k=="m" and attack==false and killaura==true then
		wait(.1)
		killaura=false
		killauramusic.Playing=false
		chatfunc("KILL AURA DEACTIVATED.",BrickColor.new("Crimson").Color)
	elseif k=="z" and attack==false then
		natsuki()
	elseif k=="n" then
		knockknockknock()
	end
end)

local forcefield=Instance.new("ForceField",char)
forcefield.Visible=false

--character setup
if char:FindFirstChildOfClass("BodyColors") then
	local bodyclrs=char:FindFirstChildOfClass("BodyColors")
	bodyclrs.HeadColor=BrickColor.new("Institutional white")
	bodyclrs.LeftArmColor=BrickColor.new("Really black")
	bodyclrs.RightArmColor=BrickColor.new("Really black")
	bodyclrs.LeftLegColor=BrickColor.new("Really black")
	bodyclrs.RightLegColor=BrickColor.new("Really black")
	bodyclrs.TorsoColor=BrickColor.new("Crimson")
else
	local bodyclrs=Instance.new("BodyColors",char)
	bodyclrs.HeadColor=BrickColor.new("Institutional white")
	bodyclrs.LeftArmColor=BrickColor.new("Really black")
	bodyclrs.RightArmColor=BrickColor.new("Really black")
	bodyclrs.LeftLegColor=BrickColor.new("Really black")
	bodyclrs.RightLegColor=BrickColor.new("Really black")
	bodyclrs.TorsoColor=BrickColor.new("Crimson")
end
if char:FindFirstChildOfClass("Shirt") then
	char:FindFirstChildOfClass("Shirt"):Destroy()
	local shirt=Instance.new("Shirt",char)
	shirt.ShirtTemplate="rbxassetid://134993251000508"
else
	local shirt=Instance.new("Shirt",char)
	shirt.ShirtTemplate="rbxassetid://134993251000508"
end
if char:FindFirstChildOfClass("Pants") then
	char:FindFirstChildOfClass("Pants"):Destroy()
	local pants=Instance.new("Pants",char)
	pants.PantsTemplate="rbxassetid://100994032643423"
else
	local pants=Instance.new("Pants",char)
	pants.PantsTemplate="rbxassetid://100994032643423"
end
if hed:FindFirstChildOfClass("SpecialMesh") then
	if hed:FindFirstChildOfClass("SpecialMesh").Name=="Mesh" then
		if hed.Mesh.MeshType~=Enum.MeshType.Head then
			hed.Mesh.MeshType=Enum.MeshType.Head
			hed.Mesh.Scale=Vector3.new(1.25,1.25,1.25)
		end
	end
end
if hed:FindFirstChildOfClass("Decal") then
	if hed:FindFirstChildOfClass("Decal").Name=="face" then
		hed.face.Texture="rbxassetid://410554159"
	end
end
for _,v in char:GetChildren() do
	if v:IsA("Accessory") or v:IsA("Hat") then
		v:Destroy()
	end
end
local charhair=Instance.new("Part",char)
charhair.Size=Vector3.new(1,1,2)
charhair.CanCollide=false
charhair.Anchored=false
local charhairmesh=Instance.new("SpecialMesh",charhair)
charhairmesh.MeshType=Enum.MeshType.FileMesh
charhairmesh.MeshId="rbxassetid://19999424"
charhairmesh.TextureId="rbxassetid://7989494882"
charhairmesh.Scale=Vector3.new(1.07,1.07,1.07)
local charhairweld=Instance.new("Weld",charhair)
charhairweld.Part0=hed
charhairweld.Part1=charhair
charhairweld.C0=CFrame.new(-0.075, 0.2, 0.09)

local lowlight=Instance.new("Highlight",char)
lowlight.FillTransparency=.3
lowlight.FillColor=Color3.fromRGB(0,0,0)
lowlight.OutlineTransparency=0
lowlight.OutlineColor=BrickColor.new("Crimson").Color
lowlight.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop

local ithinkthescriptisdoneweshouldaddthecontrolsorsomethingidk=Instance.new("ScreenGui",plr.PlayerGui)
ithinkthescriptisdoneweshouldaddthecontrolsorsomethingidk.Name="hwerfg89e"
ithinkthescriptisdoneweshouldaddthecontrolsorsomethingidk.IgnoreGuiInset=true
local thisisthenameofthescripthowcoolwow=Instance.new("Frame",ithinkthescriptisdoneweshouldaddthecontrolsorsomethingidk)
thisisthenameofthescripthowcoolwow.Position=UDim2.new(0.8, 0, 0.70, 0)
thisisthenameofthescripthowcoolwow.Size=UDim2.new(0.26, 0, 0.07, 0)
thisisthenameofthescripthowcoolwow.BackgroundColor3=Color3.new(0,0,0)
thisisthenameofthescripthowcoolwow.Transparency=1
thisisthenameofthescripthowcoolwow.BorderSizePixel=0
local jkthisisthenameofthescript=Instance.new("TextLabel",thisisthenameofthescripthowcoolwow)
jkthisisthenameofthescript.Text="LAST BREATH"
jkthisisthenameofthescript.TextStrokeColor3=colror(0,0,0)
jkthisisthenameofthescript.TextColor3=BrickColor.new("Crimson").Color
jkthisisthenameofthescript.TextStrokeTransparency=0
jkthisisthenameofthescript.BackgroundTransparency=1
jkthisisthenameofthescript.TextSize="14"
local whomadethisscriptframe=Instance.new("Frame",ithinkthescriptisdoneweshouldaddthecontrolsorsomethingidk)
whomadethisscriptframe.Position=UDim2.new(0.8, 0, 0.74, 0)
whomadethisscriptframe.Size=UDim2.new(0.26, 0, 0.07, 0)
whomadethisscriptframe.BackgroundColor3=Color3.new(0,0,0)
whomadethisscriptframe.Transparency=1
whomadethisscriptframe.BorderSizePixel=0
local whomadethisscripttext=Instance.new("TextLabel",whomadethisscriptframe)
whomadethisscripttext.Text="By: gt4xstratus"
whomadethisscripttext.TextStrokeColor3=colror(0,0,0)
whomadethisscripttext.TextStrokeTransparency=0
whomadethisscripttext.TextColor3=BrickColor.new("Crimson").Color
whomadethisscripttext.BackgroundTransparency=1
whomadethisscripttext.TextSize="14"
local odna=Instance.new("Frame",ithinkthescriptisdoneweshouldaddthecontrolsorsomethingidk)
odna.Position=UDim2.new(0.8, 0, 0.82, 0)
odna.Size=UDim2.new(0.26, 0, 0.07, 0)
odna.BackgroundColor3=Color3.new(0,0,0)
odna.Transparency=1
odna.BorderSizePixel=0
local attackonekey=Instance.new("TextLabel",odna)
attackonekey.Text="[Z] - Neck Snap"
attackonekey.TextStrokeColor3=colror(0,0,0)
attackonekey.TextStrokeTransparency=0
attackonekey.TextColor3=BrickColor.new("Crimson").Color
attackonekey.BackgroundTransparency=1
attackonekey.TextSize="14"
local dva=Instance.new("Frame",ithinkthescriptisdoneweshouldaddthecontrolsorsomethingidk)
dva.Position=UDim2.new(0.8, 0, 0.78, 0)
dva.Size=UDim2.new(0.26, 0, 0.07, 0)
dva.BackgroundColor3=Color3.new(0,0,0)
dva.Transparency=1
dva.BorderSizePixel=0
local attacktwkey=Instance.new("TextLabel",dva)
attacktwkey.Text="[N] - Teleport"
attacktwkey.TextStrokeColor3=colror(0,0,0)
attacktwkey.TextStrokeTransparency=0
attacktwkey.TextColor3=BrickColor.new("Crimson").Color
attacktwkey.BackgroundTransparency=1
attacktwkey.TextSize="14"
local tre=Instance.new("Frame",ithinkthescriptisdoneweshouldaddthecontrolsorsomethingidk)
tre.Position=UDim2.new(0.8, 0, 0.94, 0)
tre.Size=UDim2.new(0.26, 0, 0.07, 0)
tre.BackgroundColor3=Color3.new(0,0,0)
tre.Transparency=1
tre.BorderSizePixel=0
local attacktrkey=Instance.new("TextLabel",tre)
attacktrkey.Text="[LMB] - Death Ball"
attacktrkey.TextStrokeColor3=colror(0,0,0)
attacktrkey.TextStrokeTransparency=0
attacktrkey.TextColor3=BrickColor.new("Crimson").Color
attacktrkey.BackgroundTransparency=1
attacktrkey.TextSize="14"
local howdoihideframe=Instance.new("Frame",ithinkthescriptisdoneweshouldaddthecontrolsorsomethingidk)
howdoihideframe.Position=UDim2.new(0.8, 0, 0.98, 0)
howdoihideframe.Size=UDim2.new(0.26, 0, 0.07, 0)
howdoihideframe.BackgroundColor3=Color3.new(0,0,0)
howdoihideframe.Transparency=1
howdoihideframe.BorderSizePixel=0
local howdoihidetext=Instance.new("TextLabel",howdoihideframe)
howdoihidetext.Text="[M] - Toggle Kill Aura"
howdoihidetext.TextStrokeColor3=colror(0,0,0)
howdoihidetext.TextStrokeTransparency=0
howdoihidetext.BackgroundTransparency=1
howdoihidetext.TextColor3=BrickColor.new("Crimson").Color
howdoihidetext.TextSize="14"
local chutoru=Instance.new("Frame",ithinkthescriptisdoneweshouldaddthecontrolsorsomethingidk)
chutoru.Position=UDim2.new(0.8, 0, 0.86, 0)
chutoru.Size=UDim2.new(0.26, 0, 0.07, 0)
chutoru.BackgroundColor3=Color3.new(0,0,0)
chutoru.Transparency=1
chutoru.BorderSizePixel=0
local attackfrkey=Instance.new("TextLabel",chutoru)
attackfrkey.Text="[V] - Large Orb"
attackfrkey.TextStrokeColor3=colror(0,0,0)
attackfrkey.TextStrokeTransparency=0
attackfrkey.TextColor3=BrickColor.new("Crimson").Color
attackfrkey.BackgroundTransparency=1
attackfrkey.TextSize="14"
local byet=Instance.new("Frame",ithinkthescriptisdoneweshouldaddthecontrolsorsomethingidk)
byet.Position=UDim2.new(0.8, 0, 0.90, 0)
byet.Size=UDim2.new(0.26, 0, 0.07, 0)
byet.BackgroundColor3=Color3.new(0,0,0)
byet.Transparency=1
byet.BorderSizePixel=0
local attackfvkey=Instance.new("TextLabel",byet)
attackfvkey.Text="[0] - ITS THE END FOR ALL OF US"
attackfvkey.TextStrokeColor3=colror(0,0,0)
attackfvkey.TextStrokeTransparency=0
attackfvkey.TextColor3=BrickColor.new("Crimson").Color
attackfvkey.BackgroundTransparency=1
attackfvkey.TextSize="14"

coroutine.resume(coroutine.create(function()
	while true do
		swait()
		CameraManager()
		sine=sine+change
		local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
		local velderp=RootPart.Velocity.y
		local hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,char)
		hum.MaxHealth=math.huge
		hum.Health=math.huge
		squareglowthingyimagebilbord.Rotation=squareglowthingyimagebilbord.Rotation+1
		squareglow2.Rotation=squareglow2.Rotation-1
		if killaura==true then
			MagniDamage(tors,10,922337,922337,"Normal")
		end
		CameraEnshaking(.1,1)
		if attack==false then
			if torvel<1 and hitfloor~=nil then
				Anim="Idle"
				sphereMK(5,-0.25,"Add",larm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,2,-0.005,BrickColor.new("Crimson").Color,10)
				RH.C0=clerp(RH.C0,cf(1,-0.5 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(3 - 5 * math.cos(sine / 34)),math.rad(73 + 1 * math.cos(sine / 34)),math.rad(1 + 4 * math.cos(sine / 34)))*angles(math.rad(2.5 + 1 * math.cos(sine / 34)),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
				LH.C0=clerp(LH.C0,cf(-1,-0.7 - 0.05 * math.cos(sine / 28),0)*angles(math.rad(-12),math.rad(math.random(-73,-73.5)),math.rad(0))*angles(math.rad(-2.5 + 5 * math.cos(sine / 34)),math.rad(0),math.rad(0 - 1 * math.cos(sine / 34))),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,3 - 1.25 * math.cos(sine / 28))*angles(math.rad(0 - 1 * math.cos(sine / 34)),math.rad(0),math.rad(0)),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5 - 2.5 * math.cos(sine / 28)),math.rad(math.random(-10,10) + 5 * math.cos(sine / 28)),math.rad(math.random(-25,25) * math.cos(sine / 28))),.1)
				RW.C0=clerp(RW.C0,cf(0.2,0.6 + 0.01 * math.cos(sine / 28),-0.8)*angles(math.rad(math.random(90.1,90.5)),math.rad(-10),math.rad(math.random(-90.1,-90.5))),.1)
				LW.C0=clerp(LW.C0,cf(-1.35,0.5 + 0.1 * math.cos(sine / 28),0.05)*angles(math.rad(math.random(178.38,178.5)),math.rad(10),math.rad(10)),.1)
			elseif torvel>2 and torvel<173 and hitfloor~=nil then
				Anim="Walk"
				sphereMK(5,-0.25,"Add",larm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,2,-0.005,BrickColor.new("Crimson").Color,10)
				RH.C0=clerp(RH.C0,cf(1,-0.7,0)*angles(math.rad(-12),math.rad(math.random(73,73.5)),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
				LH.C0=clerp(LH.C0,cf(-1,-0.7,0)*angles(math.rad(-12),math.rad(math.random(-73,-73.5)),math.rad(0))*angles(math.rad(-2.5),math.rad(0),math.rad(0 + 1 * math.cos(sine / 34))),.1)
				RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,2.5 + 0.3 * math.cos(sine / 28))*angles(math.rad(85),math.rad(0),math.rad(0)),.1)
				Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-42.069 + 5 * math.cos(sine / 28)),math.rad(0),math.rad(0)),.1)
				RW.C0=clerp(RW.C0,cf(1.35,0.5 + 0.01 * math.cos(sine / 28),-0.05)*angles(math.rad(math.random(0.38,0.5)),math.rad(-10),math.rad(60)),.1)
				LW.C0=clerp(LW.C0,cf(-1.35,0.5 + 0.1 * math.cos(sine / 28),-0.05)*angles(math.rad(math.random(-0.38,-0.5)),math.rad(10),math.rad(-60)),.1)
			elseif RootPart.Velocity.y > 1 and hitfloor==nil then 
				Anim="Jump"
				if attack==false then
					sphereMK(5,-0.25,"Add",larm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,2,-0.005,BrickColor.new("Crimson").Color,10)
					RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-tors.Velocity.Y/6),math.rad(0),math.rad(0)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-2.5),math.rad(0),math.rad(0)),.1)
					RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(25)),.1)
					LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-5),math.rad(0),math.rad(-25)),.1)
			elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
				Anim="Fall"
				if attack==false then
					sphereMK(5,-0.25,"Add",larm.CFrame*CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))),0.5,0.5,2,-0.005,BrickColor.new("Crimson").Color,10)
					RH.C0=clerp(RH.C0,cf(1,-0.35 - 0.05 * math.cos(sine / 25),-0.75)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-20)),.1)
					LH.C0=clerp(LH.C0,cf(-1,-1 - 0.05 * math.cos(sine / 25),0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(20)),.1)
					RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0 + 0.05 * math.cos(sine / 25))*angles(math.rad(-tors.Velocity.Y/6),math.rad(0),math.rad(0)),.1)
					Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(2.5),math.rad(0),math.rad(0)),.1)
					RW.C0=clerp(RW.C0,cf(1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(55)),.1)
					LW.C0=clerp(LW.C0,cf(-1.45,0.5 + 0.1 * math.cos(sine / 25),0)*angles(math.rad(-15),math.rad(0),math.rad(-55)),.1)
				end
			end
		end
	end
end
end))

coroutine.resume(coroutine.create(function()
	while true do
		wait(1)
		if allowdoomsday==false and timeuntildoomsdayallow>0 then
			timeuntildoomsdayallow=timeuntildoomsdayallow-1
		end
		if timeuntildoomsdayallow<=0 then
			allowdoomsday=true
		end
	end
end))
print("it wroks 89thjwuitjhne4tgu7ehjngtiou8e4hjgeruigheriughergiuehrgiuehrui yay it works woohoo")

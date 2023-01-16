script_name('Custom Player')
script_author("Ivann#9747")
version_script = '1.6'
script_description("Description:\n\nPut you custom skin models into 'modloader/Custom Player' folder\n\nNote: you need to install Modloader")
script_properties('work-started')
local ffi = require 'ffi'

-- ch_head.v = true

require "lfs"


local jsn_upd = "https://gitlab.com/snippets/2484391/raw"


print (lfs._VERSION)

local vkeys = require 'vkeys'


local imgui = require "imgui"

local colors = {
	hex = {
		main = '{888EA0}',
		main2 = '{F9D82F}',
		blue = '{0984D2}',
		red = '{B31A06}',
		green = '{0E8604}'
	},
	chat = {
		main = 0x888EA0,
		main2 = 0xF9D82F,
		blue = 0x0984D2,
		red = 0xB31A06,
		green = 0x0E8604
	}
}


local cb18 = imgui.ImBool(false)
local cb60 = imgui.ImBool(false)
local state = false
local isHooked = false
local ignore = false

local target = 0
local lastPos = {x = 0, y = 0, z = 0}

local broadcaster = import('lib/broadcaster.lua')

local userList = 'Available users:'


require 'lib.moonloader'
jpActivate = false
imgui = require("imgui")
local aim_fov = 200

local dis_sync = false

local slider = imgui.ImInt(0)
local slider1 = imgui.ImInt(1)

local text_buffer = imgui.ImBuffer(256)

local cb8 = imgui.ImBool(false)

local event = require('lib.samp.events')
local ev = require('lib.samp.events')


local MOP = false
local pow = 0.7
local poww = 1.9
function MOP_()
	MOP = not MOP
	freezeCharPosition(PLAYER_PED, MOP)
	if not isCharInAnyCar(PLAYER_PED) then
	setCharCollision(PLAYER_PED, not MOP)
	end
end
local act50 = imgui.ImBool(false)
local imgui = require 'imgui'
local notf = import 'imgui_notf.lua' 
local encoding = require 'encoding'
local mainwin         = imgui.ImBool(false)
local mp3menu         = imgui.ImBool(false)
local win         = imgui.ImBool(false)
local memory = require 'memory'
local samp = require 'lib.samp.events'
local speedsurfer = imgui.ImInt(10)
local as = require('moonloader').audiostream_state
local audio = loadAudioStream("moonloader/sadfi resource/music") -- Путь к файлу учитывая папку moonloader или прямая веб-ссылка на mp3 файл
local timer,playing,stopped = false
local time = 0
local fontsize20,fontsize12 = nil
--local speedfastwalk = imgui.ImInt(2)
local ffi = require "ffi"
local getBonePosition = ffi.cast("int (__thiscall*)(void*, float*, int, bool)", 0x5E4280)
local hack = require 'lib.samp.events'
local selected = 1
local menu = 9
local searchBuf = imgui.ImBuffer(256)
local x2, y2 = getScreenResolution()
input = imgui.ImBuffer(256)
local checkbox = imgui.ImBool(false)
local encoding = require ("encoding")
local checkbox222 = imgui.ImBool(false)
local checkbox333 = imgui.ImBool(false)
local traser = imgui.ImBool(false)
local enab = imgui.ImBool(false)
local checkbox123 = imgui.ImBool(false)
local intbuffer = imgui.ImInt(0)
local inicfg = require("inicfg")
require "lib.moonloader"
require 'lib.sampfuncs'
local imgui = require "imgui"
local encoding = require "encoding"
local rkeys = require 'rkeys'
local memory = require "memory"
imgui.ToggleButton = require('imgui_addons').ToggleButton
imgui.HotKey = require('imgui_addons').HotKey
imgui.Spinner = require('imgui_addons').Spinner
imgui.BufferingBar = require('imgui_addons').BufferingBar
local ffi = require "ffi"
local getBonePosition = ffi.cast("int (__thiscall*)(void*, float*, int, bool)", 0x5E4280)
local events = require "lib.samp.events"
local ev = require "lib.samp.events"
local encoding = require "encoding"
local wm = require 'lib.windows.message'
encoding.default = 'CP1251'
u8 = encoding.UTF8
local tag = '{F9D82F}[Advanced SADFI Project]:{ffffff} '
function join_argb(a, r, g, b) local argb = b argb = bit.bor(argb, bit.lshift(g, 8)) argb = bit.bor(argb, bit.lshift(r, 16)) argb = bit.bor(argb, bit.lshift(a, 24)) return argb end
function explode_argb(argb) local a = bit.band(bit.rshift(argb, 24), 0xFF) local r = bit.band(bit.rshift(argb, 16), 0xFF) local g = bit.band(bit.rshift(argb, 8), 0xFF) local b = bit.band(argb, 0xFF) return a, r, g, b end
if ffi.os == "Windows" then function sleep(time) ffi.C.Sleep(time * 1000) end
else function sleep(time) ffi.C.poll(nil, 0, time * 1000) end end

local sampev = require 'samp.events'
local imgui = require 'imgui'
local encoding = require 'encoding'
local inicfg = require 'inicfg'

encoding.default = 'CP1251'
u8 = encoding.UTF8

local chars = {
	["й"] = "q", ["ц"] = "w", ["у"] = "e", ["к"] = "r", ["е"] = "t", ["н"] = "y", ["г"] = "u", ["ш"] = "i", ["щ"] = "o", ["з"] = "p", ["х"] = "[", ["ъ"] = "]", ["ф"] = "a",
	["ы"] = "s", ["в"] = "d", ["а"] = "f", ["п"] = "g", ["р"] = "h", ["о"] = "j", ["л"] = "k", ["д"] = "l", ["ж"] = ";", ["э"] = "'", ["я"] = "z", ["ч"] = "x", ["с"] = "c", ["м"] = "v",
	["и"] = "b", ["т"] = "n", ["ь"] = "m", ["б"] = ",", ["ю"] = ".", ["Й"] = "Q", ["Ц"] = "W", ["У"] = "E", ["К"] = "R", ["Е"] = "T", ["Н"] = "Y", ["Г"] = "U", ["Ш"] = "I",
	["Щ"] = "O", ["З"] = "P", ["Х"] = "{", ["Ъ"] = "}", ["Ф"] = "A", ["Ы"] = "S", ["В"] = "D", ["А"] = "F", ["П"] = "G", ["Р"] = "H", ["О"] = "J", ["Л"] = "K", ["Д"] = "L",
	["Ж"] = ":", ["Э"] = "\"", ["Я"] = "Z", ["Ч"] = "X", ["С"] = "C", ["М"] = "V", ["И"] = "B", ["Т"] = "N", ["Ь"] = "M", ["Б"] = "<", ["Ю"] = ">"
}
local KeyboardLayoutName, LocalInfo = ffi.new("char[?]", 32), ffi.new("char[?]", 32)
ffi.cdef[[
	short GetKeyState(int nVirtKey);
	bool GetKeyboardLayoutNameA(char* pwszKLID);
	int GetLocaleInfoA(int Locale, int LCType, char* lpLCData, int cchData);
]]

local HLcfg = inicfg.load({
    config = {
        actKey = 0x74,
        infinityrun = false,
        GM = false,
        nofall = false,
        antiafk = false,
        invisible = false,
        ghostmode = false,
        surfer = false,
        fastwalk = false,
        megajump = false,
        cardmenu = false,
        circlemenu = false,
        normalmenu = true,
        dark = false,
        darkgreen = false,
        greensalad = false,
        darkblue = false,
        lightblue = true,
        red = false,
        darkbrown = false,
        darkyellow = false,
        darkorange = false,
        darkpurple = false,
        pink = false,
        bell = false,
        langvisual = false,
        langmenu = false,
        langchat = false,
        lang = false,
        reconnect = false,
        megajumpbmx = false,
        autoupdate = false,
        antistun = false,
        unfreeze = false,
        blockoverdoseanimations = false,
        airbrk = false,
        fakelags = false,
        infinityammo = false,
        fastdeagle = false,
        fullskills = false,
        noreload = false,
        rapidfire = false,
        autoscroll = false,
        nospread = false,
        cbug = false,
        cbughelper = false,
        sensfix = false,
        aimbot = false,
        gmcar = false,
        carid = false,
        cardoor = false,
        carmodel = false,
        tmode = false,
        driftmode = false,
        easydrive = false,
        hyd = false,
        wheelgm = false,
        carshot = false,
        driftnitro = false,
        nitro = false,
        nofbike = false,
        hydmode = false,
        breakdance = false,
        deletehauba = false,
        fastbrake = false,
        carjump = false,
        act50 = false,
        fastfire = false,
        numhp = false,
        fullhp = false,
        noradio = false,
        fisheye = false,
        nametags = false,
        skeletal = false,
        espbox = false,
        infbar = false,
        chathelper = false,
        thermalvision = false,
        nightvision = false,
        chanceHit = 0.0,
        maxDistanceSilent = 80.0,
        fieldOfSearch = 8.0,
        showdist = false,
        silentaim = false,
        infinityfuel = false,
        shotThrxWalls = true,
        speedfastwalk = 2
    }
}, 'Advanced_SADFI_MENU.ini')

inicfg.save(HLcfg, 'Advanced_SADFI_MENU.ini')


local elements = {
    checkbox = {
        infinityrun = imgui.ImBool(HLcfg.config.infinityrun),
        fisheye = imgui.ImBool(HLcfg.config.fisheye),
        silentaim = imgui.ImBool(HLcfg.config.silentaim),
        nametags = imgui.ImBool(HLcfg.config.nametags),
        skeletal = imgui.ImBool(HLcfg.config.skeletal),
        espbox = imgui.ImBool(HLcfg.config.espbox),
        infbar = imgui.ImBool(HLcfg.config.infbar),
        chathelper = imgui.ImBool(HLcfg.config.chathelper),
        thermalvision = imgui.ImBool(HLcfg.config.thermalvision),
        nightvision = imgui.ImBool(HLcfg.config.nightvision),
        showdist = imgui.ImBool(HLcfg.config.showdist),
        infinityrun = imgui.ImBool(HLcfg.config.infinityrun),
        fastbrake = imgui.ImBool(HLcfg.config.fastbrake),
        fullhp = imgui.ImBool(HLcfg.config.fullhp),
        numhp = imgui.ImBool(HLcfg.config.numhp),
        act50 = imgui.ImBool(HLcfg.config.act50),
        fastfire = imgui.ImBool(HLcfg.config.fastfire),
        fastdeagle = imgui.ImBool(HLcfg.config.fastdeagle),
        carjump = imgui.ImBool(HLcfg.config.carjump),
        deletehauba = imgui.ImBool(HLcfg.config.deletehauba),
        noradio = imgui.ImBool(HLcfg.config.fastdeagle),
        breakdance = imgui.ImBool(HLcfg.config.breakdance),
        tmode = imgui.ImBool(HLcfg.config.tmode),
        infinityfuel = imgui.ImBool(HLcfg.config.infinityfuel),
        hydmode = imgui.ImBool(HLcfg.config.hydmode),
        nitro = imgui.ImBool(HLcfg.config.nitro),
        carshot = imgui.ImBool(HLcfg.config.carshot),
        driftnitro = imgui.ImBool(HLcfg.config.driftnitro),
        gmcar = imgui.ImBool(HLcfg.config.gmcar),
        carid = imgui.ImBool(HLcfg.config.carid),
        carmodel = imgui.ImBool(HLcfg.config.carmodel),
        cardoor = imgui.ImBool(HLcfg.config.cardoor),
        driftmode = imgui.ImBool(HLcfg.config.gmcar),
        nofbike = imgui.ImBool(HLcfg.config.nofbike),
        easydrive = imgui.ImBool(HLcfg.config.easydrive),
        wheelgm = imgui.ImBool(HLcfg.config.wheelgm),
        hyd = imgui.ImBool(HLcfg.config.hyd),
        noreload = imgui.ImBool(HLcfg.config.noreload),
        aimbot = imgui.ImBool(HLcfg.config.aimbot),
        sensfix = imgui.ImBool(HLcfg.config.sensfix),
        infinityammo = imgui.ImBool(HLcfg.config.infinityammo),
        rapidfire = imgui.ImBool(HLcfg.config.rapidfire),
        autoscroll = imgui.ImBool(HLcfg.config.autoscroll),
        nospread = imgui.ImBool(HLcfg.config.nospread),
        fullskills = imgui.ImBool(HLcfg.config.fullskills),
        cbug = imgui.ImBool(HLcfg.config.cbug),
        cbughelper = imgui.ImBool(HLcfg.config.cbughelper),
        GM = imgui.ImBool(HLcfg.config.GM),
        nofall = imgui.ImBool(HLcfg.config.nofall),
        airbrk = imgui.ImBool(HLcfg.config.nofall),
        antiafk = imgui.ImBool(HLcfg.config.antiafk),
        invisible = imgui.ImBool(HLcfg.config.invisible),
        ghostmode = imgui.ImBool(HLcfg.config.ghostmode),
        surfer = imgui.ImBool(HLcfg.config.surfer),
        fastwalk = imgui.ImBool(HLcfg.config.fastwalk),
        megajump = imgui.ImBool(HLcfg.config.megajump),
        cardmenu = imgui.ImBool(HLcfg.config.cardmenu),
        circlemenu = imgui.ImBool(HLcfg.config.circlemenu),
        normalmenu = imgui.ImBool(HLcfg.config.normalmenu),
        dark = imgui.ImBool(HLcfg.config.dark),
        darkgreen = imgui.ImBool(HLcfg.config.darkgreen),
        greensalad = imgui.ImBool(HLcfg.config.greensalad),
        darkblue = imgui.ImBool(HLcfg.config.darkblue),
        lightblue = imgui.ImBool(HLcfg.config.lightblue),
        red = imgui.ImBool(HLcfg.config.red),
        darkbrown = imgui.ImBool(HLcfg.config.darkbrown),
        darkorange = imgui.ImBool(HLcfg.config.darkorange),
        darkpurple = imgui.ImBool(HLcfg.config.darkpurple),
        pink = imgui.ImBool(HLcfg.config.pink),
        darkyellow = imgui.ImBool(HLcfg.config.darkyellow),
        bell = imgui.ImBool(HLcfg.config.bell),
        autoupdate = imgui.ImBool(HLcfg.config.autoupdate),
        langvisual = imgui.ImBool(HLcfg.config.langvisual),
        langmenu = imgui.ImBool(HLcfg.config.langmenu),
        langchat = imgui.ImBool(HLcfg.config.langchat),
        lang = imgui.ImBool(HLcfg.config.lang),
        reconnect = imgui.ImBool(HLcfg.config.reconnect),
        megajumpbmx = imgui.ImBool(HLcfg.config.megajumpbmx),
        antistun = imgui.ImBool(HLcfg.config.antistun),
        unfreeze = imgui.ImBool(HLcfg.config.unfreeze),
        blockoverdoseanimations = imgui.ImBool(HLcfg.config.blockoverdoseanimations),
        fakelags = imgui.ImBool(HLcfg.config.fakelags)
    },
    sliders = {
        speedsurfer = imgui.ImInt(HLcfg.config.speedfastwalk),
        chanceHit = imgui.ImInt(HLcfg.config.chanceHit),
        maxDistanceSilent = imgui.ImInt(HLcfg.config.maxDistanceSilent),
        speedfastwalk = imgui.ImInt(HLcfg.config.speedfastwalk)
    }
}

--[[
	Coordinates List
	To add more coordinates just copy one of those lines and change its name & coordinates

	Format: ["NAME"] = "interior_id, X, Y, Z" -- Replace NAME,  X,  Y & Z

]]

local coordinates =
{
	["Interior: 24/7 1"]           						= "17, -25.884498, -185.868988, 1003.546875",
	["Interior: 24/7 2"]           						= "10, 6.091179, -29.271898, 1003.549438",
	["Interior: 24/7 3"]           						= "18, -30.946699, -89.609596, 1003.546875",
	["Interior: 24/7 4"]           						= "16, -25.132598, -139.066986, 1003.546875",
	["Interior: 24/7 5"]           						= "4, -27.312299, -29.277599, 1003.557250",
	["Interior: 24/7 6"]           						= "6, -26.691598, -55.714897, 1003.546875",
	["Interior: Airport ticket desk"]   				= "14, -1827.147338, 7.207417, 1061.143554",
	["Interior: Airport baggage reclaim"]				= "14, -1861.936889, 54.908092, 1061.143554",
	["Interior: Shamal"]           						= "1, 1.808619, 32.384357, 1199.593750",
	["Interior: Andromada"]           					= "9, 315.745086, 984.969299, 1958.919067",
	["Interior: Ammunation 1"]          				= "1, 286.148986, -40.644397, 1001.515625",
	["Interior: Ammunation 2"]          				= "4, 286.800994, -82.547599, 1001.515625",
	["Interior: Ammunation 3"]          				= "6, 296.919982, -108.071998, 1001.515625",
	["Interior: Ammunation 4"]          				= "7, 314.820983, -141.431991, 999.601562",
	["Interior: Ammunation 5"]          				= "6, 316.524993, -167.706985, 999.593750",
	["Interior: Ammunation booths"]     				= "7, 302.292877, -143.139099, 1004.062500",
	["Interior: Ammunation range"]      				= "7, 298.507934, -141.647048, 1004.054748",
	["Interior: Blastin fools hallway"] 				= "3, 1038.531372, 0.111030, 1001.284484",
	["Interior: Budget inn motel room"] 				= "12, 444.646911, 508.239044, 1001.419494",
	["Interior: Jefferson motel"]       				= "15, 2215.454833, -1147.475585, 1025.796875",
	["Interior: Off track betting shop"]				= "3, 833.269775, 10.588416, 1004.179687",
	["Interior: Sex shop"]      						= "3, -103.559165, -24.225606, 1000.718750",
	["Interior: Meat factory"]      					= "1, 963.418762, 2108.292480, 1011.030273",
	["Interior: Zeros RC shop"]      					= "6, -2240.468505, 137.060440, 1035.414062",
	["Interior: Dillimore gas station"] 				= "0, 663.836242, -575.605407, 16.343263",
	["Interior: Catigulas basement"]    				= "1, 2169.461181, 1618.798339, 999.976562",
	["Interior: FDC Janitors room"]     				= "10, 1889.953369, 1017.438293, 31.882812",
	["Interior: Woozies office"]        				= "1, -2159.122802, 641.517517, 1052.381713",
	["Interior: Binco"]      							= "15, 207.737991, -109.019996, 1005.132812",
	["Interior: Didier sachs"]          				= "14, 204.332992, -166.694992, 1000.523437",
	["Interior: Prolaps"] 	     						= "3, 207.054992, -138.804992, 1003.507812",
	["Interior: Suburban"]      						= "1, 203.777999, -48.492397, 1001.804687",
	["Interior: Victim"]      							= "5, 226.293991, -7.431529, 1002.210937",
	["Interior: Zip"]      								= "18, 161.391006, -93.159156, 1001.804687",
	["Interior: Club"]      							= "17, 493.390991, -22.722799, 1000.679687",
	["Interior: Bar"]      								= "11, 501.980987, -69.150199, 998.757812",
	["Interior: Lil probe inn"]      					= "18, -227.027999, 1401.229980, 27.765625",
	["Interior: Jays diner"]      						= "4, 457.304748, -88.428497, 999.554687",
	["Interior: Gant bridge diner"]     				= "5, 454.973937, -110.104995, 1000.077209",
	["Interior: Secret valley diner"]   				= "6, 435.271331, -80.958938, 999.554687",
	["Interior: World of coq"]      					= "1, 452.489990, -18.179698, 1001.132812",
	["Interior: Welcome pump"]      					= "1, 681.557861, -455.680053, -25.609874",
	["Interior: Burger shot"]      						= "10, 375.962463, -65.816848, 1001.507812",
	["Interior: Cluckin bell"]      					= "9, 369.579528, -4.487294, 1001.858886",
	["Interior: Well stacked pizza"]    				= "5, 373.825653, -117.270904, 1001.499511",
	["Interior: Rusty browns donuts"]   				= "17, 381.169189, -188.803024, 1000.632812",
	["Interior: Denise room"]      						= "1, 244.411987, 305.032989, 999.148437",
	["Interior: Katie room"]      						= "2, 271.884979, 306.631988, 999.148437",
	["Interior: Helena room"]      						= "3, 291.282989, 310.031982, 999.148437",
	["Interior: Michelle room"]      					= "4, 302.180999, 300.722991, 999.148437",
	["Interior: Barbara room"]      					= "5, 322.197998, 302.497985, 999.148437",
	["Interior: Millie room"]      						= "6, 346.870025, 309.259033, 999.155700",
	["Interior: Sherman dam"]      						= "17, -959.564392, 1848.576782, 9.000000",
	["Interior: Planning dept"]      					= "3, 384.808624, 173.804992, 1008.382812",
	["Interior: Area 51"]      							= "0, 223.431976, 1872.400268, 13.734375",
	["Interior: LS gym"]      							= "5, 772.111999, -3.898649, 1000.728820",
	["Interior: SF gym"]      							= "6, 774.213989, -48.924297, 1000.585937",
	["Interior: LV gym"]      							= "7, 773.579956, -77.096694, 1000.655029",
	["Interior: B Dups house"]      					= "3, 1527.229980, -11.574499, 1002.097106",
	["Interior: B Dups crack pad"]      				= "2, 1523.509887, -47.821197, 1002.130981",
	["Interior: Cj's house"]      						= "3, 2496.049804, -1695.238159, 1014.742187",
	["Interior: Madd Doggs mansion"]    				= "5, 1267.663208, -781.323242, 1091.906250",
	["Interior: Og Locs house"]      					= "3, 513.882507, -11.269994, 1001.565307",
	["Interior: Ryders house"]      					= "2, 2454.717041, -1700.871582, 1013.515197",
	["Interior: Sweets house"]      					= "1, 2527.654052, -1679.388305, 1015.498596",
	["Interior: Crack factory"]      					= "2, 2543.462646, -1308.379882, 1026.728393",
	["Interior: Big spread ranch"]      				= "3, 1212.019897, -28.663099, 1000.953125",
	["Interior: Fanny batters"]      					= "6, 761.412963, 1440.191650, 1102.703125",
	["Interior: Strip club"]      						= "2, 1204.809936, -11.586799, 1000.921875",
	["Interior: Strip club private room"]				= "2, 1204.809936, 13.897239, 1000.921875",
	["Interior: Unnamed brothel"]                       = "3, 942.171997, -16.542755, 1000.929687",
	["Interior: Tiger skin brothel"]                    = "3, 964.106994, -53.205497, 1001.124572",
	["Interior: Pleasure domes"]                        = "3, -2640.762939, 1406.682006, 906.460937",
	["Interior: Liberty city outside"]                  = "1, -729.276000, 503.086944, 1371.971801",
	["Interior: Liberty city inside"]                   = "1, -794.806396, 497.738037, 1376.195312",
	["Interior: Gang house"]      		                = "5, 2350.339843, -1181.649902, 1027.976562",
	["Interior: Colonel Furhberger's"]                  = "8, 2807.619873, -1171.899902, 1025.570312",
	["Interior: Crack den"]      		                = "5, 318.564971, 1118.209960, 1083.882812",
	["Interior: Warehouse 1"]      		                = "1, 1412.639892, -1.787510, 1000.924377",
	["Interior: Warehouse 2"]      		                = "18, 1302.519897, -1.787510, 1001.028259",
	["Interior: Sweets garage"]      	                = "0, 2522.000000, -1673.383911, 14.866223",
	["Interior: Lil probe inn toilet"]                  = "18, -221.059051, 1408.984008, 27.773437",
	["Interior: Unused safe house"]                     = "12, 2324.419921, -1145.568359, 1050.710083",
	["Interior: RC Battlefield"]                        = "10, -975.975708, 1060.983032, 1345.671875",
	["Interior: Barber 1"]      		                = "2, 411.625976, -21.433298, 1001.804687",
	["Interior: Barber 2"]      		                = "3, 418.652984, -82.639793, 1001.804687",
	["Interior: Barber 3"]      		                = "12, 412.021972, -52.649898, 1001.898437",
	["Interior: Tatoo parlour 1"]                       = "16, -204.439987, -26.453998, 1002.273437",
	["Interior: Tatoo parlour 2"]                       = "17, -204.439987, -8.469599, 1002.273437",
	["Interior: Tatoo parlour 3"]                       = "3, -204.439987, -43.652496, 1002.273437",
	["Interior: LS police HQ"]      	                = "6, 246.783996, 63.900199, 1003.640625",
	["Interior: SF police HQ"]      	                = "10, 246.375991, 109.245994, 1003.218750",
	["Interior: LV police HQ"]      	                = "3, 288.745971, 169.350997, 1007.171875",
	["Interior: Car school"]      		                = "3, -2029.798339, -106.675910, 1035.171875",
	["Interior: 8-Track"]      			                = "7, -1398.065307, -217.028900, 1051.115844",
	["Interior: Bloodbowl"]      		                = "15, -1398.103515, 937.631164, 1036.479125",
	["Interior: Dirt track"]      		                = "4, -1444.645507, -664.526000, 1053.572998",
	["Interior: Kickstart"]      		                = "14, -1465.268676, 1557.868286, 1052.531250",
	["Interior: Vice stadium"]      	                = "1, -1401.829956, 107.051300, 1032.273437",
	["Interior: SF Garage"]      		                = "0, -1790.378295, 1436.949829, 7.187500",
	["Interior: LS Garage"]      		                = "0, 1643.839843, -1514.819580, 13.566620",
	["Interior: SF Bomb shop"]      	                = "0, -1685.636474, 1035.476196, 45.210937",
	["Interior: Blueberry warehouse"]                   = "0, 76.632553, -301.156829, 1.578125",
	["Interior: LV Warehouse 1"]                        = "0, 1059.895996, 2081.685791, 10.820312",
	["Interior: LV Warehouse 2"]      	                = "0, 1059.180175, 2148.938720, 10.820312",
	["Interior: Catigulas"]      		                = "1, 2131.507812, 1600.818481, 1008.359375",
	["Interior: Bank"]      			                = "0, 2315.952880, -1.618174, 26.742187",
	["Interior: Bank"]      			                = "0, 2319.714843, -14.838361, 26.749565",
	["Interior: LS Atruim"]      		                = "18, 1710.433715, -1669.379272, 20.225049",
	["Los Santos : 8 Ball's Autos"]                     = "0, 1834.70385742188, -1856.40185546875, 13.3897476196289",
	["Los Santos : Airport"]                            = "0, 1682.73156738281, -2264.05786132813, 13.5079345703125",
	["Los Santos : Alhambra Club"]                      = "0, 1828.20690917969, -1682.60571289063, 13.546875",
	["Los Santos : Atrium"]                             = "0, 1722.0576171875, -1605.82824707031, 13.546875",
	["Los Santos : Big Smoke's Crack Palace"]           = "0, 2518.2197265625, -1272.61791992188, 34.8740921020508",
	["Los Santos : Big Smoke's Crack Palace (inside)"]  = "2, 2580.02124023438, -1300.33801269531, 1060.9921875",
	["Los Santos : Candy Suxx Billboard"]               = "0, 419.148376464844, -1368.41320800781, 41.140625X",
	["Los Santos : Cathay Theater"]                     = "0, 1022.50787353516, -1133.8857421875, 23.828125",
	["Los Santos : Cemetery"]                           = "0, 832.375915527344, -1101.96203613281, 24.296875",
	["Los Santos : CJ's home"]                          = "0, 2495.32275390625, -1685.42651367188, 13.5127220153809",
	["Los Santos : Colonel Fuhrberger's"]               = "0, 2820.60961914063, -1182.16235351563, 25.232967376709",
	["Los Santos : Didier Sachs Shop"]                  = "0, 450.887725830078, -1479.1318359375, 30.8057765960693",
	["Los Santos : Ghost Graffiti (20:00-6:00)"]        = "0, 927.000305175781, -1058.16821289063, 24.7002906799316",
	["Los Santos : Grotti (Ferrari) Billboard"]         = "0, 487.795166015625, -1326.62707519531, 28.0078125",
	["Los Santos : GTA III and GTA: Vice City logos"]   = "0, 788.071899414063, -1035.47729492188, 24.6282062530518",
	["Los Santos : Highest building of Los Santos"]     = "0, 1531.17175292969, -1357.61804199219, 329.453460693359",
	["Los Santos : Inside Track Betting"]               = "0, 1631.77648925781, -1167.0690979688, 24.078125",
	["Los Santos : Jefferson Hotel"]                    = "0, 2221.89038085938, -1159.849609375, 25.7330799102783",
	["Los Santos : Jesus Saves"]                        = "0, 2719.21704101563, -2009.17846679688, 13.5546875",
	["Los Santos : Lemmings Pole"]     		    	    = "0, 2392.33569335938, -1511.87316894531, 23.8348655700684",
	["Los Santos : Lowrider Competition"]               = "0, 1816.08728027344, -1929.91040039063, 13.5433483123779",
	["Los Santos : Market Station"]     		    	= "0, 826.761840820313, -1358.68713378906, -0.5078125",
	["Los Santos : Observatory"]     	    	    	= "0, 1191.98645019531, -2036.88049316406, 69.0078125",
	["Los Santos : Ocean Docks"]     		    		= "0, 2184.40185546875, -2260.38232421875, 13.4100790023804",
	["Los Santos : Police brutality"]     		    	= "0, 1540.00646972656, -1627.77075195313, 13.3828125",
	["Los Santos : Police Departament"]     	    	= "0, 1540.84509277344, -1675.45324707031, 13.5513896942139",
	["Los Santos : Roboi's Food Mart"]     		    	= "0, 1350.62097167969, -1744.802734375, 13.3808469772339",
	["Los Santos : Stadium"]     			    		= "0, 2684.78198242188, -1689.56359863281, 9.43039894104004",
	["Los Santos : Ten Green Bottles"]    				= "0, 2304.39965820313, -1651.30908203125, 14.5202884674072",
	["Los Santos : The Pig Pen Strip Club"]     	    = "0, 2421.12280273438, -1228.55883789063, 24.8796482086182",
	["Los Santos : Tiki Theater"]     		  		    = "0, 2348.78637695313, -1463.54272460938, 24",
	["Los Santos : Triathalon"]     				    = "0, 181.06819152832, -1866.71862792969, 3.04375839233398",
	["Los Santos : Verona Beach Gym"]     			    = "0, 666.700561523438, -1880.67272949219, 5.46000003814697",
	["Los Santos : Vinewood Sign"]     				    = "0, 1386.48901367188, -822.793640136719, 73.6923141479492",
	["Los Santos : Vice City Hidden Package"]     	    = "0, 2354.03198242188, -1467.3642578125, 31.9559421539307",
	["Palomino Creek : Bank"]     			  		    = "0, 2306.333984375, -15.3912973403931, 26.7495651245117",
	["Palomino Creek : Cementry"]     				    = "0, 2240.06396484375, -61.6567649841309, 26.50661277771",
	["Palomino Creek : Empty Diner"]     			    = "0, 2337.83618164063, 6.2173113822937, 26.484375",
	["Palomino Creek : Glowing headstones"]     	    = "0, 2240.09130859375, -70.5344467163086, 26.5068187713623",
	["Palomino Creek : Rusty Wheelchair"]     		    = "0, 2123.24487304688, -90.2263793945313, 2.16398048400879",
	["Palomino Creek : Triathalon"]     			    = "0, 2139.28759765625, -65.8627624511719, 2.96075963973999",
	["Montgomery : Biowaste Well"]     			   	    = "0, 1277.96606445313, 292.559906005859, 19.5546875",
	["Montgomery : Inside Track Betting"]    		    = "0, 1292.03247070313, 269.481689453125, 19.5546875",
	["Dillimore : Max Pane - Bulletproof Glass"]        = "0, 658.372924804688, -569.527587890625, 16.3359375",
	["Dillimore : Police Departament"]     		  	    = "0, 635.456298828125, -571.612915039063, 16.3359375",
	["Blueberry : Liquor Store"]    		    		= "0, 254.497406005859, -66.0255889892578, 1.578125",
	["Blueberry : Locals Only Shop"]    		    	= "0, 276.548187255859, -157.536209106445, 1.5704517364502",
	["Fern Ridge : Catalina's Ex-boyfriends"]    	    = "0, 843.333190917969, -23.9582138061523, 62.7258110046387",
	["Angel Pine : Vice City Maps"]     		    	= "0, -2177.60961914063, -2437.34497070313, 30.625",
	["Flint County : Nazca Symbol"]     		    	= "0, -687.696716308594, -1017.00006103516, 73.6602172851563",
	["Flint County : Suicidal Photographer"]    	    = "0, -61.9707489013672, -1622.80908203125, 3.51299381256104",
	["Red County : North Rock"]     		    		= "0, 2570.11279296875, -644.1416015625, 136.548034667969",
	["San Fierro : Actual Piece of Cable"]     	    	= "0, -2540.97973632813, 1228.51245117188, 37.421875",
	["San Fierro : Airport"]     			    		= "0, -1425.78784179688, -292.410827636719, 14.1484375",
	["San Fierro : Big Pointy Building"]     	    	= "0, -1754.5322265625, 885.199584960938, 295.875",
	["San Fierro : Bridge Facts"]     		    		= "0, -2556.43603515625, 1224.98254394531, 42.1484375",
	["San Fierro : Cargo Ship"]     		    		= "0, -2474.16943359375, 1547.40283203125, 33.2273330688477",
	["San Fierro : Gaydar Station Club"]     	    	= "0, -2557.06982421875, 192.114242553711, 6.1554012298584",
	["San Fierro : Highest building of San Fierro"]     = "0, -1791.02185058594, 567.774047851563, 332.801940917969",
	["San Fierro : Hippy Statue"]     		    		= "0, -2496.01245117188, -16.239330291748, 25.765625",
	["San Fierro : Hippy Shopper"]     		    		= "0, -2597.46752929688, 59.5114707946777, 4.3359375",
	["San Fierro : Michelle's Autorepair"]     	    	= "0, -1786.46594238281, 1197.98132324219, 25.1193962097168",
	["San Fierro : Misty's Club"]     		    		= "0, -2246.36303710938, -88.0900344848633, 35.3203125",
	["San Fierro : No Easter Eggs Up Here"]     	    = "0, -2677.59228515625, 1594.87243652344, 217.273895263672",
	["San Fierro : Otto's Autos"]     		    		= "0, -1639.01281738281, 1202.3388671875, 7.22374629974365",
	["San Fierro : USS Numnutz"]     		    		= "0, -1878.22204589844, 1455.84631347656, 8.36595344543457",
	["San Fierro : Wang Cars"]     		   	    		= "0, -1990.1318359375, 288.736297607422, 34.149341583252",
	["San Fierro : War Memorial"]     		    		= "0, -2591.06958007813, -15.1639175415039, 4.328125",
	["San Fierro : Zero's RC Shop"]     		    	= "0, -2245.77856445313, 128.705490112305, 35.3203125",
	["San Fierro : Zombotech Corporation"]     	    	= "0, -1921.11633300781, 721.838928222656, 45.4453125",
	["Chiliad Mountain : House on the slope"]     	    = "0, -2799.70458984375, -1528.5595703125, 139.274612426758",
	["Chiliad Mountain : Top of Chiliad Mountain"]      = "0, -2329.65673828125, -1624.35437011719, 483.707550048828",
	["Back o Beyond : Ghost Car"]    		    		= "0, -862.708190917969, -2280.87768554688, 26.2417907714844",
	["Las Venturas : Airport"]     			    		= "0, 1697.70825195313, 1436.81311035156, 10.7489976882935",
	["Las Venturas : Caligula's Palace Casino"]         = "0, 2179.212890625, 1676.203125, 11.046875",
	["Las Venturas : Caligula's Palace Casino basement"]= "0, 2170.4248046875, 1618.86999511719, 999.9765625",
	["Las Venturas : Casino Floor Casino"]     	    	= "0, 1658.6943359375, 2259.54443359375, 10.8203125",
	["Las Venturas : Club"]    			    			= "0, 2507.13940429688, 1247.13256835938, 10.8203125",
	["Las Venturas : Girls XXX Strip Club"]     	    = "0, 2506.6494140625, 2129.15478515625, 10.8203125",
	["Las Venturas : Lemmings Pedestrians"]     	    = "0, 2014.46105957031, 2356.97924804688, 10.8203125",
	["Las Venturas : Minigun - 01"]     		    	= "0, 2678.95947265625, 835.770690917969, 21.7657508850098",
	["Las Venturas : Minigun - 02"]     		    	= "0, 2495.65014648438, 2398.44189453125, 4.2109375",
	["Las Venturas : Minigun - 03"]     		    	= "0, 242.109191894531, 1859.30590820313, 14.0840120315552",
	["Las Venturas : Nude Strippers Daily Strip Club"]  = "0, 2543.13793945313, 1018.91442871094, 10.8125171661377",
	["Las Venturas : Police Departament"]    	    	= "0, 2286.89965820313, 2424.51220703125, 10.8203125",
	["Las Venturas : Sex shop"]     		    		= "0, 2096.162109375, 2077.07177734375, 10.8203125",
	["Las Venturas : The Craw Bar"]     		    	= "0, 2441.26611328125, 2059.05712890625, 10.8203125",
	["Las Venturas : The Four Dragons Casino"]     	    = "0, 2035.13293457031, 1007.79144287109, 10.8203125",
	["Las Venturas : VRock Hotel"]     		    		= "0, 2628.52221679688, 2321.35693359375, 10.671875",
	["Las Venturas : Wedding Chapel Open 24HR"]         = "0, 2434.20092773438, 1293.18017578125, 10.8203125",
	["Las Venturas : Wedding Chapel Open 7 Days"]       = "0, 2476.23413085938, 920.440734863281, 10.8203125",
	["Las Venturas : Welding & Weddings"]    	    	= "0, 2002.8212890625, 2288.66259765625, 10.8203125",
	["Bone County : Antena"]     			    		= "0, -225.078796386719, 1396.11413574219, 172.4140625",
	["Bone County : Lil' Probe Inn"]     		    	= "0, -84.36767578125, 1370.42724609375, 10.2734375",
	["Bone County : Area 69 (inside)"]     		    	= "0, 268.621276855469, 1887.26489257813, -29.53125",
	["Bone County : Astro Drive-In"]    		    	= "0, 148.567153930664, 1100.38610839844, 14.0299491882324",
	["Bone County : Cave"]     			    			= "0, -400.1201171875, 1233.3515625, 5.85399532318115",
	["Bone County : Los Brujas"]    		    		= "0, -373.940795898438, 2196.25903320313, 42.0821113586426",
	["Bone County : Regular Tom"]     		    		= "0, -318.049346923828, 1843.87377929688, 42.359375",
	["Bone County : The Big Ear"]     		    		= "0, -367.559143066406, 1581.53552246094, 76.1306381225586",
	["Bone County : The Big Ear (top)"]     	    	= "0, -346.331298828125, 1626.33447265625, 136.319305419922",
	["Bone County : The Big Spread Ranch Strip Club"]   = "0, 693.90673828125, 1940.20239257813, 5.5390625",
	["Verdant Meadows : Abandoned Airfield"]     	    = "0, 404.54638671875, 2488.81689453125, 16.484375",
	["El Castillo del Diablo : Snake Ferm"]     	    = "0, -36.4142532348633, 2336.65209960938, 24.1347389221191",
	["El Castillo del Diablo : Mass Grave"]     	    = "0, -132.202545166016, 2249.17138671875, 32.933177947998",
	["Fort Carson : Driveway Beagle"]     		    	= "0, -29.5530853271484, 1084.95336914063, 19.7455101013184",
	["The Sherman Dam : Generator Hall"]     	    	= "0, -593.485046386719, 2020.72277832031, 60.3828125",
	["The Sherman Dam : Sherman Dam Memorial"]          = "0, -889.46484375, 1972.90734863281, 60.3285140991211",
	["Las Payasadas : Largest Chicken"]     	    	= "0, -217.903747558594, 2662.41235351563, 62.6015625",
	["Las Barrancas : Largest Cow"]     		    	= "0, -857.239135742188, 1535.8515625, 28.1875",
	["Las Barrancas : Hopi Ruins"]     		    		= "0, -722.901062011719, 1522.61572265625, 39.5409965515137",
	["Tierra Robada : Aldea Malvada: the Lost Pueblo"]  = "0, -1298.81420898438, 2505.07299804688, 86.9625854492188",
	["Tierra Robada : Phalic Rock"]     		    	= "0, -547.985473632813, 2478.28100585938, 66.7793350219727",
	["Los Santos : Lemmings Pole"]     		    		= "0,  2392.33569335938, -1511.87316894531, 23.8348655700684",
	["Los Santos : Lowrider Competition"]     	    	= "0, 1816.08728027344, -1929.91040039063, 13.5433483123779",
	["Los Santos : Market Station"]     		    	= "0, 826.761840820313, -1358.68713378906, -0.5078125",
	["Los Santos : Observatory"]     		    		= "0, 1191.98645019531, -2036.88049316406, 69.0078125",
	["Los Santos : Ocean Docks"]     		    		= "0, 2184.40185546875, -2260.38232421875, 13.4100790023804",
	["Los Santos : Police brutality"]     		    	= "0, 1540.00646972656, -1627.77075195313, 13.3828125",
	["Los Santos : Police Departament"]     	    	= "0, 1540.84509277344, -1675.45324707031, 13.5513896942139",
	["Los Santos : Roboi's Food Mart"]     		    	= "0, 1350.62097167969, -1744.802734375, 13.3808469772339",
	["Los Santos : Stadium"]     		 	    		= "0, 2684.78198242188, -1689.56359863281, 9.43039894104004",
	["Los Santos : Ten Green Bottles"]     		    	= "0, 2304.39965820313, -1651.30908203125, 14.5202884674072",
	["Los Santos : The Pig Pen Strip Club"]     	    = "0, 2421.12280273438, -1228.55883789063, 24.8796482086182",
	["Los Santos : Tiki Theater"]     		    		= "0, 2348.78637695313, -1463.54272460938, 24",
	["Los Santos : Triathalon"]     		    		= "0, 181.06819152832, -1866.71862792969, 3.04375839233398",
	["Los Santos : Verona Beach Gym"]     		    	= "0, 666.700561523438, -1880.67272949219, 5.46000003814697",
	["Los Santos : Vinewood Sign"]     		    		= "0, 1386.48901367188, -822.793640136719, 73.6923141479492",
	["Los Santos : Vice City Hidden Package"]     	    = "0, 2354.03198242188, -1467.3642578125, 31.9559421539307",
	["Palomino Creek : Bank"]     			    		= "0, 2306.333984375, -15.3912973403931, 26.7495651245117",
	["Palomino Creek : Cementry"]     		    		= "0, 2240.06396484375, -61.6567649841309, 26.50661277771",
	["Palomino Creek : Empty Diner"]     		    	= "0, 2337.83618164063, 6.2173113822937, 26.484375",
	["Palomino Creek : Glowing headstones"]     	    = "0, 2240.09130859375, -70.5344467163086, 26.5068187713623",
	["Palomino Creek : Rusty Wheelchair"]     	    	= "0, 2123.24487304688, -90.2263793945313, 2.16398048400879",
	["Palomino Creek : Triathalon"]     		    	= "0, 2139.28759765625, -65.8627624511719, 2.96075963973999",
	["Montgomery : Biowaste Well"]     		    		= "0, 1277.96606445313, 292.559906005859, 19.5546875",
	["Montgomery : Inside Track Betting"]     	    	= "0, 1292.03247070313, 269.481689453125, 19.5546875",
	["Dillimore : Max Pane - Bulletproof Glass"]        = "0, 658.372924804688, -569.527587890625, 16.3359375",
	["Dillimore : Police Departament"]     		    	= "0, 635.456298828125, -571.612915039063, 16.3359375",
	["Blueberry : Liquor Store"]     		    		= "0, 254.497406005859, -66.0255889892578, 1.578125",
	["Blueberry : Locals Only Shop"]     		    	= "0, 276.548187255859, -157.536209106445, 1.5704517364502",
	["Fern Ridge : Catalina's Ex-boyfriends"]     	    = "0, 843.333190917969, -23.9582138061523, 62.7258110046387",
	["Angel Pine : Vice City Maps"]     		    	= "0, -2177.60961914063, -2437.34497070313, 30.625",
	["Flint County : Nazca Symbol"]     		    	= "0, -687.696716308594, -1017.00006103516, 73.6602172851563",
	["Flint County : Suicidal Photographer"]     	    = "0, -61.9707489013672, -1622.80908203125, 3.51299381256104",
	["Red County : North Rock"]     		    		= "0, 2570.11279296875, -644.1416015625, 136.548034667969",
	["San Fierro : Actual Piece of Cable"]     	    	= "0, -2540.97973632813, 1228.51245117188, 37.421875",
	["San Fierro : Airport"]     			    		= "0, -1425.78784179688, -292.410827636719, 14.1484375",
	["San Fierro : Big Pointy Building"]     	    	= "0, -1754.5322265625, 885.199584960938, 295.875",
	["San Fierro : Bridge Facts"]     		    		= "0, -2556.43603515625, 1224.98254394531, 42.1484375",
	["San Fierro : Cargo Ship"]     		    		= "0, -2474.16943359375, 1547.40283203125, 33.2273330688477",
	["San Fierro : Gaydar Station Club"]     	    	= "0, -2557.06982421875, 192.114242553711, 6.1554012298584",
	["San Fierro : Highest building of San Fierro"]     = "0, -1791.02185058594, 567.774047851563, 332.801940917969",
	["San Fierro : Hippy Statue"]     		    		= "0, -2496.01245117188, -16.239330291748, 25.765625",
	["San Fierro : Hippy Shopper"]     		    		= "0, -2597.46752929688, 59.5114707946777, 4.3359375",
	["San Fierro : Michelle's Autorepair"]     	    	= "0, -1786.46594238281, 1197.98132324219, 25.1193962097168",
	["San Fierro : Misty's Club"]     		    		= "0, -2246.36303710938, -88.0900344848633, 35.3203125",
	["San Fierro : No Easter Eggs Up Here"]     	    = "0, -2677.59228515625, 1594.87243652344, 217.273895263672",
	["San Fierro : Otto's Autos"]     		    		= "0, -1639.01281738281, 1202.3388671875, 7.22374629974365",
	["San Fierro : USS Numnutz"]     		    		= "0, -1878.22204589844, 1455.84631347656, 8.36595344543457",
	["San Fierro : Wang Cars"]     		  	    		= "0, -1990.1318359375, 288.736297607422, 34.149341583252",
	["San Fierro : War Memorial"]    		    		= "0, -2591.06958007813, -15.1639175415039, 4.328125",
	["San Fierro : Zero's RC Shop"]     		    	= "0, -2245.77856445313, 128.705490112305, 35.3203125",
	["San Fierro : Zombotech Corporation"]     	    	= "0, -1921.11633300781, 721.838928222656, 45.4453125",
	["Chiliad Mountain : House on the slope"]     	    = "0, -2799.70458984375, -1528.5595703125, 139.274612426758",
	["Chiliad Mountain : Top of Chiliad Mountain"]      = "0, -2329.65673828125, -1624.35437011719, 483.707550048828",
	["Back o Beyond : Ghost Car"]     		    		= "0, -862.708190917969, -2280.87768554688, 26.2417907714844",
	["Las Venturas : Airport"]     			    		= "0, 1697.70825195313, 1436.81311035156, 10.7489976882935",
	["Las Venturas : Caligula's Palace Casino"]         = "0, 2179.212890625, 1676.203125, 11.046875",
	["Las Venturas : Caligula's Palace Casino basement"]= "0, 2170.4248046875, 1618.86999511719, 999.9765625",
	["Las Venturas : Casino Floor Casino"]     	    	= "0, 1658.6943359375, 2259.54443359375, 10.8203125",
	["Las Venturas : Club"]     			    		= "0, 2507.13940429688, 1247.13256835938, 10.8203125",
	["Las Venturas : Girls XXX Strip Club"]     	    = "0, 2506.6494140625, 2129.15478515625, 10.8203125",
	["Las Venturas : Lemmings Pedestrians"]     	    = "0, 2014.46105957031, 2356.97924804688, 10.8203125",
	["Las Venturas : Minigun - 01"]     		    	= "0, 2678.95947265625, 835.770690917969, 21.7657508850098",
	["Las Venturas : Minigun - 02"]     		    	= "0, 2495.65014648438, 2398.44189453125, 4.2109375",
	["Las Venturas : Minigun - 03"]     		    	= "0, 242.109191894531, 1859.30590820313, 14.0840120315552",
	["Las Venturas : Nude Strippers Daily Strip Club"]  = "0, 2543.13793945313, 1018.91442871094, 10.8125171661377",
	["Las Venturas : Police Departament"]     	    	= "0, 2286.89965820313, 2424.51220703125, 10.8203125",
	["Las Venturas : Sex shop"]     		    		= "0, 2096.162109375, 2077.07177734375, 10.8203125",
	["Las Venturas : The Craw Bar"]     		    	= "0, 2441.26611328125, 2059.05712890625, 10.8203125",
	["Las Venturas : The Four Dragons Casino"]     	    = "0, 2035.13293457031, 1007.79144287109, 10.8203125",
	["Las Venturas : VRock Hotel"]     		    		= "0, 2628.52221679688, 2321.35693359375, 10.671875",
	["Las Venturas : Wedding Chapel Open 24HR"]         = "0, 2434.20092773438, 1293.18017578125, 10.8203125",
	["Las Venturas : Wedding Chapel Open 7 Days"]       = "0, 2476.23413085938, 920.440734863281, 10.8203125",
	["Las Venturas : Welding & Weddings"]     	    	= "0, 2002.8212890625, 2288.66259765625, 10.8203125",
	["Bone County : Antena"]     			    		= "0, -225.078796386719, 1396.11413574219, 172.4140625",
	["Bone County : Lil' Probe Inn"]     		    	= "0, -84.36767578125, 1370.42724609375, 10.2734375",
	["Bone County : Area 69 (inside)"]     		    	= "0, 268.621276855469, 1887.26489257813, -29.53125",
	["Bone County : Astro Drive-In"]     		    	= "0, 148.567153930664, 1100.38610839844, 14.0299491882324",
	["Bone County : Cave"]     			    			= "0, -400.1201171875, 1233.3515625, 5.85399532318115",
	["Bone County : Los Brujas"]     		    		= "0, -373.940795898438, 2196.25903320313, 42.0821113586426",
	["Bone County : Regular Tom"]     		    		= "0, -318.049346923828, 1843.87377929688, 42.359375",
	["Bone County : The Big Ear"]     		    		= "0, -367.559143066406, 1581.53552246094, 76.1306381225586",
	["Bone County : The Big Ear (top)"]     	    	= "0, -346.331298828125, 1626.33447265625, 136.319305419922",
	["Bone County : The Big Spread Ranch Strip Club"]   = "0, 693.90673828125, 1940.20239257813, 5.5390625",
	["Verdant Meadows : Abandoned Airfield"]     	    = "0, 404.54638671875, 2488.81689453125, 16.484375",
	["El Castillo del Diablo : Snake Ferm"]     	    = "0, -36.4142532348633, 2336.65209960938, 24.1347389221191",
	["El Castillo del Diablo : Mass Grave"]     	    = "0, -132.202545166016, 2249.17138671875, 32.933177947998",
	["Fort Carson : Driveway Beagle"]     		    	= "0, -29.5530853271484, 1084.95336914063, 19.7455101013184",
	["The Sherman Dam : Generator Hall"]     	    	= "0, -593.485046386719, 2020.72277832031, 60.3828125",
	["The Sherman Dam : Sherman Dam Memorial"]     	    = "0, -889.46484375, 1972.90734863281, 60.3285140991211",
	["Las Payasadas : Largest Chicken"]     	    	= "0, -217.903747558594, 2662.41235351563, 62.6015625",
	["Las Barrancas : Largest Cow"]     		    	= "0, -857.239135742188, 1535.8515625, 28.1875",
	["Las Barrancas : Hopi Ruins"]     		    		= "0, -722.901062011719, 1522.61572265625, 39.5409965515137",
	["Tierra Robada : Aldea Malvada: the Lost Pueblo"]  = "0, -1298.81420898438, 2505.07299804688, 86.9625854492188",
	["Tierra Robada : Phalic Rock"]     		    	= "0, -547.985473632813, 2478.28100585938, 66.7793350219727",
	["Liberty City : Marco's Bistro"]     		    	= "1, -748.254211425781, 488.972473144531, 1371.58898925781",
	["Liberty City : Inside Marco's Bistro"]     	    = "1, -781.811340332031, 489.323181152344, 1376.1953125",
	["Interior : Planning Department"]     	    	    = "3, 388.872009277344, 173.811111450195, 1008.3828125",
	["Interior : Barn"]     			    			= "3, 291.141082763672, 310.135040283203, 999.1484375",
	["Interior : Millie's House"]     		    		= "6, 345.892669677734, 306.162902832031, 999.1484375",
	["Interior : Cafe"]     			    			= "5, 450.560333251953, -107.105247497559, 1000.88635253906",
	["Interior : Place A"]     			    			= "3, 1041.75390625, 10.1560220718384, 1001.28448486328",
	["Interior : Place B"]     			    			= "3, 959.504577636719, -7.69411325454712, 1001.1484375",
	["Interior : Place C"]     			    			= "3, 962.10498046875, -50.9754791259766, 1001.1171875",
}

--Keys
local keys =
{
	menu_key1		= 0xA2,  -- Left Control
	menu_key2 		= 0x54,  -- T
	quick_teleport1 = 0x58,  -- X
	quick_teleport2 = 0x59,  -- X
}

-- Script Dependencies
local imgui       = require 'imgui'

--------------------------------------------------
-- Libraries
http          = require 'copas.http'
os            = require 'os'
--------------------------------------------------


local script =
{
	quick_teleport = imgui.ImBool(false),
	current_coords = imgui.ImBool(false),
	auto_z		   = imgui.ImBool(false),
	show_coord     = imgui.ImBool(false),
	shotcut 	   = imgui.ImBool(false),
    coords  	   = imgui.ImBuffer(24),
	search_text    = imgui.ImBuffer(60),
	filter         = "",
	radio_button   = imgui.ImInt(0),
	radio_button2   = imgui.ImInt(2),
	radio_button3   = imgui.ImInt(1),
	radio_button4   = imgui.ImInt(1),
}

-- imgui.Spinner("##spinner", 10, 3, imgui.GetColorU32(imgui.GetStyle().Colors[imgui.Col.ButtonHovered]))



local bindID = 0

local pRapidSpeed = imgui.ImInt(1)
local pMemory = imgui.ImInt(536870912)
local pDrawEdit = imgui.ImInt(800) 
local pFogEdit = imgui.ImInt(200)
local pTime = imgui.ImInt(1)
local pWeather = imgui.ImInt(1)
local pFovedit = imgui.ImInt(70)
local pAmmo = imgui.ImInt(100)
local pWeap = imgui.ImInt(1)

local checkboxs = {
	{"noshadows"},
	{"noeffects"},
	{"vehlods"},
	{"fpsunlocker"},
	{"noplanelines"},
	{"vsync"},
	{"anticrasher"},
	{"nobclouds"},
	{"Rotate1"},
	{"randquats"},
	{"upsidedown"},
	{"BuildIsland"},
	{"FPS"},
	{"DrawDist"},
	{"Spammer"},
	{"FogDist"},
	{"Fovedit"},
	{"Time"},
	{"SUN"},
	{"MEMORY"},
	{"Weather"}
}

pAnimationWalk = {'WALK_PLAYER', 'GUNCROUCHFWD', 'GUNCROUCHBWD', 'GUNMOVE_BWD', 'GUNMOVE_FWD', 'GUNMOVE_L', 'GUNMOVE_R', 'RUN_GANG1', 'JOG_FEMALEA', 'JOG_MALEA', 'RUN_CIVI', 'RUN_CSAW', 'RUN_FAT', 'RUN_FATOLD', 'RUN_OLD', 'RUN_ROCKET', 'RUN_WUZI', 'SPRINT_WUZI', 'WALK_ARMED', 'WALK_CIVI', 'WALK_CSAW', 'WALK_DRUNK', 'WALK_FAT', 'WALK_FATOLD', 'WALK_GANG1', 'WALK_GANG2', 'WALK_OLD', 'WALK_SHUFFLE', 'WALK_START', 'WALK_START_ARMED', 'WALK_START_CSAW', 'WALK_START_ROCKET', 'WALK_WUZI', 'WOMAN_WALKBUSY', 'WOMAN_WALKFATOLD', 'WOMAN_WALKNORM', 'WOMAN_WALKOLD', 'WOMAN_RUNFATOLD', 'WOMAN_WALKPRO', 'WOMAN_WALKSEXY', 'WOMAN_WALKSHOP', 'RUN_1ARMED', 'RUN_ARMED', 'RUN_PLAYER', 'WALK_ROCKET', 'CLIMB_IDLE', 'MUSCLESPRINT', 'CLIMB_PULL', 'CLIMB_STAND', 'CLIMB_STAND_FINISH', 'SWIM_BREAST', 'SWIM_CRAWL', 'SWIM_DIVE_UNDER', 'SWIM_GLIDE', 'MUSCLERUN', 'WOMAN_RUN', 'WOMAN_RUNBUSY', 'WOMAN_RUNPANIC', 'WOMAN_RUNSEXY', 'SPRINT_CIVI', 'SPRINT_PANIC', 'SWAT_RUN', 'FATSPRINT'}
pAnimationDeagle = {'PYTHON_CROUCHFIRE', 'PYTHON_FIRE', 'PYTHON_FIRE_POOR'}
pOverdoseAnimations = {'CRCKIDLE4', 'CRCKIDLE2', 'CRCKDETH2'}
pGunsAnimations = {'PYTHON_CROUCHFIRE', 'PYTHON_FIRE', 'PYTHON_FIRE_POOR', 'PYTHON_CROCUCHRELOAD', 'RIFLE_CROUCHFIRE', 'RIFLE_CROUCHLOAD', 'RIFLE_FIRE', 'RIFLE_FIRE_POOR', 'RIFLE_LOAD', 'SHOTGUN_CROUCHFIRE', 'SHOTGUN_FIRE', 'SHOTGUN_FIRE_POOR', 'SILENCED_CROUCH_RELOAD', 'SILENCED_CROUCH_FIRE', 'SILENCED_FIRE', 'SILENCED_RELOAD', 'TEC_crouchfire', 'TEC_crouchreload', 'TEC_fire', 'TEC_reload', 'UZI_crouchfire', 'UZI_crouchreload', 'UZI_fire', 'UZI_fire_poor', 'UZI_reload', 'idle_rocket', 'Rocket_Fire', 'run_rocket', 'walk_rocket', 'WALK_start_rocket', 'WEAPON_sniper'}

for k, v in pairs(checkboxs) do
    _G['HH_'..v[1]] = imgui.ImBool(false)
end

function teleport(x, y, z)
    if x == nil then
        z = -100
	end
	if script.auto_z.v then
		z = getGroundZFor3dCoord(x, y, z)
	end

    if x ~= 0 and y ~= 0 then
        setCharCoordinates(PLAYER_PED, x, y, z)
    end
end

function information_tooltip(text)
    if imgui.IsItemHovered() then
        imgui.BeginTooltip()
        imgui.SetTooltip(text)
        imgui.EndTooltip()
    end
end

function show_entry(label, x, y, z,interior_id)
	if imgui.MenuItem(label, "", false, true) then
		setCharInterior(PLAYER_PED,interior_id)
		setInteriorVisible(interior_id)
		clearExtraColours(true)
		requestCollision(x,y)
		loadScene(x,y,z)
		activateInteriorPeds(true)
		teleport(x, y, z)
	end
end

---------- [cleaner] ------------
local function round(num, idp)
    local mult = 10 ^ (idp or 0)
    return math.floor(num * mult + 0.5) / mult
end

function get_memory()
    return round(memory.read(0x8E4CB4, 4, true) / 1048576, 1)
end


function Sun()
    callFunction(7325088, 0, 0, -1)
end

function setDialogColor(l_up, r_up, l_low, r_bottom)
    local CDialog = memory.getuint32(getModuleHandle("samp.dll") + 0x21A0B8)
    local CDXUTDialog = memory.getuint32(CDialog + 0x1C)
    memory.setuint32(CDXUTDialog + 0x12A, l_up, true) -- Left corner
    memory.setuint32(CDXUTDialog + 0x12E, r_up, true) -- Right upper corner
    memory.setuint32(CDXUTDialog + 0x132, l_low, true) -- Lower left corner
    memory.setuint32(CDXUTDialog + 0x136, r_bottom, true) -- Right bottom corner
end
--------------------

local GunAnims = {'PYTHON_CROUCHFIRE', 'PYTHON_FIRE', 'PYTHON_FIRE_POOR'}
local font_flag = require('moonloader').font_flag

local my_font = renderCreateFont('Arial', 10, font_flag.BOLD + font_flag.SHADOW)
local font_flag = require('moonloader').font_flag
local font = renderCreateFont('Arial', 10, font_flag.BOLD + font_flag.SHADOW)
local myscore = 0
local therescore = 0
local HH_fisheye = imgui.ImBool(true)

function main()
	if not isSampLoaded() and not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(40) end
	colorn = lua_thread.create_suspended(cnick)
	colorn:run()
	ifont_height = (((pw == 1680 or pw == 1600 or pw == 1440) and 8) or ((pw == 1366 or pw == 1360 or pw == 1280 or pw == 1152 or pw == 1024) and 7) or ((pw == 800 or pw == 720 or pw == 640) and 6)) or 9
	ifont = renderCreateFont("Verdana", ifont_height, 5)
	ibY = (((pw == 1366 or pw == 1360) and 17) or ((pw == 1366 or pw == 1360) and 17) or ((pw == 1280 or pw == 1152 or pw == 1024) and 16) or ((pw == 800 or pw == 720 or pw == 640) and 14)) or 18
	clickfont = renderCreateFont("Tahoma", 10, FCR_BOLD + FCR_BORDER)
	rfont = renderCreateFont('Verdata', 7, 5)
	if elements.checkbox.autoupdate.v then 
		autoupdate(jsn_upd, tag, url_upd)
	else sampAddChatMessage(tag..'You have disabled autoupdate. You are using version: {F9D82F}'..version_script..' {ffffff}| Activate it in settings.') end
	local _, my_info = sampGetPlayerIdByCharHandle(PLAYER_PED)
	local nick = sampGetPlayerNickname(my_info)
	
		
	local font = renderCreateFont("Arial", 7, 4)

	        sampRegisterChatCommand('s.unlock', passUnlock)
	        sampRegisterChatCommand('s.takecar', tpwrong)
		sampRegisterChatCommand('s.antispec', function()
		antispec23 = not antispec23
		if antispec23 then
			lua_thread.create(function()
				while antispec23 do
					wait(300)
					sampForceOnfootSync()
					local sync = samp_create_sync_data('spectator')
					sync.position.x, sync.position.y, sync.position.z = getCharCoordinates(PLAYER_PED)
					sync.send()
				end
			end)
			return sampAddChatMessage(tag..'ANTI SPEC Activate', colors.chat.main) end
		return sampAddChatMessage('{FF0000}[ADVANCED SADFI PROJECT | ANTI SPEC] {FFFFFF}Deactivate', -1)
	end)
    sampRegisterChatCommand('s.changebutton', function()
        change_activate_button()
    end)
		sampRegisterChatCommand('s.rip', function()
		anticheat = not anticheat
		if anticheat then
			sampAddChatMessage(tag..'Rip Damager Activate-Aktivirano!', -1)
			lua_thread.create(function()
				while anticheat do
					wait(0)
					local x, y, z = getCharCoordinates(PLAYER_PED)
					local _, ped = findAllRandomCharsInSphere(x, y, z, 1000, true, true)
					if _ and ped ~= PLAYER_PED then
						local _, id = sampGetPlayerIdByCharHandle(ped)
						if _ then
							local data = samp_create_sync_data('player')
							data.position.x, data.position.y, data.position.z = getCharCoordinates(ped)
							data.send()
							sampSendGiveDamage(id, 7, 0, 3)
							wait(0)
							sampForceOnfootSync()
							printStringNow('[AXTERIX:] PIZDA RIP ~r~'..id, 1000)
						end
					end
				end
			end)
		else
			sampAddChatMessage(tag..'Damager Deactivate-Deaktivirano', -1)
		end
	end)
	sampRegisterChatCommand('s.relog', relogger)
	
		jp = 0
		sampRegisterChatCommand('s.jp', function()
			jp = jp + 5
			if jp < 8 then
				sampSetSpecialAction(2)
				else sampSetSpecialAction(0); jp = 0
			end
		end)
		
		sampRegisterChatCommand('s.ground', ground2)

	sampRegisterChatCommand('s.goto', gotos)
	sampRegisterChatCommand('s.fps', function() local ifps = string.format('%d', memory.getfloat(0xB7CB50, 4, false)) sampAddChatMessage(tag..('FPS now: {F9D82F}'..ifps), -1) end)
	sampRegisterChatCommand('s.tsay', tsay)
--	sampRegisterChatCommand('s.puls', pulsator)
        sampRegisterChatCommand('s.seatvr', tpseatvred)
        sampRegisterChatCommand('s.pass', tppassenger)
	
		sampRegisterChatCommand('s.spec', function(i)
	id = tonumber(i)
	if not i:match('(%d+)') then
		printStringNow('INVALID PLAYER_ID', 1666)
	else
		if not (select(1,sampGetCharHandleBySampPlayerId(id))) then
			printStringNow('PLAYER NOT IN THE STREAM ZONE', 1666)
		else
			reconpro = true
			printStringNow('RECON IN PLAYER '.. sampGetPlayerNickname(id) .. '[' .. id .. ']', 1666)
			freezeCharPosition(playerPed, true)
			setCameraInFrontOfChar(select(2,sampGetCharHandleBySampPlayerId(id)))
			end
		end
	end)
	sampRegisterChatCommand('s.specoff', function()
		if reconpro then OffRecon() end
	end)
	
		sampRegisterChatCommand(".rv", function(i)
	if act then
		act = false
		sampAddChatMessage("[Rv]: {FFFFFF}Iskljucen", 0xFF5656)
	elseif not i:match("%d+") then
		sampAddChatMessage("[Rv]: {FFFFFF} Specify hajde-Write ID.", 0xFF5656)
			else
			res, _ = sampGetCharHandleBySampPlayerId(i)
			if not res then
			sampAddChatMessage("[Rv]: {FFFFFF}Nije u zoni potoka-Player is not in your stream.", 0xFF5656)
		else
			id = tonumber(i)
			act = true

			sampAddChatMessage("[Rv]: {FFFFFF}Igrac je slapovan: {FF5656}" .. sampGetPlayerNickname(id) .. "[" .. id .. "]", 0xFF5656)
			end
		end
	end)
	require('samp.events').onSendPlayerSync =  function(data)
	if act and not sampIsChatInputActive() and sampGetCharHandleBySampPlayerId(id) then
		 _, ped = sampGetCharHandleBySampPlayerId(id)
			 pX, pY, pZ = getCharCoordinates(ped)
			 ppX, ppY, ppZ = getCharCoordinates(PLAYER_PED)
			 if (getDistanceBetweenCoords3d(pX, pY, pZ, ppX, ppY, ppZ) < 30.0) then
			data.position = {x = pX, y = pY, z = pZ + 0.35}
			data.quaternion[0], data.quaternion[1], data.quaternion[2], data.quaternion[3] = math.random(-1, 1), math.random(-1, 1), math.random(-1, 1), math.random(-1, 1)
			data.moveSpeed.x, data.moveSpeed.y, data.moveSpeed.z = math.random(-0.5, 0.5) * 1.5, math.random(-0.5, 0.5) * 1.5, math.random(-0.50, 0.50) * 1.65
		end
	end
end  

		
		
	
		sampRegisterChatCommand('s.follow', function(param)
		if pratilacc then pratilacc = false return sampAddChatMessage(tag..'Follower deactivated', -1) end
		if not param:match('%d+') then return sampAddChatMessage(tag..'CMD: /s.follow [id player]', -1) end
		local _, ped = sampGetCharHandleBySampPlayerId(param)
		if not _ then return sampAddChatMessage(tag..'Wrong Player', -1) end
		target = tonumber(param)
		pratilacc = true
		lua_thread.create(function()
			sampAddChatMessage(tag..'Follower activated', -1)
			while pratilacc do
				wait(0)
				local _, ped = sampGetCharHandleBySampPlayerId(target)
				if not _ then
					pratilacc = false
					sampAddChatMessage(tag..'Player missing, follower disabled', -1)
				end
			end
		end)
	end)

    pSpreadValue = memory.getfloat(0x8D2E64)
    pFloatX = readMemory(0xB6EC1C, 4, false)
    pFloatY = readMemory(0xB6EC18, 4, false)
    sampAddChatMessage("Connected {B9C9BF}Advanced SADFI Project", 4289316068)
    wait(1000)
    sampAddChatMessage(tag.."Press ".. vkeys.key_names[HLcfg.config.actKey].. " to activate mod menu. (/s.changebutton to change activate key)", 4289316068)
    pStSet = sampGetServerSettingsPtr()
    NTdist = memory.getfloat(pStSet + 39)
   	NTwalls = memory.getint8(pStSet + 47)
	
	writeMemory(5499541, 4, 12044272, true)--removal of protection
    writeMemory(8381985, 4, 13213544, true)--removal of protection
	
	memory.setfloat(12044272, pDrawEdit.v, true)
    memory.setfloat(13210352, pFogEdit.v, true)

	oldtime = memory.getint8(0xB70153, true)
	oldweather = memory.getint8(0xC81320, true)
	
    while true do
	
	if checkbox.v or checkbox123.v then
			for _, v in pairs(getAllObjects()) do
				local asd
				if sampGetObjectSampIdByHandle(v) ~= -1 then
					asd = sampGetObjectSampIdByHandle(v)
				end
				if isObjectOnScreen(v) then
					local _, x, y, z = getObjectCoordinates(v)
					local x1, y1 = convert3DCoordsToScreen(x,y,z)
					local model = getObjectModel(v)
					local x2,y2,z2 = getCharCoordinates(PLAYER_PED)
					local x10, y10 = convert3DCoordsToScreen(x2,y2,z2)
					local distance = string.format("%.1f", getDistanceBetweenCoords3d(x, y, z, x2, y2, z2))
					if checkbox.v then
						renderFontDrawText(font, (checkbox222.v and asd and "model = "..model.."; id = "..asd or "model = "..model).."; distance: "..distance, x1, y1, -1)
						if traser.v then
							renderDrawLine(x10, y10, x1, y1, 1.0, -1)
						end
					elseif checkbox123.v then
						for _, v2 in ipairs(tabl) do
							if v2[1].v == model then
								renderFontDrawText(font, (v2[2].v:find(".+") and u8:decode(v2[2].v) or checkbox333.v and asd and "model = "..model.."; id = "..asd or "model = "..model).."; distance: "..distance	, x1, y1, -1)
								if traser.v then
									renderDrawLine(x10, y10, x1, y1, 1.0, -1)
								end
							end
						end
					end
				end
			end
		end

	
    	wait(0)
    	pPlayerPosX, pPlayerPosY, pPlayerPosZ = getCharCoordinates(PLAYER_PED)
    	pPlayerCurrWeapon = getCurrentCharWeapon(PLAYER_PED)
    	if isCharInAnyCar(PLAYER_PED) then
    		pCarHandle = storeCarCharIsInNoSave(PLAYER_PED)
    	end
 -- 	if isKeyJustPressed(VK_F5) then
   -- 		mainwin.v = not mainwin.v
    --	end
        if isKeyJustPressed(HLcfg.config.actKey) and is_key_check_available() then mainwin.v = not mainwin.v end
    	if testCheat("ER") then
    		mainwin.v = not mainwin.v
    	end
		imgui.Process = mainwin.v or mp3menu.v
    	if elements.checkbox.GM.v then
    		setCharProofs(PLAYER_PED, true, true, true, true, true)
    		if isCharInAnyCar(PLAYER_PED) then
    			setCarProofs(pCarHandle, true, true, true, true, true)
    		end
    	elseif not elements.checkbox.GM.v then
    		setCharProofs(PLAYER_PED, false, false, false, false, false)
    		if isCharInAnyCar(PLAYER_PED) then
    			setCarProofs(pCarHandle, false, false, false, false, false)
    		end
    	end
	if elements.checkbox.surfer.v and not isCharInAnyCar(PLAYER_PED) then
            local CPed = getCharPointer(PLAYER_PED)
            setCharProofs(PLAYER_PED, false, false, false, true, false)
            local camX, camY, camZ = getActiveCameraCoordinates()
            local actCamX, actCamY, actCamZ = getActiveCameraPointAt()

            actCamX = actCamX - camX
            actCamY = actCamY - camY

            local zAngle = getHeadingFromVector2d(actCamX, actCamY)
            setCharHeading(PLAYER_PED, zAngle)

            local vecX, vecY, vecZ = getCharVelocity(PLAYER_PED)
            vecX = vecX * 1.001
            vecY = vecY * 1.001

            local speedMultX = memory.getfloat(CPed + 0x550)
            local speedMultY = memory.getfloat(CPed + 0x554)

            speedMultX = speedMultX * elements.sliders.speedsurfer.v
            speedMultY = speedMultY * elements.sliders.speedsurfer.v
            
            vecX = vecX + speedMultX
            vecY = vecY + speedMultY
            setCharVelocity(PLAYER_PED, vecX, vecY, vecZ)

            if not isCharPlayingAnim(PLAYER_PED, "KO_skid_back") then
                memory.setuint8(CPed + 0x46C, 0, true)
            end
        end
		require('samp.events').onSendPlayerSync =  function(data)
		if pulsator then
		data.health = math.random (1,100)
		local h = math.random(10.0, 100.0)
		for i = 0,10 do
		setCharHealth(PLAYER_PED, h)
		end
		data.armor = math.random (1,100)
		end
	end
    	if elements.checkbox.infinityammo.v then
    		memory.write(0x969178, 1, 1, true)
    	elseif not elements.checkbox.infinityammo.v then
    		memory.write(0x969178, 0, 1, true)
    	end
		if elements.checkbox.autoscroll.v then
			if wasKeyPressed(81) then
				setVirtualKeyDown(69, true)
				wait(20)
				setVirtualKeyDown(69, false)
			end
		end
			if elements.checkbox.lang.v == 1 then
				elements.checkbox.lang.v, elements.checkbox.langchat.v, elements.checkbox.langvisual.v = true, true, true
			elseif elements.checkbox.lang.v == 2 then
				elements.checkbox.langmenu.v, elements.checkbox.langchat.v, elements.checkbox.langvisual.v = false, false, false
			end
    	if elements.checkbox.nospread.v then
    		memory.setfloat(0x8D2E64, 0)
    	elseif not elements.checkbox.nospread.v then
    		memory.setfloat(0x8D2E64, pSpreadValue)
    	end
		if isCharShooting(playerPed) then
            result, ped = getCharPlayerIsTargeting(playerHandle)
            current_weapon = getCurrentCharWeapon(playerPed)
		    if elements.checkbox.cbug.v then	
                if current_weapon == 24 or current_weapon == 25 or current_weapon == 33 then   	
                    wait(100)				
    		       clearCharTasks(playerPed)
			   end
    	   end
		end
		if elements.checkbox.cbughelper.v then
			weapon = getCurrentCharWeapon(playerPed)
			if weapon == 24 then
				if isKeyDown(VK_RBUTTON) and isKeyJustPressed(VK_LBUTTON) then
					wait(100)
					setVirtualKeyDown(VK_C, true)
					wait(4)
					setVirtualKeyDown(VK_C, false)
				end
			end
		end
    	if elements.checkbox.nofall.v then
    		if isCharPlayingAnim(PLAYER_PED, 'KO_SKID_BACK') or isCharPlayingAnim(playerPed, 'FALL_COLLAPSE') then
                clearCharTasksImmediately(PLAYER_PED)
            end
    	end
		if elements.checkbox.ghostmode.v then
    	_, ped, car = storeClosestEntities(PLAYER_PED)
	if ped ~= -1 then
	setCharCollision(ped, false)
		end
    	end
		if elements.checkbox.airbrk.v then
		if testCheat("JK") then
			MOP_()
		end
		if MOP then
		 if isCharInAnyCar(playerPed) then
			car()
		else
	        onfoot()
		end
		end
		end
		if HH_Rotate1.v then
			if testCheat('1') then
				sampSendChat("/brot 0 90 0")
			elseif testCheat('2') then
				sampSendChat("/brot 180")
			elseif testCheat('3') then
				sampSendChat("/brot 0 0 270")
			elseif testCheat('4') then
				sampSendChat("/brot 360")
			elseif testCheat('5') then
				sampSendChat("/brot 0 90 90")
			end
    	end
		if HH_Spammer.v then
			sampSendChat(text_buffer.v)
			wait(slider.v)
			sampSendChat(text_buffer.v)
			wait(slider.v)
			sampSendChat(text_buffer.v)
			wait(slider.v)
			sampSendChat(text_buffer.v)
		end
		if HH_BuildIsland.v then
			if testCheat('q') then
				sampSendChat("/bcopy")
			elseif testCheat('e') then
				sampSendChat("/bmove")
			elseif testCheat('r') then
				sampSendChat("/brem")
			elseif testCheat('o') then
				sampSendChat("/badd")
			end
		end
		if elements.checkbox.fisheye.v then
			if isCurrentCharWeapon(PLAYER_PED, 34) and isKeyDown(2) then
				if not locked then 
					cameraSetLerpFov(70.0, 70.0, 1000, 1)
					locked = true
				end
			else
				cameraSetLerpFov(101.0, 101.0, 1000, 1)
				locked = false
			end
		end
        if elements.checkbox.showdist.v then
            for k,v in ipairs(getAllChars()) do
                if isCharOnScreen(v) then
                    if v ~= playerPed then
                        local my_pos = {getCharCoordinates(playerPed)}
                        local other_pos = {getCharCoordinates(v)}
                        local other_pos_2 = {convert3DCoordsToScreen(other_pos[1] + 0.3, other_pos[2], other_pos[3] - 1)}
                        renderFontDrawText(font, 'Distance: '..math.floor(getDistanceBetweenCoords3d(my_pos[1], my_pos[2], my_pos[3], other_pos[1], other_pos[2], other_pos[3])), other_pos_2[1], other_pos_2[2], 0xFFFF8C00, false)
                    end
                end
            end
        end
		if elements.checkbox.numhp.v then
    		useRenderCommands(true)
				setTextCentre(true)
				setTextScale(0.4, 0.7)
				setTextColour(255, 255, 255, 255)
				setTextEdge(1, 0, 0, 0, 255)
				displayTextWithNumber(578.0, 68.5, 'NUMBER', getCharHealth(PLAYER_PED))
				if getCharArmour(PLAYER_PED) > 0 then
					setTextCentre(true)
					setTextScale(0.4, 0.7)
					setTextColour(255, 255, 255, 255)
					setTextEdge(1, 0, 0, 0, 255)
					displayTextWithNumber(578.0, 47.0, 'NUMBER', getCharArmour(PLAYER_PED))
				end
    	end
		if elements.checkbox.breakdance.v then
		local brc = true
			if brc and isCharInAnyCar(playerPed) and not sampIsDialogActive() and not sampIsChatInputActive() then local car = storeCarCharIsInNoSave(playerPed)
					if isKeyDown(VK_K) 	then addToCarRotationVelocity(car, 0.5, 0, 0) --?????? ?????.
					end
					if isKeyDown(VK_I) 	then addToCarRotationVelocity(car, -0.5, 0, 0) --?????? ??????.
					end
					if isKeyDown(VK_U)	then addToCarRotationVelocity(car, 0, -0.5, 0) --????????? ? ????.
					end
					if isKeyDown(VK_O)	then addToCarRotationVelocity(car, 0, 0.5, 0) --????????? ? ?????.
					end
					if isKeyDown(VK_L)		then addToCarRotationVelocity(car, 0, 0, -0.5) --???????? ? ?????.
					end
					if isKeyDown(VK_J)		then addToCarRotationVelocity(car, 0, 0, 0.5) --???????? ? ????.
					end
			end
		end
		if elements.checkbox.carjump.v then
			if isCharInAnyCar(PLAYER_PED) then
				if isKeyDown(VK_B) then
				applyForceToCar(pCarHandle, 0.0, 0.0, 0.05, 0.0, 0.0, 0.0)
				end
			end
		end
		if elements.checkbox.deletehauba.v then
			if testCheat('1') then
			local ccar = storeCarCharIsInNoSave(PLAYER_PED)
				local incar = isCharInCar(PLAYER_PED, ccar)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
				damageCarDoor(ccar, 0)
			end
		end
		if elements.checkbox.act50.v then
				if isCharInAnyCar(playerPed) then
					local v = storeCarCharIsInNoSave(PLAYER_PED)
					local timer1, timer2 = math.modf(localClock())
					if math.fmod(timer1, 2) == 0 and timer2 < 0.1 then
						setCarHealth(v, 1000.0)
					else
						setCarHealth(v, 1.0)
					end
			end
		end
		if elements.checkbox.fastbrake.v then
		car = getCarCharIsUsing(playerPed)
    		if isCharInAnyCar(PLAYER_PED) then
    			if wasKeyPressed(vkeys.VK_SPACE) then
    				setCarForwardSpeed(car, 0)
    			end
    		end
		end
    	if elements.checkbox.fastwalk.v then
    		for k,v in pairs(pAnimationWalk) do
                setCharAnimSpeed(PLAYER_PED, v, elements.sliders.speedfastwalk.v)
                setPlayerNeverGetsTired(PLAYER_PED, 0)
            end
    	elseif not elements.checkbox.fastwalk.v then
    		for k,v in pairs(pAnimationWalk) do
    			setCharAnimSpeed(PLAYER_PED, v, 1.0)
    			setPlayerNeverGetsTired(PLAYER_PED, 1)
    		end
    	end
    	if elements.checkbox.fastdeagle.v then
    		for k,v in pairs(pAnimationDeagle) do
                setCharAnimSpeed(PLAYER_PED, v, 3.0)
            end
    	elseif not elements.checkbox.fastdeagle.v then
    		for k,v in pairs(pAnimationDeagle) do
                setCharAnimSpeed(PLAYER_PED, v, 1.0)
            end
    	end
    	if elements.checkbox.infinityrun.v then
    		setPlayerNeverGetsTired(PLAYER_PED, 0)
    	elseif not elements.checkbox.infinityrun.v then
    		setPlayerNeverGetsTired(PLAYER_PED, 0)
    	end
    	if elements.checkbox.megajump.v then
    		memory.setint8(0x96916C, 1)
    	elseif not elements.checkbox.megajump.v then
    		memory.setint8(0x96916C, 0)
    	end
			if elements.checkbox.reconnect.v then
				local ip, port = sampGetCurrentServerAddress()
				local sname = sampGetCurrentServerName()
				if wasKeyPressed(VK_0) and wasKeyPressed(VK_LSHIFT) then
					sampAddChatMessage(tag..'You are reconnecting to the server. Reconnect will start trough {F9D82F}'..slider1.v..'{FFFFFF} seconds')
					sampSetGamestate(0)
					wait(slider1.v * 1000)
					sampConnectToServer(ip, port)
					sampAddChatMessage(tag..'You are logged on: {F9D82F}' ..sname.. ' {888EA0}IP: {FFFFFF}'..ip.. ':' ..port)
				end
			end
    	if elements.checkbox.megajumpbmx.v then
			writeMemory(0x969161, 1, 1, true)
		else
			writeMemory(0x969161, 1, 0, true)
		end
    	if elements.checkbox.antistun.v then
    		setCharUsesUpperbodyDamageAnimsOnly(PLAYER_PED, 1)
    	elseif not elements.checkbox.antistun.v then
    		setCharUsesUpperbodyDamageAnimsOnly(PLAYER_PED, 0)
    	end
		if elements.checkbox.unfreeze.v then
			if wasKeyPressed(VK_2) and not sampIsChatInputActive() then
				restoreCameraJumpcut()
				freezeCharPosition(PLAYER_PED, false)
				lockPlayerControl(false)
				local bs = raknetNewBitStream()
				raknetBitStreamWriteBool(bs, true)
				raknetEmulRpcReceiveBitStream(15, bs)
				raknetDeleteBitStream(bs)
			sampAddChatMessage(tag..'Your character is unfreezed!')
			end
		end
    	if elements.checkbox.gmcar.v then
    		if isCharInAnyCar(PLAYER_PED) then
    			setCarProofs(pCarHandle, true, true, true, true, true)
		--local veh = storeCarCharIsInNoSave(PLAYER_PED)
        --setCarHeavy(veh, true)
    		end
    	elseif not elements.checkbox.gmcar.v then
    		if isCharInAnyCar(PLAYER_PED) then
    			setCarProofs(pCarHandle, false, false, false, false, false)
    		end
    	end
		if elements.checkbox.carid.v then
			local veh = getAllVehicles()
			for i = 0, #veh do
				local _, vid = sampGetVehicleIdByCarHandle(veh[i])
				if _ then
					if isCarOnScreen(veh[i]) then
						local x, y, z = getCarCoordinates(veh[i])
						local xw, yw
						if elements.checkbox.cardoor.v and not elements.checkbox.carmodel.v then
							xw, yw = convert3DCoordsToScreen(x, y, z + 0.8)
						elseif not elements.checkbox.cardoor.v and elements.checkbox.carmodel.v then
							xw, yw = convert3DCoordsToScreen(x, y, z + 0.8)
						elseif elements.checkbox.cardoor.v and elements.checkbox.carmodel.v then
							xw, yw = convert3DCoordsToScreen(x, y, z + 1.6)
						elseif not elements.checkbox.cardoor.v and not elements.checkbox.carmodel.v then
							xw, yw = convert3DCoordsToScreen(x, y, z)
						end
						renderFontDrawText(font, '{FFFFFF}ID: {2CB6DD}'..vid, xw, yw, -1)
					end
				end
			end
		end
		if elements.checkbox.carmodel.v then
			local veh = getAllVehicles()
			for i = 0, #veh do
				local _, vid = sampGetVehicleIdByCarHandle(veh[i])
				if _ then
					if isCarOnScreen(veh[i]) then
						local x, y, z = getCarCoordinates(veh[i])
						local xw, yw
						local model = getCarModel(veh[i])
						model = getNameOfVehicleModel(model)
						if model:find('COACH') then
							model = 'BUS'
						end
						if elements.checkbox.cardoor.v then
							xw, yw = convert3DCoordsToScreen(x, y, z + 0.8)
						else
							xw, yw = convert3DCoordsToScreen(x, y, z)
						end
						renderFontDrawText(font, '{FFFFFF}Model: {2CB6DD}'..model, xw, yw, -1)
					end
				end
			end
		end
		if elements.checkbox.cardoor.v then
			local veh = getAllVehicles()
			for i = 0, #veh do
				local _, vid = sampGetVehicleIdByCarHandle(veh[i])
				if _ then
					if isCarOnScreen(veh[i]) then
						local status
						local door = getCarDoorLockStatus(veh[i])
						if door == 0 then
							status = '{00FF00}Opened'
						else
							status = '{FF0000}Closed'
						end
						local x, y, z = getCarCoordinates(veh[i])
						local xw, yw = convert3DCoordsToScreen(x, y, z)
						renderFontDrawText(font, status, xw, yw, -1)
					end
				end
			end
		end
		if elements.checkbox.nofbike.v  then
        setCharCanBeKnockedOffBike(PLAYER_PED, true)
        end
		if elements.checkbox.driftmode.v then
		local brc = true
			if brc and isCharInAnyCar(playerPed) and not sampIsDialogActive() and not sampIsChatInputActive() then local car = storeCarCharIsInNoSave(playerPed)
					if isKeyDown(VK_D)		then addToCarRotationVelocity(car, 0, 0, -0.1) --???????? ? ?????.
					end
					if isKeyDown(VK_A)		then addToCarRotationVelocity(car, 0, 0, 0.1) --???????? ? ????.
					end
			end
		end
    	if elements.checkbox.easydrive.v then
    		memory.setint8(0x96914C, 1)
    	elseif not elements.checkbox.easydrive.v then
    		memory.setint8(0x96914C, 0)
    	end
    	if elements.checkbox.carshot.v then
    		if isCharInAnyCar(PLAYER_PED) then
    			local pCamCoordX, pCamCoordY, pCamCoordZ = getActiveCameraCoordinates()
    			local pTargetCamX, pTargetCamY, pTargetCamZ = getActiveCameraPointAt()
    			setCarHeading(pCarHandle, getHeadingFromVector2d(pTargetCamX - pCamCoordX, pTargetCamY - pCamCoordY))
    			if isKeyDown(VK_W) then
    				setCarForwardSpeed(pCarHandle, 100.0)
    			elseif isKeyDown(VK_S) then
    				setCarForwardSpeed(pCarHandle, 0.0)
    			elseif isKeyDown(VK_SPACE) then
    				applyForceToCar(pCarHandle, 0.0, 0.0, 0.1, 0.0, 0.0, 0.0)
    			end
    		end
		end
		if elements.checkbox.tmode.v and isCharInAnyCar(PLAYER_PED) then
        local veh = storeCarCharIsInNoSave(PLAYER_PED)
        setCarHeavy(veh, true)
        end
		if elements.checkbox.wheelgm.v and isCharInAnyCar(PLAYER_PED) then
        local veh = storeCarCharIsInNoSave(PLAYER_PED)
        setCanBurstCarTires(veh, false)
        end
		if elements.checkbox.nitro.v and isCharInAnyCar(PLAYER_PED) and isKeyJustPressed(0x60) then
            local veh = storeCarCharIsInNoSave(PLAYER_PED)
            giveNonPlayerCarNitro(veh)
    	end
		if elements.checkbox.nightvision.v then
            setNightVision(true)
        else
            setNightVision(false)
        end
		
		if elements.checkbox.thermalvision.v then
            setInfraredVision(true)
        else
            setInfraredVision(false)
        end
		if elements.checkbox.driftnitro.v then
		if isCharInAnyCar(playerPed) then
			local myCar = storeCarCharIsInNoSave(playerPed)
			local iAm = getDriverOfCar(myCar)
			if iAm == playerPed then
				if isKeyDown(17) then
					giveNonPlayerCarNitro(myCar)
					while isKeyDown(17) do
						wait(0)
						memory.setfloat(getCarPointer(myCar) + 0x08A4, -0.5)
					end
					removeVehicleMod(myCar, 1008)
					removeVehicleMod(myCar, 1009)
					removeVehicleMod(myCar, 1010)
				end
			else
				 while isCharInAnyCar(playerPed) do
					 wait(0)
				 end
			end
		end
		end
		if elements.checkbox.hyd.v and isCharInAnyCar(PLAYER_PED) then
            local veh = storeCarCharIsInNoSave(PLAYER_PED)
            setCarHydraulics(veh, true)
    	end
		if elements.checkbox.fullskills.v then
			for i = 70, 79 do
                registerIntStat(i, 1000.0)
            end
		elseif not elements.checkbox.fullskills.v then
			for i = 70, 79 do
                registerIntStat(i, 0.0)
            end
		end
		if elements.checkbox.blockoverdoseanimations.v then
			for k,v in pairs(pOverdoseAnimations) do
                if isCharPlayingAnim(PLAYER_PED, v) then
                    clearCharTasksImmediately(PLAYER_PED)
                end
            end
		end
		if elements.checkbox.fastfire.v then
			for k,v in pairs(pGunsAnimations) do
                setCharAnimSpeed(PLAYER_PED, v, 3.0)
            end
		elseif not elements.checkbox.fastfire.v then
			for k,v in pairs(pGunsAnimations) do
                setCharAnimSpeed(PLAYER_PED, v, 1.0)
            end
		end
		if elements.checkbox.rapidfire.v then
			for k,v in pairs(pGunsAnimations) do
                setCharAnimSpeed(PLAYER_PED, v, pRapidSpeed.v)
            end
		elseif not elements.checkbox.rapidfire.v then
			for k,v in pairs(pGunsAnimations) do
                setCharAnimSpeed(PLAYER_PED, v, 1.0)
            end
		end
        if elements.checkbox.fullhp.v then
            memory.setfloat(0xB793E0, 910.4) -- 910.4
        elseif not elements.checkbox.fullhp.v then
            memory.setfloat(0xB793E0, 569.0)
        end
        if elements.checkbox.sensfix.v then
            writeMemory(0xB6EC18, 4, pFloatX, false)
        elseif not elements.checkbox.sensfix.v then
            writeMemory(0xB6EC18, 4, pFloatY, false)
        end
		if elements.checkbox.aimbot.v then
            result, ped = getCharPlayerIsTargeting(playerHandle)
		    if result then
			    local myPos = {getActiveCameraCoordinates()}
			    local enPos = {getCharCoordinates(ped)}
			    local vector = {myPos[1] - enPos[1], myPos[2] - enPos[2], myPos[3] - enPos[3]}
		    	if isWidescreenOnInOptions() then coefficentZ = 0.0778 else coefficentZ = 0.103 end
		    	local angle = {(math.atan2(vector[2], vector[1]) + 0.04253), (math.atan2((math.sqrt((math.pow(vector[1], 2) + math.pow(vector[2], 2)))), vector[3]) - math.pi / 2 - coefficentZ)}
		    	local view = {fix(representIntAsFloat(readMemory(0xB6F258, 4, false))), fix(representIntAsFloat(readMemory(0xB6F248, 4, false)))}
		    	local difference = {angle[1] - view[1], angle[2] - view[2]}
		    	local smooth = {difference[1] / 1.0, difference[2] / 1.0}
		    	setCameraPositionUnfixed((view[2] + smooth[2]), (view[1] + smooth[1]))
		    end
        end
        if elements.checkbox.infinityfuel.v then
            if isCharInAnyCar(PLAYER_PED) then
                setCarEngineOn(pCarHandle, true)
            end
        end
        if elements.checkbox.nametags.v then    
            memory.setfloat(pStSet + 39, 1488.0)
            memory.setint8(pStSet + 47, 0)
            memory.setint8(pStSet + 56, 1)
        elseif not elements.checkbox.nametags.v then
            memory.setfloat(pStSet + 39, NTdist)
            memory.setint8(pStSet + 47, NTwalls)
        end
        if elements.checkbox.skeletal.v then
            for i = 0, sampGetMaxPlayerId() do
                if sampIsPlayerConnected(i) then
                    local result, cped = sampGetCharHandleBySampPlayerId(i)
                    local color = sampGetPlayerColor(i)
                    local aa, rr, gg, bb = explode_argb(color)
                    local color = join_argb(255, rr, gg, bb)
                    if result then
                        if doesCharExist(cped) and isCharOnScreen(cped) then
                        local t = {3, 4, 5, 51, 52, 41, 42, 31, 32, 33, 21, 22, 23, 2}
                        	for v = 1, #t do
                                pos1X, pos1Y, pos1Z = getBodyPartCoordinates(t[v], cped)
                                pos2X, pos2Y, pos2Z = getBodyPartCoordinates(t[v] + 1, cped)
                                pos1, pos2 = convert3DCoordsToScreen(pos1X, pos1Y, pos1Z)
                                pos3, pos4 = convert3DCoordsToScreen(pos2X, pos2Y, pos2Z)
                                renderDrawLine(pos1, pos2, pos3, pos4, 2, color)
                            end
                            for v = 4, 5 do
	                            pos2X, pos2Y, pos2Z = getBodyPartCoordinates(v * 10 + 1, cped)
	                            pos3, pos4 = convert3DCoordsToScreen(pos2X, pos2Y, pos2Z)
	                            renderDrawLine(pos1, pos2, pos3, pos4, 2, color)
                            end
                            local t = {53, 43, 24, 34, 6}
                            for v = 1, #t do
                             	posX, posY, posZ = getBodyPartCoordinates(t[v], cped)
                                pos1, pos2 = convert3DCoordsToScreen(posX, posY, posZ)
                            end
                        end
                    end
                end
            end
        end
		if elements.checkbox.espbox.v then
		for k,v in ipairs(getAllChars()) do
			if isCharOnScreen(v) then
				if v ~= playerPed then
					local posX, posY, posZ = getCharCoordinates(v)
					local pPosX, pPosY, pPosZ = getCharCoordinates(playerPed)
					if getDistanceBetweenCoords3d(posX, posY, posZ, pPosX, pPosY, pPosZ) <= 180.0 then
						local wPosX, wPosY = convert3DCoordsToScreen(posX, posY, posZ)
						result, id = sampGetPlayerIdByCharHandle(v)
						if result then
							renderDrawBoxWithBorder(wPosX - 65 / 2, wPosY - 60, 65, 120, 0x00FFFFFF, 2, 0xFF00FF00)
						end
					end
				end
			end
		end
		end
		if elements.checkbox.infbar.v then
			local scrX, scrY = getScreenResolution()

			local playerInterior, playerID, playerHP, playerAP, playerPing  = getPlayerOnFootInfo()
			local animId, score = sampGetPlayerAnimationId(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))), sampGetPlayerScore(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)))
			
			local textNick = sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)))..'['..playerID..']'
			local lenght, lenght1 = renderGetFontDrawTextLength(ifont, textNick), renderGetFontDrawTextLength(ifont, 'ZZZZZZZZZZZZZZZ')
			local font_sizeX = ((ifont_height == 8 and 160) or ((ifont_height == 7 or ifont_height == 6) and 140) or 200)+30
			local sizeX = lenght >= font_sizeX and lenght or font_sizeX
			local posX, posY = (scrX - sizeX) - 4, isCharInAnyCar(PLAYER_PED) and scrY - (ibY * 6) - 10 or scrY - (ibY * 6)
			local text1, text2 = '', ''
			if isCharInAnyCar(PLAYER_PED) then
				local playerID, vehID, playerHP, playerAP, vehHP, playerPing = getPlayerInCarInfo()
				text1 = string.format('Ping: {' .. CREATp .. '}%d\n{888EA0}Health: {' .. CREATp .. '}%d\n{888EA0}AnimID: {' .. CREATp .. '}%d\n{888EA0}VehHP: {' .. CREATp .. '}%d', playerPing, playerHP, animId, vehHP)
				text2 = string.format('LVL: {' .. CREATp .. '}%d\n{888EA0}Armor: {' .. CREATp .. '}%d\n{888EA0}Skin: {' .. CREATp .. '}%d\n{888EA0}VehID: {' .. CREATp .. '}%d', score, playerAP, getCharModel(PLAYER_PED), vehID)
			else
				text1 = string.format('Ping: {' .. CREATp .. '}%d\n{888EA0}Health: {' .. CREATp .. '}%d\n{888EA0}AnimID: {' .. CREATp .. '}%d', playerPing, playerHP, animId)
				text2 = string.format('LVL: {' .. CREATp .. '}%d\n{888EA0}Armor: {' .. CREATp .. '}%d\n{888EA0}Skin: {' .. CREATp .. '}%d', score, playerAP, getCharModel(PLAYER_PED))
			end
			renderDrawBoxWithBorder(posX, posY, sizeX, isCharInAnyCar(PLAYER_PED) and 90 or 80, 0x44888EA0, 1, targ)
			renderFontDrawText(ifont, textNick, posX + ((sizeX - lenght) / 2), posY + 10, targ)
			renderFontDrawText(ifont, text1, posX + 10, posY + 30, 0xFF888EA0)
			renderFontDrawText(ifont, text2, posX + lenght1, posY + 30, 0xFF888EA0)
		end
        if elements.checkbox.fakelags.v then
        	sampSetSendrate(1, 1000) 
            sampSetSendrate(2, 1000) 
            sampSetSendrate(3, 1000)
        elseif not elements.checkbox.fakelags.v then
        	sampSetSendrate(1, 0) 
            sampSetSendrate(2, 0) 
            sampSetSendrate(3, 0)
        end
		if elements.checkbox.chathelper.v and sampIsChatInputActive() then
			local in1 = sampGetInputInfoPtr()
			local in1 = getStructElement(in1, 0x8, 4)
			local in2 = getStructElement(in1, 0x8, 4)
			local in3 = getStructElement(in1, 0xC, 4)
			local success, errorCode = ffi.C.GetKeyboardLayoutNameA(KeyboardLayoutName), ffi.C.GetLocaleInfoA(tonumber(ffi.string(KeyboardLayoutName), 16), 0x00000002, LocalInfo, 32)
			local capsState, numState, localName = ffi.C.GetKeyState(20), ffi.C.GetKeyState(144), ffi.string(LocalInfo)

			local caps, num, numLets, clrNumLets = elements.checkbox.langvisual.v and (capsState == 1 and '{00FF00}Вкл' or '{FF0000}Выкл') or capsState == 1 and '{00FF00}On' or '{FF0000}Off', elements.checkbox.langvisual.v and (numState == 1 and '{00FF00}Вкл' or '{FF0000}Выкл') or numState == 1 and '{00FF00}On' or '{FF0000}Off', #sampGetChatInputText() == 0 and '0' or #sampGetChatInputText(), #sampGetChatInputText() >= 128 and '{FF0000}' or '{' .. CREATp .. '}'
			local text = string.format('%s: {' .. CREATp .. '}%s {' .. CREATp .. '}{888EA0}| CapsLock: %s {888EA0}| NumLock: %s {' .. CREATp .. '}{888EA0}| %s: %s%d/128 {' .. CREATp .. '}{888EA0}| {' .. CREATp .. '}%s {' .. CREATp .. '}{888EA0}| {' .. CREATp .. '}%s', elements.checkbox.langvisual.v and 'Язык' or 'Language', string.match(localName, "([^%(]*)"), caps, num, elements.checkbox.langvisual.v and 'Символы' or 'Symbols', clrNumLets, numLets, sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(PLAYER_PED)))..'['..select(2, sampGetPlayerIdByCharHandle(PLAYER_PED))..']' , os.date('%X'))
			renderFontDrawText(ifont, text, in2, in3 + 41, 0xFF888EA0)
		end
        if elements.checkbox.noreload.v then
        	Bs = raknetNewBitStream()
            raknetBitStreamWriteInt32(Bs, pPlayerCurrWeapon)
            raknetBitStreamWriteInt32(Bs, 0)
            raknetEmulRpcReceiveBitStream(22, Bs)
            raknetDeleteBitStream(Bs)
        end
        if elements.checkbox.antiafk.v then
        	writeMemory(7634870, 1, 1, 1)
            writeMemory(7635034, 1, 1, 1)
            memory.fill(7623723, 144, 8)
            memory.fill(5499528, 144, 6)
        elseif not elements.checkbox.antiafk.v then
        	writeMemory(7634870, 1, 0, 0)
            writeMemory(7635034, 1, 0, 0)
            memory.hex2bin('5051FF1500838500', 7623723, 8)
            memory.hex2bin('0F847B010000', 5499528, 6)
        end
		--                 ----------------------------------------------------------------------------
		if HH_SUN.v then
		    Sun()
    	elseif not HH_SUN.v then
		-- auto off
    	end
		
		if HH_MEMORY.v then
		    writeMemory(9067136, 4, pMemory.v, true)
    	elseif not HH_MEMORY.v then
		    writeMemory(9067136, 4, 536870912, true)
    	end
		
		if elements.checkbox.noradio.v and isCharInAnyCar(playerPed) and getRadioChannel(playerPed) < 12 then
		    setRadioChannel(12)
    	end
		if HH_FogDist.v then
            memory.setfloat(13210352, pFogEdit.v, true)
		elseif not HH_FogDist.v then
            memory.setfloat(13210352, 200, true)
    	end
		
		if HH_Fovedit.v then
            cameraSetLerpFov(pFovedit.v, pFovedit.v, 999988888, true)  -- 0922
		elseif not HH_Fovedit.v then
           
    	end
		
		if HH_Time.v then
			memory.setint8(0xB70153, tonumber(pTime.v), true)
		elseif not HH_Time.v and memory.read(0xB70153, 1, false) then
		memory.setint8(0xB70153, oldtime, true) 
    	end
		
		if HH_Weather.v then
			memory.setint8(0xC81320, tonumber(pWeather.v), true)
		elseif not HH_Weather.v and memory.read(0xC81320, 1, false) then
		memory.setint8(0xC81320, oldweather, true) 	
    	end
		
		if HH_DrawDist.v then
	        memory.setfloat(12044272, pDrawEdit.v, true)
		elseif not HH_DrawDist.v then
		    memory.setfloat(12044272, 800, true)
    	end
		
		if HH_FPS.v then
		    memory.write(sampGetBase() + 0x9D9D0, 0x5051FF15, 4, true)
            memory.write(0xBAB318, 0, 1, true)
            memory.write(0x53E94C, 0, 1, true)
		elseif not HH_FPS.v then
		    memory.write(sampGetBase() + 0x9D9D0, -549912, 4, true)
            memory.write(0xBAB318, 0, 1, true)
            memory.write(0x53E94C, 2, 1, true)
    	end	
		--                 ----------------------------------------------------------------------------
		if script.radio_button2.v == 3 then
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			local ImVec2 = imgui.ImVec2

    colors[clr.Border] = ImVec4(1, 0, 0.3, 1.00)
    colors[clr.WindowBg] = ImVec4(0.13, 0.14, 0.17, 1.00)
    colors[clr.FrameBg] = ImVec4(0.200, 0.220, 0.270, 0.85)
    colors[clr.TitleBg] = ImVec4(1, 0, 0.3, 1.00)
    colors[clr.TitleBgActive] = ImVec4(1, 0, 0.3, 1.00)
    colors[clr.Button] = ImVec4(1, 0, 0.3, 1.00)
    colors[clr.ButtonHovered] = ImVec4(1, 0, 0.3, 1.00)
    colors[clr.Separator] = ImVec4(1, 0, 0.3, 1.00)
    --CollapsingHeader
    colors[clr.Header] = ImVec4(1, 0, 0.3, 1.00)
    colors[clr.HeaderHovered] = ImVec4(0.68, 0, 0.2, 0.86)
    colors[clr.HeaderActive] = ImVec4(1, 0.24, 0.47, 1.00)
    colors[clr.CheckMark] = ImVec4(1, 0, 0.3, 1.00)
    colors[clr.ModalWindowDarkening] = ImVec4(0.200, 0.220, 0.270, 0.73)

    colors[clr.ScrollbarBg] = ImVec4(0.200, 0.220, 0.270, 0.85)
    colors[clr.ScrollbarGrab] = ImVec4(1, 0, 0.3, 1.00)
    colors[clr.ScrollbarGrabHovered] = ImVec4(1, 0, 0.3, 1.00)
    colors[clr.ScrollbarGrabActive] = ImVec4(1, 0, 0.3, 1.00)

    colors[clr.ButtonActive] = ImVec4(1, 0, 0.3, 1.00)
    
		end
		
		if script.radio_button2.v == 1 then
			imgui.SwitchContext()
local style = imgui.GetStyle()
local colors = style.Colors
local clr = imgui.Col
local ImVec4 = imgui.ImVec4

colors[clr.Text] = ImVec4(1.00, 1.00, 1.00, 1.00)
colors[clr.TextDisabled] = ImVec4(0.60, 0.60, 0.60, 1.00)
colors[clr.WindowBg] = ImVec4(0.11, 0.10, 0.11, 1.00)
colors[clr.ChildWindowBg] = ImVec4(0.00, 0.00, 0.00, 0.00)
colors[clr.PopupBg] = ImVec4(0.00, 0.00, 0.00, 0.00)
colors[clr.Border] = ImVec4(0.86, 0.86, 0.86, 1.00)
colors[clr.BorderShadow] = ImVec4(0.00, 0.00, 0.00, 0.00)
colors[clr.FrameBg] = ImVec4(0.21, 0.20, 0.21, 0.60)
colors[clr.FrameBgHovered] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.FrameBgActive] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.TitleBg] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.TitleBgCollapsed] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.TitleBgActive] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.MenuBarBg] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.ScrollbarBg] = ImVec4(0.00, 0.46, 0.65, 0.00)
colors[clr.ScrollbarGrab] = ImVec4(0.00, 0.46, 0.65, 0.44)
colors[clr.ScrollbarGrabHovered] = ImVec4(0.00, 0.46, 0.65, 0.74)
colors[clr.ScrollbarGrabActive] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.ComboBg] = ImVec4(0.15, 0.14, 0.15, 1.00)
colors[clr.CheckMark] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.SliderGrab] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.SliderGrabActive] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.Button] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.ButtonHovered] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.ButtonActive] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.Header] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.HeaderHovered] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.HeaderActive] = ImVec4(0.00, 0.46, 0.65, 1.00)
colors[clr.ResizeGrip] = ImVec4(1.00, 1.00, 1.00, 0.30)
colors[clr.ResizeGripHovered] = ImVec4(1.00, 1.00, 1.00, 0.60)
colors[clr.ResizeGripActive] = ImVec4(1.00, 1.00, 1.00, 0.90)
colors[clr.CloseButton] = ImVec4(1.00, 0.10, 0.24, 0.00)
colors[clr.CloseButtonHovered] = ImVec4(0.00, 0.10, 0.24, 0.00)
colors[clr.CloseButtonActive] = ImVec4(1.00, 0.10, 0.24, 0.00)
colors[clr.PlotLines] = ImVec4(0.00, 0.00, 0.00, 0.00)
colors[clr.PlotLinesHovered] = ImVec4(0.00, 0.00, 0.00, 0.00)
colors[clr.PlotHistogram] = ImVec4(0.00, 0.00, 0.00, 0.00)
colors[clr.PlotHistogramHovered] = ImVec4(0.00, 0.00, 0.00, 0.00)
colors[clr.TextSelectedBg] = ImVec4(0.00, 0.00, 0.00, 0.00)
colors[clr.ModalWindowDarkening] = ImVec4(0.00, 0.00, 0.00, 0.00)
		end
	    if script.radio_button2.v == 2 then
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			local ImVec2 = imgui.ImVec2

    colors[clr.Text]                   = ImVec4(1.00, 1.00, 1.00, 1.00)
	colors[clr.TextDisabled]           = ImVec4(0.50, 0.50, 0.50, 1.00)
    colors[clr.WindowBg]               = imgui.ImColor(0, 0, 0, 255):GetVec4()
	colors[clr.ChildWindowBg]          = ImVec4(1.00, 1.00, 1.00, 0.00)
	colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
	colors[clr.ComboBg]                = colors[clr.PopupBg]
	colors[clr.Border]                 = ImVec4(0.43, 0.43, 0.50, 0.50)
	colors[clr.BorderShadow]           = ImVec4(0.00, 0.00, 0.00, 0.00)
	colors[clr.FrameBg]                = ImVec4(0.12, 0.12, 0.12, 0.94)
	colors[clr.FrameBgHovered]         = ImVec4(0.45, 0.45, 0.45, 0.85)
	colors[clr.FrameBgActive]          = ImVec4(0.63, 0.63, 0.63, 0.63)
	colors[clr.TitleBg]                = ImVec4(0.13, 0.13, 0.13, 0.99)
	colors[clr.TitleBgActive]          = ImVec4(0.13, 0.13, 0.13, 0.99)
	colors[clr.TitleBgCollapsed]       = ImVec4(0.05, 0.05, 0.05, 0.79)
	colors[clr.MenuBarBg]              = ImVec4(0.14, 0.14, 0.14, 1.00)
	colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.53)
	colors[clr.ScrollbarGrab]          = ImVec4(0.31, 0.31, 0.31, 1.00)
	colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
	colors[clr.ScrollbarGrabActive]    = ImVec4(0.51, 0.51, 0.51, 1.00)
	colors[clr.CheckMark]              = ImVec4(1.00, 1.00, 1.00, 1.00)
	colors[clr.SliderGrab]             = ImVec4(0.28, 0.28, 0.28, 1.00)
	colors[clr.SliderGrabActive]       = ImVec4(0.35, 0.35, 0.35, 1.00)
	colors[clr.Button]                 = ImVec4(0.12, 0.12, 0.12, 0.94)
	colors[clr.ButtonHovered]          = ImVec4(0.34, 0.34, 0.35, 0.89)
	colors[clr.ButtonActive]           = ImVec4(0.21, 0.21, 0.21, 0.81)
	colors[clr.Header]                 = ImVec4(0.12, 0.12, 0.12, 0.94)
	colors[clr.HeaderHovered]          = ImVec4(0.34, 0.34, 0.35, 0.89)
	colors[clr.HeaderActive]           = ImVec4(0.12, 0.12, 0.12, 0.94)
	colors[clr.Separator]              = colors[clr.Border]
	colors[clr.SeparatorHovered]       = ImVec4(0.26, 0.59, 0.98, 0.78)
	colors[clr.SeparatorActive]        = ImVec4(0.26, 0.59, 0.98, 1.00)
	colors[clr.ResizeGrip]             = ImVec4(0.26, 0.59, 0.98, 0.25)
	colors[clr.ResizeGripHovered]      = ImVec4(0.26, 0.59, 0.98, 0.67)
	colors[clr.ResizeGripActive]       = ImVec4(0.26, 0.59, 0.98, 0.95)
	colors[clr.CloseButton]            = ImVec4(0.41, 0.41, 0.41, 0.50)
	colors[clr.CloseButtonHovered]     = ImVec4(0.98, 0.39, 0.36, 1.00)
	colors[clr.CloseButtonActive]      = ImVec4(0.98, 0.39, 0.36, 1.00)
	colors[clr.PlotLines]              = ImVec4(0.61, 0.61, 0.61, 1.00)
	colors[clr.PlotLinesHovered]       = ImVec4(1.00, 0.43, 0.35, 1.00)
	colors[clr.PlotHistogram]          = ImVec4(0.90, 0.70, 0.00, 1.00)
	colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.60, 0.00, 1.00)
	colors[clr.TextSelectedBg]         = ImVec4(0.26, 0.59, 0.98, 0.35)
	colors[clr.ModalWindowDarkening]   = ImVec4(0.80, 0.80, 0.80, 0.35)
	
	    end
		if script.radio_button2.v == 0 then
			imgui.SwitchContext()
			local style = imgui.GetStyle()
			local colors = style.Colors
			local clr = imgui.Col
			local ImVec4 = imgui.ImVec4
			local ImVec2 = imgui.ImVec2
			
	colors[clr.Text]                   = ImVec4(1.00, 1.00, 1.00, 1.00)
	colors[clr.TextDisabled]           = ImVec4(0.50, 0.50, 0.50, 1.00)
	colors[clr.ChildWindowBg]          = ImVec4(1.00, 1.00, 1.00, 0.00)
	colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
	colors[clr.ComboBg]                = colors[clr.PopupBg]
	colors[clr.BorderShadow]           = ImVec4(0.00, 0.00, 0.00, 0.00)
	colors[clr.TitleBgCollapsed]       = ImVec4(0.05, 0.05, 0.05, 0.79)
	colors[clr.MenuBarBg]              = ImVec4(0.14, 0.14, 0.14, 1.00)
	colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.53)
	colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
	colors[clr.ScrollbarGrabActive]    = ImVec4(0.51, 0.51, 0.51, 1.00)
	colors[clr.CheckMark]              = ImVec4(1.00, 1.00, 1.00, 1.00)
	colors[clr.SliderGrab]             = ImVec4(0.28, 0.28, 0.28, 1.00)
	colors[clr.SliderGrabActive]       = ImVec4(0.35, 0.35, 0.35, 1.00)
	colors[clr.HeaderHovered]          = ImVec4(0.34, 0.34, 0.35, 0.89)
	colors[clr.HeaderActive]           = ImVec4(0.12, 0.12, 0.12, 0.94)
	colors[clr.Separator]              = colors[clr.Border]
	colors[clr.SeparatorHovered]       = ImVec4(0.26, 0.59, 0.98, 0.78)
	colors[clr.SeparatorActive]        = ImVec4(0.26, 0.59, 0.98, 1.00)
	colors[clr.CloseButton]            = ImVec4(0.41, 0.41, 0.41, 0.50)
	colors[clr.CloseButtonHovered]     = ImVec4(0.98, 0.39, 0.36, 1.00)
	colors[clr.CloseButtonActive]      = ImVec4(0.98, 0.39, 0.36, 1.00)
	colors[clr.PlotLines]              = ImVec4(0.61, 0.61, 0.61, 1.00)
	colors[clr.PlotLinesHovered]       = ImVec4(1.00, 0.43, 0.35, 1.00)
	colors[clr.PlotHistogram]          = ImVec4(0.90, 0.70, 0.00, 1.00)
	colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.60, 0.00, 1.00)
	colors[clr.TextSelectedBg]         = ImVec4(0.26, 0.59, 0.98, 0.35)
	colors[clr.ModalWindowDarkening]   = ImVec4(0.10, 0.10, 0.10, 0.35)
	
	colors[clr.ResizeGrip]             = imgui.ImColor(40, 142, 110, 255):GetVec4()
	colors[clr.ResizeGripHovered]      = imgui.ImColor(35, 121, 93, 174):GetVec4()
	colors[clr.ResizeGripActive]       = imgui.ImColor(44, 154, 119, 255):GetVec4()
	colors[clr.Button]                 = imgui.ImColor(35, 35, 35, 255):GetVec4()
	colors[clr.ButtonHovered]          = imgui.ImColor(35, 121, 93, 174):GetVec4()
	colors[clr.ButtonActive]           = imgui.ImColor(44, 154, 119, 255):GetVec4()
	colors[clr.Header]                 = imgui.ImColor(40, 142, 110, 255):GetVec4()
	colors[clr.WindowBg]               = imgui.ImColor(20, 20, 20, 255):GetVec4()
	colors[clr.Border]                 = imgui.ImColor(40, 142, 110, 90):GetVec4()
	colors[clr.FrameBg]                = imgui.ImColor(40, 142, 110, 113):GetVec4()
	colors[clr.FrameBgHovered]         = imgui.ImColor(40, 142, 110, 164):GetVec4()
	colors[clr.FrameBgActive]          = imgui.ImColor(40, 142, 110, 255):GetVec4()
	colors[clr.TitleBg]                = imgui.ImColor(40, 142, 110, 236):GetVec4()
	colors[clr.TitleBgActive]          = imgui.ImColor(40, 142, 110, 236):GetVec4()
	colors[clr.ScrollbarGrab]          = imgui.ImColor(40, 142, 110, 236):GetVec4()
		end
		
		
	if script.radio_button2.v == 4 then
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4

    colors[clr.FrameBg]                = ImVec4(0.48, 0.16, 0.16, 0.54)
    colors[clr.FrameBgHovered]         = ImVec4(0.98, 0.26, 0.26, 0.40)
    colors[clr.FrameBgActive]          = ImVec4(0.98, 0.26, 0.26, 0.67)
    colors[clr.TitleBg]                = ImVec4(0.04, 0.04, 0.04, 1.00)
    colors[clr.TitleBgActive]          = ImVec4(0.48, 0.16, 0.16, 1.00)
    colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 0.51)
    colors[clr.CheckMark]              = ImVec4(0.98, 0.26, 0.26, 1.00)
    colors[clr.SliderGrab]             = ImVec4(0.88, 0.26, 0.24, 1.00)
    colors[clr.SliderGrabActive]       = ImVec4(0.98, 0.26, 0.26, 1.00)
    colors[clr.Button]                 = ImVec4(0.98, 0.26, 0.26, 0.40)
    colors[clr.ButtonHovered]          = ImVec4(0.98, 0.26, 0.26, 1.00)
    colors[clr.ButtonActive]           = ImVec4(0.98, 0.06, 0.06, 1.00)
    colors[clr.Header]                 = ImVec4(0.98, 0.26, 0.26, 0.31)
    colors[clr.HeaderHovered]          = ImVec4(0.98, 0.26, 0.26, 0.80)
    colors[clr.HeaderActive]           = ImVec4(0.98, 0.26, 0.26, 1.00)
    colors[clr.Separator]              = colors[clr.Border]
    colors[clr.SeparatorHovered]       = ImVec4(0.75, 0.10, 0.10, 0.78)
    colors[clr.SeparatorActive]        = ImVec4(0.75, 0.10, 0.10, 1.00)
    colors[clr.ResizeGrip]             = ImVec4(0.98, 0.26, 0.26, 0.25)
    colors[clr.ResizeGripHovered]      = ImVec4(0.98, 0.26, 0.26, 0.67)
    colors[clr.ResizeGripActive]       = ImVec4(0.98, 0.26, 0.26, 0.95)
    colors[clr.TextSelectedBg]         = ImVec4(0.98, 0.26, 0.26, 0.35)
    colors[clr.Text]                   = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.TextDisabled]           = ImVec4(0.50, 0.50, 0.50, 1.00)
    colors[clr.WindowBg]               = ImVec4(0.06, 0.06, 0.06, 0.94)
    colors[clr.ChildWindowBg]          = ImVec4(1.00, 1.00, 1.00, 0.00)
    colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
    colors[clr.ComboBg]                = colors[clr.PopupBg]
    colors[clr.Border]                 = ImVec4(0.43, 0.43, 0.50, 0.50)
    colors[clr.BorderShadow]           = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.MenuBarBg]              = ImVec4(0.14, 0.14, 0.14, 1.00)
    colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.53)
    colors[clr.ScrollbarGrab]          = ImVec4(0.31, 0.31, 0.31, 1.00)
    colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
    colors[clr.ScrollbarGrabActive]    = ImVec4(0.51, 0.51, 0.51, 1.00)
    colors[clr.CloseButton]            = ImVec4(0.41, 0.41, 0.41, 0.50)
    colors[clr.CloseButtonHovered]     = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.CloseButtonActive]      = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.PlotLines]              = ImVec4(0.61, 0.61, 0.61, 1.00)
    colors[clr.PlotLinesHovered]       = ImVec4(1.00, 0.43, 0.35, 1.00)
    colors[clr.PlotHistogram]          = ImVec4(0.90, 0.70, 0.00, 1.00)
    colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.60, 0.00, 1.00)
    colors[clr.ModalWindowDarkening]   = ImVec4(0.80, 0.80, 0.80, 0.35)
	end
	
	if script.radio_button2.v == 5 then
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4

    colors[clr.FrameBg]                = ImVec4(0.48, 0.23, 0.16, 0.54)
    colors[clr.FrameBgHovered]         = ImVec4(0.98, 0.43, 0.26, 0.40)
    colors[clr.FrameBgActive]          = ImVec4(0.98, 0.43, 0.26, 0.67)
    colors[clr.TitleBg]                = ImVec4(0.04, 0.04, 0.04, 1.00)
    colors[clr.TitleBgActive]          = ImVec4(0.48, 0.23, 0.16, 1.00)
    colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 0.51)
    colors[clr.CheckMark]              = ImVec4(0.98, 0.43, 0.26, 1.00)
    colors[clr.SliderGrab]             = ImVec4(0.88, 0.39, 0.24, 1.00)
    colors[clr.SliderGrabActive]       = ImVec4(0.98, 0.43, 0.26, 1.00)
    colors[clr.Button]                 = ImVec4(0.98, 0.43, 0.26, 0.40)
    colors[clr.ButtonHovered]          = ImVec4(0.98, 0.43, 0.26, 1.00)
    colors[clr.ButtonActive]           = ImVec4(0.98, 0.28, 0.06, 1.00)
    colors[clr.Header]                 = ImVec4(0.98, 0.43, 0.26, 0.31)
    colors[clr.HeaderHovered]          = ImVec4(0.98, 0.43, 0.26, 0.80)
    colors[clr.HeaderActive]           = ImVec4(0.98, 0.43, 0.26, 1.00)
    colors[clr.Separator]              = colors[clr.Border]
    colors[clr.SeparatorHovered]       = ImVec4(0.75, 0.25, 0.10, 0.78)
    colors[clr.SeparatorActive]        = ImVec4(0.75, 0.25, 0.10, 1.00)
    colors[clr.ResizeGrip]             = ImVec4(0.98, 0.43, 0.26, 0.25)
    colors[clr.ResizeGripHovered]      = ImVec4(0.98, 0.43, 0.26, 0.67)
    colors[clr.ResizeGripActive]       = ImVec4(0.98, 0.43, 0.26, 0.95)
    colors[clr.PlotLines]              = ImVec4(0.61, 0.61, 0.61, 1.00)
    colors[clr.PlotLinesHovered]       = ImVec4(1.00, 0.50, 0.35, 1.00)
    colors[clr.TextSelectedBg]         = ImVec4(0.98, 0.43, 0.26, 0.35)
    colors[clr.Text]                   = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.TextDisabled]           = ImVec4(0.50, 0.50, 0.50, 1.00)
    colors[clr.WindowBg]               = ImVec4(0.06, 0.06, 0.06, 0.94)
    colors[clr.ChildWindowBg]          = ImVec4(1.00, 1.00, 1.00, 0.00)
    colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
    colors[clr.ComboBg]                = colors[clr.PopupBg]
    colors[clr.Border]                 = ImVec4(0.43, 0.43, 0.50, 0.50)
    colors[clr.BorderShadow]           = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.MenuBarBg]              = ImVec4(0.14, 0.14, 0.14, 1.00)
    colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.53)
    colors[clr.ScrollbarGrab]          = ImVec4(0.31, 0.31, 0.31, 1.00)
    colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
    colors[clr.ScrollbarGrabActive]    = ImVec4(0.51, 0.51, 0.51, 1.00)
    colors[clr.CloseButton]            = ImVec4(0.41, 0.41, 0.41, 0.50)
    colors[clr.CloseButtonHovered]     = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.CloseButtonActive]      = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.PlotHistogram]          = ImVec4(0.90, 0.70, 0.00, 1.00)
    colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.60, 0.00, 1.00)
    colors[clr.ModalWindowDarkening]   = ImVec4(0.80, 0.80, 0.80, 0.35)
	end
		
	if script.radio_button2.v == 6 then
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4

    colors[clr.FrameBg]                = ImVec4(0.42, 0.48, 0.16, 0.54)
    colors[clr.FrameBgHovered]         = ImVec4(0.85, 0.98, 0.26, 0.40)
    colors[clr.FrameBgActive]          = ImVec4(0.85, 0.98, 0.26, 0.67)
    colors[clr.TitleBg]                = ImVec4(0.04, 0.04, 0.04, 1.00)
    colors[clr.TitleBgActive]          = ImVec4(0.42, 0.48, 0.16, 1.00)
    colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 0.51)
    colors[clr.CheckMark]              = ImVec4(0.85, 0.98, 0.26, 1.00)
    colors[clr.SliderGrab]             = ImVec4(0.77, 0.88, 0.24, 1.00)
    colors[clr.SliderGrabActive]       = ImVec4(0.85, 0.98, 0.26, 1.00)
    colors[clr.Button]                 = ImVec4(0.85, 0.98, 0.26, 0.40)
    colors[clr.ButtonHovered]          = ImVec4(0.85, 0.98, 0.26, 1.00)
    colors[clr.ButtonActive]           = ImVec4(0.82, 0.98, 0.06, 1.00)
    colors[clr.Header]                 = ImVec4(0.85, 0.98, 0.26, 0.31)
    colors[clr.HeaderHovered]          = ImVec4(0.85, 0.98, 0.26, 0.80)
    colors[clr.HeaderActive]           = ImVec4(0.85, 0.98, 0.26, 1.00)
    colors[clr.Separator]              = colors[clr.Border]
    colors[clr.SeparatorHovered]       = ImVec4(0.63, 0.75, 0.10, 0.78)
    colors[clr.SeparatorActive]        = ImVec4(0.63, 0.75, 0.10, 1.00)
    colors[clr.ResizeGrip]             = ImVec4(0.85, 0.98, 0.26, 0.25)
    colors[clr.ResizeGripHovered]      = ImVec4(0.85, 0.98, 0.26, 0.67)
    colors[clr.ResizeGripActive]       = ImVec4(0.85, 0.98, 0.26, 0.95)
    colors[clr.PlotLines]              = ImVec4(0.61, 0.61, 0.61, 1.00)
    colors[clr.PlotLinesHovered]       = ImVec4(1.00, 0.81, 0.35, 1.00)
    colors[clr.TextSelectedBg]         = ImVec4(0.85, 0.98, 0.26, 0.35)
    colors[clr.Text]                   = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.TextDisabled]           = ImVec4(0.50, 0.50, 0.50, 1.00)
    colors[clr.WindowBg]               = ImVec4(0.06, 0.06, 0.06, 0.94)
    colors[clr.ChildWindowBg]          = ImVec4(1.00, 1.00, 1.00, 0.00)
    colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
    colors[clr.ComboBg]                = colors[clr.PopupBg]
    colors[clr.Border]                 = ImVec4(0.43, 0.43, 0.50, 0.50)
    colors[clr.BorderShadow]           = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.MenuBarBg]              = ImVec4(0.14, 0.14, 0.14, 1.00)
    colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.53)
    colors[clr.ScrollbarGrab]          = ImVec4(0.31, 0.31, 0.31, 1.00)
    colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
    colors[clr.ScrollbarGrabActive]    = ImVec4(0.51, 0.51, 0.51, 1.00)
    colors[clr.CloseButton]            = ImVec4(0.41, 0.41, 0.41, 0.50)
    colors[clr.CloseButtonHovered]     = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.CloseButtonActive]      = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.PlotHistogram]          = ImVec4(0.90, 0.70, 0.00, 1.00)
    colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.60, 0.00, 1.00)
    colors[clr.ModalWindowDarkening]   = ImVec4(0.80, 0.80, 0.80, 0.35)
	end
		
	if script.radio_button2.v == 7 then
	imgui.SwitchContext()
local style = imgui.GetStyle()
local colors = style.Colors
local clr = imgui.Col
local ImVec4 = imgui.ImVec4

colors[clr.Text]   = ImVec4(0.00, 0.00, 0.00, 0.75)
colors[clr.TextDisabled]   = ImVec4(0.24, 0.24, 0.24, 1.00)
colors[clr.WindowBg]              = ImVec4(1.00, 1.00, 1.00, 1.00)
colors[clr.ChildWindowBg]         = ImVec4(0.96, 0.96, 0.96, 1.00)
colors[clr.PopupBg]               = ImVec4(0.92, 0.92, 0.92, 1.00)
colors[clr.Border]                = ImVec4(0.86, 0.86, 0.86, 1.00)
colors[clr.BorderShadow]          = ImVec4(0.00, 0.00, 0.00, 0.00)
colors[clr.FrameBg]               = ImVec4(0.88, 0.88, 0.88, 1.00)
colors[clr.FrameBgHovered]        = ImVec4(0.82, 0.82, 0.82, 1.00)
colors[clr.FrameBgActive]         = ImVec4(0.76, 0.76, 0.76, 1.00)
colors[clr.TitleBg]               = ImVec4(0.00, 0.45, 1.00, 0.82)
colors[clr.TitleBgCollapsed]      = ImVec4(0.00, 0.45, 1.00, 0.82)
colors[clr.TitleBgActive]         = ImVec4(0.00, 0.45, 1.00, 0.82)
colors[clr.MenuBarBg]             = ImVec4(0.00, 0.37, 0.78, 1.00)
colors[clr.ScrollbarBg]           = ImVec4(0.00, 0.00, 0.00, 0.00)
colors[clr.ScrollbarGrab]         = ImVec4(0.00, 0.35, 1.00, 0.78)
colors[clr.ScrollbarGrabHovered]  = ImVec4(0.00, 0.33, 1.00, 0.84)
colors[clr.ScrollbarGrabActive]   = ImVec4(0.00, 0.31, 1.00, 0.88)
colors[clr.ComboBg]               = ImVec4(0.92, 0.92, 0.92, 1.00)
colors[clr.CheckMark]             = ImVec4(0.00, 0.49, 1.00, 0.59)
colors[clr.SliderGrab]            = ImVec4(0.00, 0.49, 1.00, 0.59)
colors[clr.SliderGrabActive]      = ImVec4(0.00, 0.39, 1.00, 0.71)
colors[clr.Button]                = ImVec4(0.00, 0.49, 1.00, 0.59)
colors[clr.ButtonHovered]         = ImVec4(0.00, 0.49, 1.00, 0.71)
colors[clr.ButtonActive]          = ImVec4(0.00, 0.49, 1.00, 0.78)
colors[clr.Header]                = ImVec4(0.00, 0.49, 1.00, 0.78)
colors[clr.HeaderHovered]         = ImVec4(0.00, 0.49, 1.00, 0.71)
colors[clr.HeaderActive]          = ImVec4(0.00, 0.49, 1.00, 0.78)
colors[clr.ResizeGrip]            = ImVec4(0.00, 0.39, 1.00, 0.59)
colors[clr.ResizeGripHovered]     = ImVec4(0.00, 0.27, 1.00, 0.59)
colors[clr.ResizeGripActive]      = ImVec4(0.00, 0.25, 1.00, 0.63)
colors[clr.CloseButton]           = ImVec4(0.00, 0.35, 0.96, 0.71)
colors[clr.CloseButtonHovered]    = ImVec4(0.00, 0.31, 0.88, 0.69)
colors[clr.CloseButtonActive]     = ImVec4(0.00, 0.25, 0.88, 0.67)
colors[clr.PlotLines]             = ImVec4(0.00, 0.39, 1.00, 0.75)
colors[clr.PlotLinesHovered]      = ImVec4(0.00, 0.39, 1.00, 0.75)
colors[clr.PlotHistogram]         = ImVec4(0.00, 0.39, 1.00, 0.75)
colors[clr.PlotHistogramHovered]  = ImVec4(0.00, 0.35, 0.92, 0.78)
colors[clr.TextSelectedBg]        = ImVec4(0.00, 0.47, 1.00, 0.59)
colors[clr.ModalWindowDarkening]  = ImVec4(0.20, 0.20, 0.20, 0.35)
	end
	
	if script.radio_button2.v == 8 then
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    local ImVec2 = imgui.ImVec2

    colors[clr.Text]                 = ImVec4(0.92, 0.92, 0.92, 1.00)
    colors[clr.TextDisabled]         = ImVec4(0.44, 0.44, 0.44, 1.00)
    colors[clr.WindowBg]             = ImVec4(0.06, 0.06, 0.06, 1.00)
    colors[clr.ChildWindowBg]        = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.PopupBg]              = ImVec4(0.08, 0.08, 0.08, 0.94)
    colors[clr.ComboBg]              = ImVec4(0.08, 0.08, 0.08, 0.94)
    colors[clr.Border]               = ImVec4(0.51, 0.36, 0.15, 1.00)
    colors[clr.BorderShadow]         = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.FrameBg]              = ImVec4(0.11, 0.11, 0.11, 1.00)
    colors[clr.FrameBgHovered]       = ImVec4(0.51, 0.36, 0.15, 1.00)
    colors[clr.FrameBgActive]        = ImVec4(0.78, 0.55, 0.21, 1.00)
    colors[clr.TitleBg]              = ImVec4(0.51, 0.36, 0.15, 1.00)
    colors[clr.TitleBgActive]        = ImVec4(0.91, 0.64, 0.13, 1.00)
    colors[clr.TitleBgCollapsed]     = ImVec4(0.00, 0.00, 0.00, 0.51)
    colors[clr.MenuBarBg]            = ImVec4(0.11, 0.11, 0.11, 1.00)
    colors[clr.ScrollbarBg]          = ImVec4(0.06, 0.06, 0.06, 0.53)
    colors[clr.ScrollbarGrab]        = ImVec4(0.21, 0.21, 0.21, 1.00)
    colors[clr.ScrollbarGrabHovered] = ImVec4(0.47, 0.47, 0.47, 1.00)
    colors[clr.ScrollbarGrabActive]  = ImVec4(0.81, 0.83, 0.81, 1.00)
    colors[clr.CheckMark]            = ImVec4(0.78, 0.55, 0.21, 1.00)
    colors[clr.SliderGrab]           = ImVec4(0.91, 0.64, 0.13, 1.00)
    colors[clr.SliderGrabActive]     = ImVec4(0.91, 0.64, 0.13, 1.00)
    colors[clr.Button]               = ImVec4(0.51, 0.36, 0.15, 1.00)
    colors[clr.ButtonHovered]        = ImVec4(0.91, 0.64, 0.13, 1.00)
    colors[clr.ButtonActive]         = ImVec4(0.78, 0.55, 0.21, 1.00)
    colors[clr.Header]               = ImVec4(0.51, 0.36, 0.15, 1.00)
    colors[clr.HeaderHovered]        = ImVec4(0.91, 0.64, 0.13, 1.00)
    colors[clr.HeaderActive]         = ImVec4(0.93, 0.65, 0.14, 1.00)
    colors[clr.Separator]            = ImVec4(0.21, 0.21, 0.21, 1.00)
    colors[clr.SeparatorHovered]     = ImVec4(0.91, 0.64, 0.13, 1.00)
    colors[clr.SeparatorActive]      = ImVec4(0.78, 0.55, 0.21, 1.00)
    colors[clr.ResizeGrip]           = ImVec4(0.21, 0.21, 0.21, 1.00)
    colors[clr.ResizeGripHovered]    = ImVec4(0.91, 0.64, 0.13, 1.00)
    colors[clr.ResizeGripActive]     = ImVec4(0.78, 0.55, 0.21, 1.00)
    colors[clr.CloseButton]          = ImVec4(0.47, 0.47, 0.47, 1.00)
    colors[clr.CloseButtonHovered]   = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.CloseButtonActive]    = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.PlotLines]            = ImVec4(0.61, 0.61, 0.61, 1.00)
    colors[clr.PlotLinesHovered]     = ImVec4(1.00, 0.43, 0.35, 1.00)
    colors[clr.PlotHistogram]        = ImVec4(0.90, 0.70, 0.00, 1.00)
    colors[clr.PlotHistogramHovered] = ImVec4(1.00, 0.60, 0.00, 1.00)
    colors[clr.TextSelectedBg]       = ImVec4(0.26, 0.59, 0.98, 0.35)
    colors[clr.ModalWindowDarkening] = ImVec4(0.80, 0.80, 0.80, 0.35)
	end
		
	if script.radio_button2.v == 9 then
	imgui.SwitchContext()
    local style  = imgui.GetStyle()
    local colors = style.Colors
    local clr    = imgui.Col
    local ImVec4 = imgui.ImVec4
    colors[clr.FrameBg]                = ImVec4(0.76, 0.6, 0, 0.74)--
    colors[clr.FrameBgHovered]         = ImVec4(0.84, 0.68, 0, 0.83)--
    colors[clr.FrameBgActive]          = ImVec4(0.92, 0.77, 0, 0.87)--
    colors[clr.TitleBg]                = ImVec4(0.04, 0.04, 0.04, 1.00)--
    colors[clr.TitleBgActive]          = ImVec4(0.92, 0.77, 0, 0.85)--
    colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 0.51)--
    colors[clr.CheckMark]              = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.SliderGrab]             = ImVec4(0.84, 0.68, 0, 1.00)
    colors[clr.SliderGrabActive]       = ImVec4(0.92, 0.77, 0, 1.00)
    colors[clr.Button]                 = ImVec4(0.76, 0.6, 0, 0.85)
    colors[clr.ButtonHovered]          = ImVec4(0.84, 0.68, 0, 1.00)
    colors[clr.ButtonActive]           = ImVec4(0.92, 0.77, 0, 1.00)
    colors[clr.Header]                 = ImVec4(0.84, 0.68, 0, 0.75)
    colors[clr.HeaderHovered]          = ImVec4(0.84, 0.68, 0, 0.90)
    colors[clr.HeaderActive]           = ImVec4(0.92, 0.77, 0, 1.00)
    colors[clr.Separator]              = colors[clr.Border]
    colors[clr.SeparatorHovered]       = ImVec4(0.84, 0.68, 0, 0.78)
    colors[clr.SeparatorActive]        = ImVec4(0.84, 0.68, 0, 1.00)
    colors[clr.ResizeGrip]             = ImVec4(0.76, 0.6, 0, 0.25)
    colors[clr.ResizeGripHovered]      = ImVec4(0.84, 0.68, 0, 0.67)
    colors[clr.ResizeGripActive]       = ImVec4(0.92, 0.77, 0, 0.95)
    colors[clr.TextSelectedBg]         = ImVec4(0.52, 0.34, 0, 0.85)
    colors[clr.Text]                   = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.TextDisabled]           = ImVec4(0.50, 0.50, 0.50, 1.00)
    colors[clr.WindowBg]               = ImVec4(0.06, 0.06, 0.06, 0.94)
    colors[clr.ChildWindowBg]          = ImVec4(1.00, 1.00, 1.00, 0.00)
    colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
    colors[clr.ComboBg]                = colors[clr.PopupBg]
    colors[clr.Border]                 = ImVec4(0.43, 0.43, 0.50, 0.50)
    colors[clr.BorderShadow]           = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.MenuBarBg]              = ImVec4(0.14, 0.14, 0.14, 1.00)
    colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.53)
    colors[clr.ScrollbarGrab]          = ImVec4(0.31, 0.31, 0.31, 1.00)
    colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
    colors[clr.ScrollbarGrabActive]    = ImVec4(0.51, 0.51, 0.51, 1.00)
    colors[clr.CloseButton]            = ImVec4(0.41, 0.41, 0.41, 0.50)
    colors[clr.CloseButtonHovered]     = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.CloseButtonActive]      = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.PlotLines]              = ImVec4(0.61, 0.61, 0.61, 1.00)
    colors[clr.PlotLinesHovered]       = ImVec4(1.00, 0.43, 0.35, 1.00)
    colors[clr.PlotHistogram]          = ImVec4(0.90, 0.70, 0.00, 1.00)
    colors[clr.PlotHistogramHovered]   = ImVec4(1.00, 0.60, 0.00, 1.00)
    colors[clr.ModalWindowDarkening]   = ImVec4(0.80, 0.80, 0.80, 0.35)
	end
	
	if script.radio_button2.v == 10 then
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    colors[clr.FrameBg]                = ImVec4(0.46, 0.11, 0.29, 1.00)
    colors[clr.FrameBgHovered]         = ImVec4(0.69, 0.16, 0.43, 1.00)
    colors[clr.FrameBgActive]          = ImVec4(0.58, 0.10, 0.35, 1.00)
    colors[clr.TitleBg]                = ImVec4(0.00, 0.00, 0.00, 1.00)
    colors[clr.TitleBgActive]          = ImVec4(0.61, 0.16, 0.39, 1.00)
    colors[clr.TitleBgCollapsed]       = ImVec4(0.00, 0.00, 0.00, 0.51)
    colors[clr.CheckMark]              = ImVec4(0.94, 0.30, 0.63, 1.00)
    colors[clr.SliderGrab]             = ImVec4(0.85, 0.11, 0.49, 1.00)
    colors[clr.SliderGrabActive]       = ImVec4(0.89, 0.24, 0.58, 1.00)
    colors[clr.Button]                 = ImVec4(0.46, 0.11, 0.29, 1.00)
    colors[clr.ButtonHovered]          = ImVec4(0.69, 0.17, 0.43, 1.00)
    colors[clr.ButtonActive]           = ImVec4(0.59, 0.10, 0.35, 1.00)
    colors[clr.Header]                 = ImVec4(0.46, 0.11, 0.29, 1.00)
    colors[clr.HeaderHovered]          = ImVec4(0.69, 0.16, 0.43, 1.00)
    colors[clr.HeaderActive]           = ImVec4(0.58, 0.10, 0.35, 1.00)
    colors[clr.Separator]              = ImVec4(0.69, 0.16, 0.43, 1.00)
    colors[clr.SeparatorHovered]       = ImVec4(0.58, 0.10, 0.35, 1.00)
    colors[clr.SeparatorActive]        = ImVec4(0.58, 0.10, 0.35, 1.00)
    colors[clr.ResizeGrip]             = ImVec4(0.46, 0.11, 0.29, 0.70)
    colors[clr.ResizeGripHovered]      = ImVec4(0.69, 0.16, 0.43, 0.67)
    colors[clr.ResizeGripActive]       = ImVec4(0.70, 0.13, 0.42, 1.00)
    colors[clr.TextSelectedBg]         = ImVec4(1.00, 0.78, 0.90, 0.35)
    colors[clr.Text]                   = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.TextDisabled]           = ImVec4(0.60, 0.19, 0.40, 1.00)
    colors[clr.WindowBg]               = ImVec4(0.06, 0.06, 0.06, 0.94)
    colors[clr.ChildWindowBg]          = ImVec4(1.00, 1.00, 1.00, 0.00)
    colors[clr.PopupBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
    colors[clr.ComboBg]                = ImVec4(0.08, 0.08, 0.08, 0.94)
    colors[clr.Border]                 = ImVec4(0.49, 0.14, 0.31, 1.00)
    colors[clr.BorderShadow]           = ImVec4(0.49, 0.14, 0.31, 0.00)
    colors[clr.MenuBarBg]              = ImVec4(0.15, 0.15, 0.15, 1.00)
    colors[clr.ScrollbarBg]            = ImVec4(0.02, 0.02, 0.02, 0.53)
    colors[clr.ScrollbarGrab]          = ImVec4(0.31, 0.31, 0.31, 1.00)
    colors[clr.ScrollbarGrabHovered]   = ImVec4(0.41, 0.41, 0.41, 1.00)
    colors[clr.ScrollbarGrabActive]    = ImVec4(0.51, 0.51, 0.51, 1.00)
    colors[clr.CloseButton]            = ImVec4(0.41, 0.41, 0.41, 0.50)
    colors[clr.CloseButtonHovered]     = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.CloseButtonActive]      = ImVec4(0.98, 0.39, 0.36, 1.00)
    colors[clr.ModalWindowDarkening]   = ImVec4(0.80, 0.80, 0.80, 0.35)

	end
		
	if script.radio_button3.v == 0 then
	    memory.fill(0x6FF452, 0x90, 10, true)
        memory.setfloat(0xC3EFA4, 1.335 , true)
	end
	
	if script.radio_button3.v == 1 then
	    memory.fill(0x6FF452, 0x90, 10, true)
        memory.setfloat(0xC3EFA4, 1.48 , true)
	end
	
	if script.radio_button4.v == 0 then
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    local ImVec2 = imgui.ImVec2
	
	style.WindowRounding = 0
	style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
	style.ChildWindowRounding = 0
	style.FrameRounding = 0
	style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
	style.ScrollbarSize = 13.0
	style.ScrollbarRounding = 1
	style.GrabMinSize = 8.0
	style.GrabRounding = 0
	style.WindowPadding = imgui.ImVec2(4.0, 4.0)
	style.FramePadding = imgui.ImVec2(2.5, 3.5)
	style.ButtonTextAlign = imgui.ImVec2(0.02, 0.4)    
	end
	
	if script.radio_button4.v == 1 then
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    local ImVec2 = imgui.ImVec2
	
	style.WindowRounding = 3
	style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
	style.ChildWindowRounding = 3
	style.FrameRounding = 3
	style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
	style.ScrollbarSize = 13.0
	style.ScrollbarRounding = 1
	style.GrabMinSize = 8.0
	style.GrabRounding = 3
	style.WindowPadding = imgui.ImVec2(4.0, 4.0)
	style.FramePadding = imgui.ImVec2(2.5, 3.5)
	style.ButtonTextAlign = imgui.ImVec2(0.02, 0.4)    
	end
	
	if script.radio_button4.v == 2 then
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    local ImVec2 = imgui.ImVec2
	
	style.WindowRounding = 10
	style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
	style.ChildWindowRounding = 10
	style.FrameRounding = 10
	style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
	style.ScrollbarSize = 13.0
	style.ScrollbarRounding = 1
	style.GrabMinSize = 8.0
	style.GrabRounding = 10
	style.WindowPadding = imgui.ImVec2(4.0, 4.0)
	style.FramePadding = imgui.ImVec2(2.5, 3.5)
	style.ButtonTextAlign = imgui.ImVec2(0.02, 0.4)   
	end
	end
end


function ShowHelpMarker(param)
  imgui.TextDisabled('(???)')
  if imgui.IsItemHovered() then
    imgui.BeginTooltip()
    imgui.PushTextWrapPos(imgui.GetFontSize() * 35.0)
    imgui.TextUnformatted(param)
    imgui.PopTextWrapPos()
    imgui.EndTooltip()
  end
end


local imBool = imgui.ImBool(false)


local fa = require 'faIcons'

show_main_window = imgui.ImBool(false)

local fa_font = nil
local fa_glyph_ranges = imgui.ImGlyphRanges({ fa.min_range, fa.max_range })
function imgui.BeforeDrawFrame()
  if fa_font == nil then
    local font_config = imgui.ImFontConfig() -- to use 'imgui.ImFontConfig.new()' on error
    font_config.MergeMode = true

    fa_font = imgui.GetIO().Fonts:AddFontFromFileTTF('moonloader/sadfi resource/resource/fonts/fontawesome-webfont.ttf', 14.0, font_config, fa_glyph_ranges)
  end
end

function get_file_name(fpath)
	local fname = fpath:reverse()
	local i = string.find(fname,'/')
	if i and i >= 1 and #fname >= 1 then
		fname = fname:sub(1,i-1)
	end
	return (fname:reverse()):match("(.+)%..+")
end

function get_get_file_ext(fname) 
	fname = fname:reverse()
	local i = string.find(fname,'%.')
	if i and i >= 1 then
		fname = fname:sub(1,i)
		return fname:reverse()	
	end
end

local files = {}
function attrdir (path)
	local sep = "/"
	for file in lfs.dir(path) do
		if file ~= "." and file ~= ".." then
			local f = path..sep..file
			local attr = lfs.attributes (f)
			assert (type(attr) == "table")
			if attr.mode == "directory" then
				attrdir (f)
			else
				local fs = f:upper()
				if (get_get_file_ext(fs)=='.DFF') then 
					table.insert(files, get_file_name(fs))
				end
			end
		end
	end
	return files
end

local mod_path = getGameDirectory() .. "\\modloader\\"..thisScript().name --((thisScript().path):match("(.+)%..+")..'\\')
if not doesDirectoryExist(mod_path) then 
	createDirectory(mod_path) 
	print('Criado diretorio >> '.. mod_path)
end 

local models_list = {}
function load_models_lists()
	models_list = {}
	files = {}
	models_list = attrdir(mod_path)
end

function setModel(strModel)
	if type(strModel)=='string' then 
		loadSpecialCharacter(strModel,2)
		loadAllModelsNow()
		setPlayerModel(PLAYER_HANDLE,291)
		unloadSpecialCharacter(291)
	end
end

function relogger()
    sampToggleCursor(false)
    showCursor(false)
    thisScript():reload()
end



function ev.onSendPlayerSync(data)
	player_sync = {position = {}, health = {}, armor = {}, quaternion = {}, moveSpeed = {}, weapon = {}}
	player_sync.position.x = data.position.x
	player_sync.position.y = data.position.y
	player_sync.position.z = data.position.z
	player_sync.health = 100
	player_sync.armor = 0
	player_sync.quaternion[0] = data.quaternion[0]
	player_sync.quaternion[1] = data.quaternion[1]
	player_sync.quaternion[2] = data.quaternion[2]
	player_sync.quaternion[3] = data.quaternion[3]
	player_sync.moveSpeed.x = data.moveSpeed.x
	player_sync.moveSpeed.y = data.moveSpeed.y
	player_sync.moveSpeed.z = data.moveSpeed.z
	player_sync.weapon = 0
end

function change_activate_button() sampAddChatMessage(tag..'Press the key to which you want to change the menu activation.', 0xFFFF0000) lua_thread.create(function() while true do wait(0) local downKey = getDownKeys() if downKey ~= '' then HLcfg.config.actKey = downKey sampAddChatMessage(tag..'Installed a new key to activate the main menu of the cheat. New activator is button: '..vkeys.key_names[HLcfg.config.actKey].. '', 0xFFFF0000) save() break end end end) 
end



local function give_weapon_to_char(char,weapon,ammo)
    local m = getWeapontypeModel(weapon)
    if isModelAvailable(m) then 
        if not hasModelLoaded(m) then 
            requestModel(m)
            loadAllModelsNow()
        end 
        giveWeaponToChar(char,weapon,ammo)
        --markModelAsNoLongerNeeded(m)
    end
end

local string_buf_12 = imgui.ImBuffer(12)

function imgui.OnDrawFrame()
	if mainwin.v then
	local sw, sh = getScreenResolution()
	local iScreenWidth, iScreenHeight = getScreenResolution()
	local tLastKeys = {}

    imgui.SetNextWindowPos(imgui.ImVec2(iScreenWidth / 2, iScreenHeight / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))
    imgui.SetNextWindowSize(imgui.ImVec2(850, 503), imgui.Cond.FirstUseEver)
	imgui.Begin('Advanced SADFI Project Version: ' .. version_script.. '' ,nil,2+32+128+2048)


	local btn_size = imgui.ImVec2(-0.1, 0)
	imgui.Spacing()
	imgui.BeginChild('##left', imgui.ImVec2(150, 0), true)
	imgui.Separator()
	

	if imgui.Button(fa.ICON_USER_O .. ' Player', imgui.ImVec2((imgui.GetWindowWidth()-10)/1, 30)) then menu = 1 end
	if imgui.Button(fa.ICON_HAND_O_RIGHT  .. ' Weapons', imgui.ImVec2((imgui.GetWindowWidth()-10)/1, 30)) then menu = 2 end
	if imgui.Button(fa.ICON_CROSSHAIRS .. ' Aim', imgui.ImVec2((imgui.GetWindowWidth()-10)/1, 30)) then menu = 3 end
	if imgui.Button(fa.ICON_CAR .. ' Vehicles', imgui.ImVec2((imgui.GetWindowWidth()-10)/1, 30)) then menu = 4 end
	if imgui.Button(fa.ICON_EYE .. ' Visual', imgui.ImVec2((imgui.GetWindowWidth()-10)/1, 30)) then menu = 5 end
	if imgui.Button(fa.ICON_MAP .. ' Teleport', imgui.ImVec2((imgui.GetWindowWidth()-10)/1, 30)) then menu = 6 end
	if imgui.Button(fa.ICON_GAMEPAD .. ' Game', imgui.ImVec2((imgui.GetWindowWidth()-10)/1, 30)) then menu = 7 end
	if imgui.Button(fa.ICON_SERVER .. ' Server', imgui.ImVec2((imgui.GetWindowWidth()-10)/1, 30)) then menu = 11 end
	if imgui.Button(fa.ICON_COG .. ' Settings & Plugins', imgui.ImVec2((imgui.GetWindowWidth()-10)/1, 30)) then menu = 10 end
	if imgui.Button(fa.ICON_BOMB .. ' Commands', imgui.ImVec2((imgui.GetWindowWidth()-10)/1, 30)) then menu = 13 end
	if imgui.Button(fa.ICON_INFO_CIRCLE .. ' Info', imgui.ImVec2((imgui.GetWindowWidth()-10)/1, 30)) then menu = 9 end
	imgui.EndChild()
	imgui.SameLine()
	imgui.BeginChild('##right', imgui.ImVec2(0, 0), true)
	if menu == 1 then 
	imgui.BeginChild('##left', imgui.ImVec2(250, 0), true)
	    if imgui.Button("Suicide", imgui.ImVec2((imgui.GetWindowWidth()-10)/2, 30)) then
            setCharHealth(PLAYER_PED,0)
		end
		imgui.SameLine()
	    if imgui.Button("Respawn", imgui.ImVec2((imgui.GetWindowWidth()-15)/2, 30)) then
            sampSpawnPlayer()
		end
		imgui.Separator()
            if imgui.Checkbox('GM', elements.checkbox.GM) then HLcfg.config.GM = elements.checkbox.GM.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Player immortality.')
            if imgui.Checkbox('NoFall', elements.checkbox.nofall) then HLcfg.config.nofall = elements.checkbox.nofall.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'The animation after the fall does not play.')
            if imgui.Checkbox('Ghost Mode', elements.checkbox.ghostmode) then HLcfg.config.ghostmode = elements.checkbox.ghostmode.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Walk trough people')
            if imgui.Checkbox('Surfer', elements.checkbox.surfer) then HLcfg.config.surfer = elements.checkbox.surfer.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Player will start surfing.')
		imgui.SliderInt('Surf Speed', elements.sliders.speedsurfer, 0, 50)
		HLcfg.config.speedsurfer = elements.sliders.speedsurfer.v
		save()
            if imgui.Checkbox('Air Brake', elements.checkbox.airbrk) then HLcfg.config.airbrk = elements.checkbox.airbrk.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Go trough walls. (Press J then K for activation)')
            if imgui.Checkbox('Fast Walk', elements.checkbox.fastwalk) then HLcfg.config.fastwalk = elements.checkbox.fastwalk.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Character starts to run and walk fast.')
		imgui.SliderInt('FW Speed', elements.sliders.speedfastwalk, 0, 20)
		HLcfg.config.speedfastwalk = elements.sliders.speedfastwalk.v
		save()
            if imgui.Checkbox('Infinity Run', elements.checkbox.infinityrun) then HLcfg.config.infinityrun = elements.checkbox.infinityrun.v save() end
			imgui.SameLine()
            imgui.TextQuestion(u8"You will never get tired.")	
            if imgui.Checkbox('Mega Jump', elements.checkbox.megajump) then HLcfg.config.megajump = elements.checkbox.megajump.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'High jump.')
            if imgui.Checkbox('Unfreeze', elements.checkbox.unfreeze) then HLcfg.config.unfreeze = elements.checkbox.unfreeze.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Unfreezes your character. When function is activated press 2 on keyboard')
            if imgui.Checkbox('AntiStun', elements.checkbox.antistun) then HLcfg.config.antistun = elements.checkbox.antistun.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Animation after hitting a bullet is not played.')
            if imgui.Checkbox('Block Overdose Animations', elements.checkbox.blockoverdoseanimations) then HLcfg.config.blockoverdoseanimations = elements.checkbox.blockoverdoseanimations.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Blocks breaking animation.')
            if imgui.Checkbox('160 HP', elements.checkbox.fullhp) then HLcfg.config.fullhp = elements.checkbox.fullhp.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Increases HP bar to 160.')
            if imgui.Checkbox('Fake Lags', elements.checkbox.fakelags) then HLcfg.config.fakelags = elements.checkbox.fakelags.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'You start lagging from the side.')
            if imgui.Checkbox('Anti AFK', elements.checkbox.antiafk) then HLcfg.config.antiafk = elements.checkbox.antiafk.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'The character will not go to AFK.')
            if imgui.Checkbox('Invisible [ON FOOT]', elements.checkbox.invisible) then HLcfg.config.invisible = elements.checkbox.invisible.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Makes your character invisible.')
           if imgui.Checkbox('Ranquats [ON FOOT]', cb60) then
					 if HH_randquats then
						 HH_randquats = false
					 else
						 HH_randquats = true
					 end
				 end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Makes your character rotating crazy.')
            imgui.Checkbox('UpideDown [ON FOOT]', HH_upsidedown)
			imgui.SameLine()	
        imgui.TextQuestion(u8'Makes your character go upside down.')
		if imgui.Checkbox('Set Top ID', cb8) then
			setLocalId(999)
			end
		imgui.SameLine()
		imgui.TextQuestion("Will set you ID - 999, there may be a bug with chat")
		if imgui.Checkbox('No Ped', cb18) then
			if r then
				r = false
			SetRwObjectAlpha(playerPed, 1000)
		else
		  r = true
			SetRwObjectAlpha(playerPed, 0)
			end
		end
		imgui.SameLine()
		imgui.TextQuestion("It will remove you visibility of your character")
       if imgui.Button("Pulsator", imgui.ImVec2((imgui.GetWindowWidth()-15)/2, 30)) then
			pulsator = not pulsator
			sampAddChatMessage(pulsator and tag..'Health & Armour pulsator ON' or tag..'Health & Armour pulsator OFF', -1)
		end
		imgui.SameLine()
       if imgui.Button("Allow BunnyHop", imgui.ImVec2((imgui.GetWindowWidth()-15)/2, 30)) then
			bh = not bh
			sampAddChatMessage(bh and tag..'AllowBhop ON' or tag..'AllowBhop OFF', -1)
		end		
	imgui.EndChild()
	imgui.SameLine()
	imgui.BeginChild('##right', imgui.ImVec2(0, 0), true)
	imgui.TextWrapped(thisScript().description)
	imgui.NewLine()
	imgui.Separator()	
	if imgui.MenuItem('Reload (press me every time)',nil,false,true) then
		load_models_lists()
	end 
	imgui.Separator()	
	if imgui.MenuItem('Reset Player (set your skin to CJ)',nil,false,true) then
		setPlayerModel(PLAYER_HANDLE,0)
	end 
	imgui.Separator()
	imgui.Spacing()
	imgui.ListBoxHeader('Skins',#models_list,10)
	for k,v in pairs(models_list) do
		if #(string_buf_12.v) <= 1 or ( (v:upper()):find((string_buf_12.v):upper()) ) then 
			imgui.Bullet()
			if imgui.MenuItem(v,nil,false,true) then
				lua_thread.create(setModel,v)
			end 
		end
	end
	imgui.ListBoxFooter()
	if imgui.InputText('Find',string_buf_12) then 
		printStringNow(string_buf_12.v,1000)
	end
	imgui.EndChild()
	end
	if menu == 2 then 
	imgui.BeginChild('##left', imgui.ImVec2(250, 0), true)
            if imgui.Checkbox('Infinity Ammo', elements.checkbox.infinityammo) then HLcfg.config.infinityammo = elements.checkbox.infinityammo.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'You will have endless ammo.')
            if imgui.Checkbox('Auto Scroll', elements.checkbox.autoscroll) then HLcfg.config.autoscroll = elements.checkbox.autoscroll.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Pressing Q moves the weapon. (Q or E does not need to be pressed twice)')
            if imgui.Checkbox('Fast Deagle', elements.checkbox.fastdeagle) then HLcfg.config.fastdeagle = elements.checkbox.fastdeagle.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Fast firing from Deagle.')
            if imgui.Checkbox('Full Skills', elements.checkbox.fullskills) then HLcfg.config.fullskills = elements.checkbox.fullskills.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Full Weapon Skills.')
            if imgui.Checkbox('Fast Fire', elements.checkbox.fastfire) then HLcfg.config.fastfire = elements.checkbox.fastfire.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Rapid Weapon Shooting.')
            if imgui.Checkbox('Rapid Fire', elements.checkbox.rapidfire) then HLcfg.config.rapidfire = elements.checkbox.rapidfire.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Fast shooting with weapons (with customization).')
		imgui.SliderInt('Rapid Speed', pRapidSpeed, 0, 15)
            if imgui.Checkbox('No Reload', elements.checkbox.noreload) then HLcfg.config.noreload = elements.checkbox.noreload.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Shooting without reloading.')
		if imgui.Checkbox("Bell 1", elements.checkbox.bell) then HLcfg.config.megajump = elements.checkbox.megajump.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'When you take damage to player, you will hear sound of this bell')
		if imgui.Button('               Remove All Weapons', imgui.ImVec2((imgui.GetWindowWidth()-25)/1, 30)) then
		removeAllCharWeapons(PLAYER_PED)
		notf.addNotification(string.format("Advanced SADFI Project:\nWeapons removed !", 1), 5)
		end
	imgui.EndChild()
	imgui.SameLine()
	imgui.BeginChild('##right', imgui.ImVec2(0, 0), true)
	
	imgui.SliderInt('Ammo', pAmmo, 1, 999)
	imgui.SliderInt('Weapon ID', pWeap, 1, 46)
	imgui.Separator()

	if pWeap.v == 1 then 
    weapon1 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\1.jpg")
	imgui.Image(weapon1, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 2 then 
    weapon2 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\2.jpg")
	imgui.Image(weapon2, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 3 then 
    weapon3 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\3.jpg")
	imgui.Image(weapon3, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 4 then 
    weapon4 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\4.jpg")
	imgui.Image(weapon4, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 5 then 
    weapon5 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\5.jpg")
	imgui.Image(weapon5, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 6 then 
    weapon6 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\6.jpg")
	imgui.Image(weapon6, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 7 then 
    weapon7 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\7.jpg")
	imgui.Image(weapon7, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 8 then 
    weapon8 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\8.jpg")
	imgui.Image(weapon8, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 9 then 
    weapon9 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\9.jpg")
	imgui.Image(weapon9, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 10 then 
    weapon10 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\10.jpg")
	imgui.Image(weapon10, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 11 then 
    weapon11 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\11.jpg")
	imgui.Image(weapon11, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 12 then 
    weapon12 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\12.jpg")
	imgui.Image(weapon12, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 13 then 
    weapon13 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\13.jpg")
	imgui.Image(weapon13, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 14 then 
    weapon14 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\14.jpg")
	imgui.Image(weapon14, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 15 then 
    weapon15 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\15.jpg")
	imgui.Image(weapon15, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 16 then 
    weapon16 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\16.jpg")
	imgui.Image(weapon16, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 17 then 
    weapon17 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\17.jpg")
	imgui.Image(weapon17, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 18 then 
    weapon18 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\18.jpg")
	imgui.Image(weapon18, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 19 then 
    weapon19 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\19.jpg")
	imgui.Image(weapon19, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 20 then 
    weapon20 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\20.jpg")
	imgui.Image(weapon20, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 21 then 
    weapon21 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\21.jpg")
	imgui.Image(weapon21, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 22 then 
    weapon22 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\22.jpg")
	imgui.Image(weapon22, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 23 then 
    weapon23 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\23.jpg")
	imgui.Image(weapon23, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 24 then 
    weapon24 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\24.jpg")
	imgui.Image(weapon24, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 25 then 
    weapon25 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\25.jpg")
	imgui.Image(weapon25, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 26 then 
    weapon26 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\26.jpg")
	imgui.Image(weapon26, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 27 then 
    weapon27 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\27.jpg")
	imgui.Image(weapon27, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 28 then 
    weapon28 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\28.jpg")
	imgui.Image(weapon28, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 29 then 
    weapon29 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\29.jpg")
	imgui.Image(weapon29, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 30 then 
    weapon30 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\30.jpg")
	imgui.Image(weapon30, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 31 then 
    weapon31 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\31.jpg")
	imgui.Image(weapon31, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 32 then 
    weapon32 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\32.jpg")
	imgui.Image(weapon32, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 33 then 
    weapon33 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\33.jpg")
	imgui.Image(weapon33, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 34 then 
    weapon34 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\34.jpg")
	imgui.Image(weapon34, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 35 then 
    weapon35 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\35.jpg")
	imgui.Image(weapon35, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 36 then 
    weapon36 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\36.jpg")
	imgui.Image(weapon36, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 37 then 
    weapon37 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\37.jpg")
	imgui.Image(weapon37, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 38 then 
    weapon38 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\38.jpg")
	imgui.Image(weapon38, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 39 then 
    weapon39 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\39.jpg")
	imgui.Image(weapon39, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 40 then 
    weapon40 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\40.png") -- fix me
	imgui.Image(weapon40, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 41 then 
    weapon41 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\41.jpg")
	imgui.Image(weapon41, imgui.ImVec2(64, 64))
	end
	
	if pWeap.v == 42 then 
    weapon42 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\42.jpg")
	imgui.Image(weapon42, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 43 then 
    weapon43 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\43.jpg")
	imgui.Image(weapon43, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 44 then 
    weapon44 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\44.jpg")
	imgui.Image(weapon44, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 45 then 
    weapon45 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\45.jpg")
	imgui.Image(weapon45, imgui.ImVec2(64, 64))
	end
	if pWeap.v == 46 then 
    weapon46 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\weapons\\46.jpg")
	imgui.Image(weapon46, imgui.ImVec2(64, 64))
	end
	
	imgui.SameLine()
	
	if imgui.Button('             Get this weapon', imgui.ImVec2(196, 64)) then
		give_weapon_to_char(PLAYER_PED,pWeap.v,pAmmo.v)
	end
	
	imgui.Separator()
	
	imgui.EndChild()
	end
	if menu == 3 then 
            if imgui.Checkbox('Auto +C Cbug', elements.checkbox.cbug) then HLcfg.config.cbug = elements.checkbox.cbug.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'auto Cbug.')
            if imgui.Checkbox('Cbug Helper', elements.checkbox.cbughelper) then HLcfg.config.cbughelper = elements.checkbox.cbughelper.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Easy Cbugging.')
            if imgui.Checkbox('NoSpread', elements.checkbox.nospread) then HLcfg.config.nospread = elements.checkbox.nospread.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Scope will not expand.')
            if imgui.Checkbox('SensFix', elements.checkbox.sensfix) then HLcfg.config.sensfix = elements.checkbox.sensfix.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Makes smooth turns when aiming with a weapon.')
		if imgui.CollapsingHeader("AimBot") then
            if imgui.Checkbox('ON / OFF', elements.checkbox.aimbot) then HLcfg.config.aimbot = elements.checkbox.aimbot.v save() end
			imgui.SameLine()	
            imgui.TextQuestion(u8'Auto Aim On Target Body.')
		end
		if imgui.CollapsingHeader("Silent Aim") then
            if imgui.Checkbox('ON / OFF', elements.checkbox.silentaim) then HLcfg.config.silentaim = elements.checkbox.silentaim.v save() end
            end
		end

	if menu == 4 then 
            if imgui.Checkbox('GM Car', elements.checkbox.gmcar) then HLcfg.config.gmcar = elements.checkbox.gmcar.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Unbreakable car.')
			if imgui.Checkbox(u8'Show car model', elements.checkbox.carmodel) then HLcfg.config.carmodel = elements.checkbox.carmodel.v save() end
		imgui.SameLine()
		imgui.TextQuestion(u8'Show you car models in your stream')
			if imgui.Checkbox(u8'Show car door status', elements.checkbox.cardoor) then HLcfg.config.cardoor = elements.checkbox.cardoor.v save() end
		imgui.SameLine()
		imgui.TextQuestion(u8'Show door status of a car')
			if imgui.Checkbox(u8'Show car ID', elements.checkbox.carid) then HLcfg.config.carid = elements.checkbox.carid.v save() end
		imgui.SameLine()
		imgui.TextQuestion(u8'Show all car ids arond you')
            if imgui.Checkbox('No Fall of Bike', elements.checkbox.nofbike) then HLcfg.config.nofbike = elements.checkbox.nofbike.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'never fall of bike again.')
            if imgui.Checkbox('Mega Jump BMX', elements.checkbox.megajumpbmx) then HLcfg.config.megajumpbmx = elements.checkbox.megajumpbmx.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'High jump with bmx.')
            if imgui.Checkbox('Drift Mode', elements.checkbox.driftmode) then HLcfg.config.driftmode = elements.checkbox.driftmode.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Use (A - D)')
            if imgui.Checkbox('Easy Drive', elements.checkbox.easydrive) then HLcfg.config.easydrive = elements.checkbox.easydrive.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Better Driving.')
            if imgui.Checkbox('CarShot', elements.checkbox.carshot) then HLcfg.config.carshot = elements.checkbox.carshot.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'The machine begins to carry everything.')
            if imgui.Checkbox('Tank Mode', elements.checkbox.tmode) then HLcfg.config.tmode = elements.checkbox.tmode.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Heavy Car.')
            if imgui.Checkbox('Wheel GM', elements.checkbox.wheelgm) then HLcfg.config.wheelgm = elements.checkbox.wheelgm.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'god mode wheels.')
            if imgui.Checkbox('Nitro Mode', elements.checkbox.nitro) then HLcfg.config.nitro = elements.checkbox.nitro.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'press num0 to get Nitro.')
            if imgui.Checkbox('Drift Nitro Mode', elements.checkbox.driftnitro) then HLcfg.config.driftnitro = elements.checkbox.driftnitro.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'press several time left ctrl to get Infinity Nitro. (1 click = 1 nitro)')
            if imgui.Checkbox('Hydraulics Mode', elements.checkbox.hydmode) then HLcfg.config.hydmode = elements.checkbox.hydmode.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'get free Hydraulics.')
            if imgui.Checkbox('Infinity Fuel', elements.checkbox.infinityfuel) then HLcfg.config.infinityfuel = elements.checkbox.infinityfuel.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'The car will be started when there is no gas in it.')
            if imgui.Checkbox('NoRadio', elements.checkbox.noradio) then HLcfg.config.noradio = elements.checkbox.noradio.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Disable Radio.')
            if imgui.Checkbox('Break Dance', elements.checkbox.breakdance) then HLcfg.config.breakdance = elements.checkbox.breakdance.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Use (J-L-K-I-U-O)')
            if imgui.Checkbox('Car Jump', elements.checkbox.carjump) then HLcfg.config.carjump = elements.checkbox.carjump.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Press B to jump')
            if imgui.Checkbox('Delete Hood', elements.checkbox.deletehauba) then HLcfg.config.deletehauba = elements.checkbox.deletehauba.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Press (1) to delete hood from car')
            if imgui.Checkbox('Fire Troll', elements.checkbox.act50) then HLcfg.config.act50 = elements.checkbox.act50.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'The car is on fire, but never explodes')
            if imgui.Checkbox('Fast Brake', elements.checkbox.fastbrake) then HLcfg.config.fastbrake = elements.checkbox.fastbrake.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Car instant stops on key SPACE.')
		if imgui.Button('Explode your Vehicle', imgui.ImVec2((imgui.GetWindowWidth()-25)/1, 30)) and isCharInAnyCar(PLAYER_PED) then 
		local veh = storeCarCharIsInNoSave(PLAYER_PED)
		setCarHealth(veh, 1.0)
		notf.addNotification(string.format("Advanced SADFI Project:\nVehicle Explodded !", 1), 5)
		end
		if imgui.Button('Repair vehicle', imgui.ImVec2((imgui.GetWindowWidth()-25)/1, 30)) and  isCharInAnyCar(PLAYER_PED) then
		local veh = storeCarCharIsInNoSave(PLAYER_PED)
		setCarHealth(veh, 1000.0)
		notf.addNotification(string.format("Advanced SADFI Project:\nvehicle fixed !", 1), 5)
		end
		if imgui.Button('Turn Off Radio', imgui.ImVec2((imgui.GetWindowWidth()-25)/1, 30)) and  isCharInAnyCar(PLAYER_PED) then
		setRadioChannel(12)
		notf.addNotification(string.format("Advanced SADFI Project:\nRadio turned off !", 1), 5)
		end
		if imgui.Button('Add Hydraulics', imgui.ImVec2((imgui.GetWindowWidth()-25)/2, 30)) and  isCharInAnyCar(PLAYER_PED) then
		local veh = storeCarCharIsInNoSave(PLAYER_PED)
		setCarHydraulics(veh, true)
		notf.addNotification(string.format("Advanced SADFI Project:\nHydraulics was added !", 1), 5)
		end
		imgui.SameLine()
		if imgui.Button('Remove Hydraulics', imgui.ImVec2((imgui.GetWindowWidth()-25)/2, 30)) and  isCharInAnyCar(PLAYER_PED) then
		local veh = storeCarCharIsInNoSave(PLAYER_PED)
		setCarHydraulics(veh, false)
		notf.addNotification(string.format("Advanced SADFI Project:\nHydraulics was removed !", 1), 5)
		end
	end
    if menu == 5 then 
            if imgui.Checkbox('Information Bar', elements.checkbox.infbar) then HLcfg.config.infbar = elements.checkbox.infbar.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Turns on information bar of project')
            if imgui.Checkbox('Chat Helper', elements.checkbox.chathelper) then HLcfg.config.chathelper = elements.checkbox.chathelper.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Turns on chat helper when pressing T')
            if imgui.Checkbox('Name Tags', elements.checkbox.nametags) then HLcfg.config.nametags = elements.checkbox.nametags.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Player nicknames visible through walls.')
            if imgui.Checkbox('Skeletal Wallhack', elements.checkbox.skeletal) then HLcfg.config.skeletal = elements.checkbox.skeletal.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Skeleton of players is visible through the walls.')
            if imgui.Checkbox('ESP Box', elements.checkbox.espbox) then HLcfg.config.espbox = elements.checkbox.espbox.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'add box out of a player.')
            if imgui.Checkbox('Distance', elements.checkbox.showdist) then HLcfg.config.showdist = elements.checkbox.showdist.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'See distance between you and other players.')
            if imgui.Checkbox('Fisheye Effect', elements.checkbox.fisheye) then HLcfg.config.fisheye = elements.checkbox.fisheye.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'See like fishes.')
            if imgui.Checkbox('HP on Numbers', elements.checkbox.numhp) then HLcfg.config.numhp = elements.checkbox.numhp.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Your hp will be showed in numbers.')
            if imgui.Checkbox('Night Vision', elements.checkbox.nightvision) then HLcfg.config.nightvision = elements.checkbox.nightvision.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Turns on night vision.')
            if imgui.Checkbox('Thermal Vision', elements.checkbox.thermalvision) then HLcfg.config.thermalvision = elements.checkbox.thermalvision.v save() end
			imgui.SameLine()	
        imgui.TextQuestion(u8'Turns on thermal vision')
    end
	if menu == 6 then 
        if imgui.RadioButton("Teleport ", script.radio_button, 0) then end
		imgui.SameLine()
		if imgui.RadioButton("Search ", script.radio_button, 1) then end
		if script.show_coord.v then
			imgui.SameLine()
			local x, y, z = getCharCoordinates(PLAYER_PED)
			imgui.Text(string.format("| Coords : %d %d %d ",  math.floor(x) ,  math.floor(y) ,  math.floor(z)))
		end
		imgui.Separator()
		imgui.Spacing()
		if script.radio_button.v == 0 then
			imgui.Columns(2, nil, false)
			imgui.Checkbox("Quick teleport",  script.quick_teleport)
			imgui.Checkbox("Auto Z coordinates",  script.auto_z)
			information_tooltip("The script would get Z coord automatically")
			imgui.NextColumn()
			imgui.Checkbox("Show coordinates",  script.show_coord)
			imgui.Checkbox("Insert coordinates",  script.current_coords)
			information_tooltip("Automatically inserts coordinates in the text field")
			imgui.Columns(1)

			if imgui.InputText("Co-ordinates", script.coords) then
			end
			if script.current_coords.v then
				local x, y, z = getCharCoordinates(PLAYER_PED)
				script.coords.v = string.format("%d,  %d,  %d",  math.floor(x) ,  math.floor(y) ,  math.floor(z))
			end
			information_tooltip("Enter XYZ coordinates.\nFormat : X, Y, Z")
			imgui.Dummy(imgui.ImVec2(0, 10))

			if imgui.Button("Teleport to coord", imgui.ImVec2((imgui.GetWindowWidth()-25)/2, 30)) then
				local x, y, z = script.coords.v:match("([^, ]+), ([^, ]+), ([^, ]+)")
				teleport(x, y, z)
			end
			imgui.SameLine()
			if imgui.Button("Teleport to marker", imgui.ImVec2((imgui.GetWindowWidth()-25)/2, 30)) then
				teleport()
			end
		end

		if script.radio_button.v == 1 then
			if imgui.InputText("", script.search_text) then
			end
			imgui.SameLine()
			if imgui.Button("Search", imgui.ImVec2(60, 20)) then
				script.filter = script.search_text.v
			end

			imgui.Spacing()
			imgui.Text("Found entries:(" .. script.filter .. ")")
			imgui.Separator()
			imgui.Spacing()

			for name, coord in pairs(coordinates) do
				local interior_id, x, y, z = coord:match("([^, ]+), ([^, ]+), ([^, ]+), ([^, ]+)")
				if script.filter == "" then
					show_entry(name, tonumber(x), tonumber(y), tonumber(z),interior_id)
				else
					if string.upper(name):find(string.upper(script.filter)) ~= nil  then
						show_entry(name, tonumber(x), tonumber(y), tonumber(z),interior_id)
					end
				end
			end
		end
    end
	
	if menu == 11 then
        if imgui.Button("Reconnect", imgui.ImVec2((imgui.GetWindowWidth()-25)/1, 30)) then
		    sampDisconnectWithReason(0) 
            sampSetGamestate(1) 
	    end
		if imgui.Button("Clear Chat", imgui.ImVec2((imgui.GetWindowWidth()-25)/1, 30)) then
		    memory.fill(sampGetChatInfoPtr() + 306, 0x0, 25200)
            memory.write(sampGetChatInfoPtr() + 306, 25562, 4, 0x0)
            memory.write(sampGetChatInfoPtr() + 0x63DA, 1, 1)
			notf.addNotification(string.format("Advanced SADFI Project:\nChat is sucessfully cleaned !", 1), 5)
	    end
    end	
	
	if menu == 7 then 
		if imgui.Button("Clean Memory", imgui.ImVec2((imgui.GetWindowWidth()-25)/1, 30)) then
					local cln1 = callFunction(0x53C500, 2, 2, true, true)
					local cln2 = callFunction(0x53C810, 1, 1, true)
					local cln3 = callFunction(0x53BED0, 0, 0)
					local cln4 = callFunction(0x40CF80, 0, 0)
					local cln5 = callFunction(0x53C440, 0, 0)
					local cln6 = callFunction(0x707770, 0, 0)
					local cln7 = callFunction(0x5A18B0, 0, 0)
					local cln8 = callFunction(0x53C4A0, 0, 0)
					local cln9 = callFunction(0x53C240, 0, 0)
					local cln10 = callFunction(0x4090A0, 0, 0)
					local cln11 = callFunction(0x409760, 0, 0)
					local cln12 = callFunction(0x409210, 0, 0)
					local cln13 = callFunction(0x40D7C0, 1, 1, -1)
					local cln14 = callFunction(0x40E4E0, 0, 0)
					local cln15 = callFunction(0x70C950, 0, 0)
					local cln16 = callFunction(0x408CB0, 0, 0)
					local cln17 = callFunction(0x40E460, 0, 0)
					local cln18 = callFunction(0x407A10, 0, 0)
					local cln19 = callFunction(0x40B3A0, 0, 0)
					local detectX, detectY, detectZ = getCharCoordinates(PLAYER_PED)
					requestCollision(detectX, detectY)
					loadScene(detectX, detectY, detectZ)
					sampAddChatMessage(tag.."{98FB98}Cleaning{FFFFFF} memory was {98FB98}produced{FFFFFF} and passed {98FB98}successfully{FFFFFF}.", 0x01A0E9)		    
	    end
		
		imgui.Checkbox("SA engine Sun FIX", HH_SUN)
        imgui.SameLine()
        imgui.TextQuestion(u8'fix samp sun.')
		imgui.SameLine()
		imgui.Checkbox("Unlock FPS", HH_FPS)
        imgui.SameLine()
        imgui.TextQuestion(u8'get more FPS.')
		
		imgui.Separator()

	imgui.Checkbox("Memory size changer", HH_MEMORY)
    imgui.SameLine()
    imgui.TextQuestion(u8'change game meory size')
    imgui.SliderInt('Memory value', pMemory, 536870912, 2147483647 )
		
	imgui.Checkbox("Draw Distance Changer", HH_DrawDist)
    imgui.SameLine()
    imgui.TextQuestion(u8'Change game Draw Distance.')
	imgui.SliderInt('Draw Distance', pDrawEdit, 100, 3000)
	imgui.Checkbox("Fog Distance Changer", HH_FogDist)
    imgui.SameLine()
    imgui.TextQuestion(u8'Change game Fog Distance.')
	imgui.SliderInt('Fog Distance', pFogEdit, 100, 500)
	imgui.Checkbox("Change Time", HH_Time)
    imgui.SameLine()
    imgui.TextQuestion(u8'Change game time.')
	imgui.SliderInt('Time', pTime, 0, 23)
	
	imgui.Checkbox("Change Weather", HH_Weather)
    imgui.SameLine()
    imgui.TextQuestion(u8'Change game Weather.')
	imgui.SliderInt('Weather', pWeather, 0, 255)
	
	imgui.Checkbox("Change FOV", HH_Fovedit)
    imgui.SameLine()
    imgui.TextQuestion(u8'Change camera Fov.')
	imgui.SliderInt('Fov', pFovedit, 70, 90)
	

	
	imgui.Separator()
	
	if imgui.CollapsingHeader("Aspect Ratio") then
	    imgui.Text("options:")
	    if imgui.RadioButton("Normal ", script.radio_button3, 0) then end
	    imgui.SameLine()
	    if imgui.RadioButton("Window Fx ", script.radio_button3, 1) then end
		imgui.Separator()
	end	
	
	-- memory.fill(0x6FF452, 0x90, 10, true)
    -- memory.setfloat(0xC3EFA4, 1.335 , true)
	
end -- remove me and you will die 
	
	
	if menu == 9 then 
	
	img3 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\acc\\sadfi.png")
	img4 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\acc\\shepi.png")
	img5 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\acc\\samphack.png") 
	img6 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\acc\\mrxyzz.png")
	img7 = imgui.CreateTextureFromFile(getGameDirectory() .. "\\moonloader\\sadfi resource\\resource\\acc\\ivann.png")
	
	imgui.Text("Script Advancer:")	
	imgui.Image(img7, imgui.ImVec2(30, 30))
	information_tooltip(fa.ICON_INFO_CIRCLE .. " Cheat Advancer")
	imgui.SameLine()
	imgui.Text("Discord Name: Ivann#0142 \nRole: Cheat Advancer \n")
	
	imgui.Text("Developers:")
	
    imgui.Image(img3, imgui.ImVec2(30, 30))
	information_tooltip(fa.ICON_INFO_CIRCLE .. " Project Owner")
	imgui.SameLine()
	imgui.Text("Name: SADFI2259X \nRole: Scripter \n")
	
	imgui.Image(img4, imgui.ImVec2(30, 30))
	information_tooltip(fa.ICON_INFO_CIRCLE .. " Script Helper")
	imgui.SameLine()
	imgui.Text("Name: Shepi \nRole: Script Helper \n")
	
	imgui.Image(img6, imgui.ImVec2(30, 30))
	information_tooltip(fa.ICON_INFO_CIRCLE .. " Script Helper")
	imgui.SameLine()
	imgui.Text("Name: Mr.XyZz \nRole: Script Helper \n")
	
	imgui.Image(img5, imgui.ImVec2(30, 30))
	information_tooltip(fa.ICON_INFO_CIRCLE .. " Cheat Streammer")
	imgui.SameLine()
	imgui.Text("Name: SampHack \nRole: Cheat Tester \n")
	
	
	imgui.Text(" ")
	if imgui.Selectable(fa.ICON_INFO_CIRCLE .. " What's new in Advanced Version of SADFI Project?") then
		changelog = not changelog
	end
		if changelog then
			imgui.OpenPopup("##changes")
			imgui.SetNextWindowSize(imgui.ImVec2(500, 700), imgui.Cond.FirstUseEver)
			if imgui.BeginPopupModal('##changes', false, imgui.WindowFlags.NoTitleBar + imgui.WindowFlags.NoResize) then
			imgui.TextColoredRGB(u8"{ff0000}What's new in advanced version of SADFI menu?", 2)
			imgui.TextColoredRGB(u8" ", 2)
			imgui.TextColoredRGB(u8"Added drift nitro (infinity nitro) (vehicle tab)", 2)
			imgui.TextColoredRGB(u8"Added fps boosters", 2)
			imgui.TextColoredRGB(u8"Added fish eye effect on startup (visual tab)", 2)
			imgui.TextColoredRGB(u8"Fixed bug with mega jump and fast run", 2)
			imgui.TextColoredRGB(u8"Fixed mega jump BMX", 2)
			imgui.TextColoredRGB(u8"Fixed crash when press clean memory button in Game tab", 2)
			imgui.TextColoredRGB(u8"Added new commands, list is in Commands tab", 2)
			imgui.TextColoredRGB(u8"Added Slapper (command /s.rv)", 2)
			imgui.TextColoredRGB(u8"Added UIF Builder (settings tab)", 2)
			imgui.TextColoredRGB(u8"Added Air Brake (player tab)", 2)
			imgui.TextColoredRGB(u8"Added Break Dance (vehicle tab)", 2)
			imgui.TextColoredRGB(u8"Added Car Jump (vehicle tab)", 2)
			imgui.TextColoredRGB(u8"Added Fast Break (vehicle tab)", 2)
			imgui.TextColoredRGB(u8"Added Delete Hauba (vehicle tab)", 2)
			imgui.TextColoredRGB(u8"Added Fire Car troll (vehicle tab)", 2)
			imgui.TextColoredRGB(u8"Added Ghost mode (player tab)", 2)
			imgui.TextColoredRGB(u8"Added HP on Number (visual tab)", 2)
			imgui.TextColoredRGB(u8"Added Pulsator Health&Armour (player tab)", 2)
			imgui.TextColoredRGB(u8"Added Night and Thermal vision (visual tab)", 2)
			imgui.TextColoredRGB(u8"Added Drift Mode (vehicle tab)", 2)
			imgui.TextColoredRGB(u8"Added Auto Scroll (weapon tab)", 2)
			imgui.TextColoredRGB(u8"Added Cbug Helper (aim tab)", 2)
			imgui.TextColoredRGB(u8"Added Distance (visual tab)", 2)
			imgui.TextColoredRGB(u8"Added Surfer with optimization (player tab)", 2)
			imgui.TextColoredRGB(u8"Removed SADFI logo because of fps drops", 2)
			imgui.TextColoredRGB(u8"Added customization for some functions (settings tab)", 2)
			imgui.TextColoredRGB(u8"Added auto save for all functions", 2)
			imgui.TextColoredRGB(u8"Fixed Silent Aim", 2)
			imgui.TextColoredRGB(u8"Added Randquats (onfoot) (player tab)", 2)
			imgui.TextColoredRGB(u8"Added Upsidedown (onfoot) (player tab)", 2)
			imgui.TextColoredRGB(u8"Added command s.unlock", 2)
			imgui.TextColoredRGB(u8"Added command s.antispec", 2)
			imgui.TextColoredRGB(u8"Added set top id (player tab)", 2)
			imgui.TextColoredRGB(u8"Added No Ped (player tab)", 2)
			imgui.TextColoredRGB(u8"Added Deathmatch Bell (weapon tab)", 2)
			imgui.TextColoredRGB(u8"Added Information Tab(visual tab)", 2)
			imgui.TextColoredRGB(u8"Added Reconnector(settings & plugins - extra tab)", 2)
			imgui.TextColoredRGB(u8"Added Chat Helper(visual)", 2)
			imgui.TextColoredRGB(u8"Added Unfreeze(player tab)", 2)
			imgui.TextColoredRGB(u8"Added Show car ID(vehicle tab)", 2)
			imgui.TextColoredRGB(u8"Added Show car Model(vehicle tab)", 2)
			imgui.TextColoredRGB(u8"Added Show car Door Status(vehicle tab)", 2)
			imgui.TextColoredRGB(u8"Added new commands(commands tab)", 2)
				local wid = imgui.GetWindowWidth()
				imgui.SetCursorPosX(wid / 2 - 50)
				if imgui.Button(u8'Close',imgui.ImVec2(100,30)) then
					changelog = not changelog
				end
				if isKeyJustPressed(VK_RETURN) and not isGamePaused() and not sampIsChatInputActive() and not isSampfuncsConsoleActive() and not sampIsDialogActive() then
					changelog = not changelog
				end
				imgui.EndPopup()
			end
		end
	imgui.Text(" ")
	if imgui.CollapsingHeader("My Player Info") then
		local _, my_id = sampGetPlayerIdByCharHandle(PLAYER_PED)
		local nick = sampGetPlayerNickname(my_id)
		local  hp = sampGetPlayerHealth(my_id)
		local  ping = sampGetPlayerPing(my_id)
		local  armour = sampGetPlayerArmor(my_id)
		local  score = sampGetPlayerScore(my_id)
		local model = getCharModel(PLAYER_PED)
		local framerate = imgui.GetIO().Framerate
		imgui.Text(string.format('Player ID (%d)', my_id))
		imgui.Text(string.format('Health (%d)', hp))
		imgui.Text(string.format('Armour (%d)', armour))
		imgui.Text(string.format('Ping (%d)', ping))
		imgui.Text(string.format('Score (%d)', score))
		imgui.Text(string.format('FPS (%.1f)', framerate))
    end
	imgui.Text(" ")
	imgui.Text("Follow Us On:")
	
	if imgui.Button(fa.ICON_YOUTUBE_PLAY .. " TouTube (TheSampHack)", imgui.ImVec2((imgui.GetWindowWidth()-25)/1, 30)) then
        os.execute('explorer "https://www.youtube.com/c/TheSampHack"')
    end
	
	if imgui.Button(fa.ICON_FACEBOOK_SQUARE .. " FaceBook (Sadfi2259x)", imgui.ImVec2((imgui.GetWindowWidth()-25)/1, 30)) then
        os.execute('explorer "https://www.facebook.com/sadfi.hack/"')
    end
	local framerate = imgui.GetIO().Framerate
	imgui.Text(string.format('Time: %s | Date: %s', os.date('%X'), os.date('%x')))
	imgui.Text(string.format('Memory used: %d ', math.ceil(memory.read(0x8E4CB4, 4, true) / 1048576)))
	imgui.Text(string.format('FPS (%.1f)', framerate))
	--    if imgui.Button("VISIT OUR SITE FOR MORE MODS AND CHEATS", imgui.ImVec2((imgui.GetWindowWidth()-25)/1, 30)) then
    --        os.execute('explorer "https://www.sites.google.com/view/samp-cheats"')
    --   end
	end
	
if menu == 10 then 
	if imgui.CollapsingHeader("Theme") then
	    if imgui.RadioButton("Dark Green ", script.radio_button2, 0) then HLcfg.config.darkgreen = elements.checkbox.darkgreen.v save() end
	    imgui.SameLine()
		if imgui.RadioButton("Green Salad ", script.radio_button2, 6) then HLcfg.config.greensalad = elements.checkbox.greensalad.v save() end
	    imgui.SameLine()
	    if imgui.RadioButton("Dark Blue ", script.radio_button2, 1) then HLcfg.config.darkblue = elements.checkbox.darkblue.v save() end
	    imgui.SameLine()
		if imgui.RadioButton("Light Blue ", script.radio_button2, 7) then HLcfg.config.lightblue = elements.checkbox.lightblue.v save() end
	    imgui.SameLine()
	    if imgui.RadioButton("Dark ", script.radio_button2, 2) then HLcfg.config.dark = elements.checkbox.dark.v save() end
	    imgui.SameLine()
		if imgui.RadioButton("Red ", script.radio_button2, 4) then HLcfg.config.red = elements.checkbox.red.v save() end
	    
		if imgui.RadioButton("Dark Brown ", script.radio_button2, 5) then HLcfg.config.darkbrown = elements.checkbox.darkbrown.v save() end
	    imgui.SameLine()
		if imgui.RadioButton("Dark Yellow ", script.radio_button2, 9) then HLcfg.config.darkyellow = elements.checkbox.darkyellow.v save() end
	    imgui.SameLine()
		if imgui.RadioButton("Dark Orange ", script.radio_button2, 8) then HLcfg.config.darkorange = elements.checkbox.darkorange.v save() end
	    imgui.SameLine()
		if imgui.RadioButton("Dark Purple ", script.radio_button2, 10) then HLcfg.config.darkpurple = elements.checkbox.darkpurple.v save() end
	    imgui.SameLine()
	    if imgui.RadioButton("Pink ", script.radio_button2, 3) then HLcfg.config.pink = elements.checkbox.pink.v save() end
	end
		if imgui.CollapsingHeader("Window Rounding") then
		if imgui.RadioButton("Card ", script.radio_button4, 0) then HLcfg.config.cardmenu = elements.checkbox.cardmenu.v save() end
	    imgui.SameLine()
	    if imgui.RadioButton("Normal ", script.radio_button4, 1) then HLcfg.config.normalmenu = elements.checkbox.normalmenu.v save() end
	    imgui.SameLine()
	    if imgui.RadioButton("Circle ", script.radio_button4, 2) then HLcfg.config.circlemenu = elements.checkbox.circlemenu.v save() end
	end	
	if imgui.CollapsingHeader("Spammer Pro") then
		imgui.Checkbox(u8'Spammer Activate/Deactivate', HH_Spammer)
		imgui.SameLine()
		imgui.TextQuestion(u8'Chat Flooder UIF v2')
		imgui.InputText("Type Something", text_buffer)
		imgui.SliderInt("Speed for sended", slider, 1000, 10000)
	end
		if imgui.CollapsingHeader('FPS Boosters') then
				imgui.Checkbox('No shadows', HH_noshadows)
				imgui.Checkbox('No Big Clouds', HH_nobclouds)
				imgui.Checkbox('No plane lines', HH_noplanelines)
				imgui.Checkbox('Ultra low quality cars', HH_vehlods)
				imgui.Checkbox('Anti crasher', HH_anticrasher)
				imgui.Checkbox('FPS unlocker', HH_fpsunlocker)
				imgui.Checkbox('Vsync', HH_vsync)
				imgui.Checkbox('No effects', HH_noeffects)
			end		
		if imgui.CollapsingHeader('Extra') then
		if imgui.Checkbox('Reconnect', elements.checkbox.reconnect) then HLcfg.config.reconnect = elements.checkbox.reconnect.v save() end
			imgui.SameLine()
			imgui.TextQuestion(u8'If function is enabled press shift + 0 to reconnect')
			imgui.SliderInt('Reconnect Delay', slider1, 0, 30)		
		end			
		if imgui.CollapsingHeader("Script's Console") then
					imgui.InputText('', input) 
					if imgui.Button('Send') then
						if input.v == 'CRKNI' or input.v == 'crkni' or input.v == 'DEATH' or input.v == 'death' then
							setCharHealth(PLAYER_PED, 0)
						end
						if input.v == 'RELOG' or input.v == 'relog' then
							local ip, port = sampGetCurrentServerAddress()
							sampDisconnectWithReason(false)
							sampConnectToServer(ip, port)
						end
						if input.v == 'RELOAD' or input.v == 'reload' then
							sampToggleCursor(false)
							showCursor(false)
							thisScript():reload()
						end
						if input.v == 'SPAWN' or input.v == 'spawn' then
							sampSpawnPlayer()
							restoreCameraJumpcut()
						end
						input.v = ''
					end
					imgui.Text("Death Player (DEATH)(death)\nUmre Covek (CRKNI)(crkni)")
					imgui.Text("\n")
					imgui.Text("Relog Player (RELOG)(relog)\nRelog Igraca (RELOG)(relog)")
					imgui.Text("\n")
					imgui.Text("Reload script (RELOAD)(reload)\nReloauduje skriptu (RELOAD)(reload)")
					imgui.Text("\n")
					imgui.Text("Spawn Player (SPAWN)(spawn)\nSpawnuj Lika (SPAWN)(spawn)")
				end	
				if imgui.CollapsingHeader("Island Build UIF ONLY") then
					imgui.Checkbox("Rotate Object", HH_Rotate1)
					imgui.SameLine()
					imgui.TextQuestion(u8'Press 1(Rotate 90*) - Press 2(Rotate 180*) - Press 3(Rotate 270*) - Press 4(Rotate 360*) - Press 5(Rotate 90 90*)\n Stisnes 1(Rotiras 90*) - Stisnes 2(Rotiras 180*) - Stisnes 3(Rotiras 270) - Stisnes 4(Rotiras 360) - Stisnes 5(Rotiras 90 90*)')
					imgui.Checkbox("Use Keys (ISLAND)", HH_BuildIsland)
					imgui.SameLine()
					imgui.TextQuestion(u8'Press Q(Copy) - Press E(Edit) - Press R(Remove) - Press O(Added)\nStisnes Q(Kopiras) - Stisnes E(Pomeras) - Stisnes R(Obrises) - Stisnes O(Dodas)')
				end
			if imgui.CollapsingHeader("Clean Memory") then
				if imgui.Button("Memory Clean") then
					local cln1 = callFunction(0x53C500, 2, 2, true, true)
					local cln2 = callFunction(0x53C810, 1, 1, true)
					local cln3 = callFunction(0x53BED0, 0, 0)
					local cln4 = callFunction(0x40CF80, 0, 0)
					local cln5 = callFunction(0x53C440, 0, 0)
					local cln6 = callFunction(0x707770, 0, 0)
					local cln7 = callFunction(0x5A18B0, 0, 0)
					local cln8 = callFunction(0x53C4A0, 0, 0)
					local cln9 = callFunction(0x53C240, 0, 0)
					local cln10 = callFunction(0x4090A0, 0, 0)
					local cln11 = callFunction(0x409760, 0, 0)
					local cln12 = callFunction(0x409210, 0, 0)
					local cln13 = callFunction(0x40D7C0, 1, 1, -1)
					local cln14 = callFunction(0x40E4E0, 0, 0)
					local cln15 = callFunction(0x70C950, 0, 0)
					local cln16 = callFunction(0x408CB0, 0, 0)
					local cln17 = callFunction(0x40E460, 0, 0)
					local cln18 = callFunction(0x407A10, 0, 0)
					local cln19 = callFunction(0x40B3A0, 0, 0)
					local detectX, detectY, detectZ = getCharCoordinates(PLAYER_PED)
					requestCollision(detectX, detectY)
					loadScene(detectX, detectY, detectZ)
					sampAddChatMessage(tag.."{98FB98}Cleaning{FFFFFF} memory was {98FB98}produced{FFFFFF} and passed {98FB98}successfully{FFFFFF}.", 0x01A0E9)
				end
			end
            if imgui.Button(u8"Change the key to open the main menu", imgui.ImVec2(387.5, 20)) then
                change_activate_button()
                mainwin.v = false
            end 
			imgui.Checkbox('Auto Update', elements.checkbox.autoupdate)
			HLcfg.config.autoupdate = elements.checkbox.autoupdate.v
			save()
			if imgui.Button('Check for updates') then autoupdate(jsn_upd, tag, url_upd) end
  
		imgui.CenterText(fa.ICON_COG .. "Menu Settings")
		imgui.SliderInt('Surf Speed', elements.sliders.speedsurfer, 0, 50)
		HLcfg.config.speedsurfer = elements.sliders.speedsurfer.v
		save()
			imgui.SliderInt('Fast Walk Speed', elements.sliders.speedfastwalk, 0, 20)
            HLcfg.config.speedfastwalk = elements.sliders.speedfastwalk.v
            save()
			if imgui.CollapsingHeader('Language Settings (BETA)') then
			if not elements.checkbox.langmenu.v then if imgui.Button(u8'Сменить язык', imgui.ImVec2(100, 0)) then elements.checkbox.lang.v = 1 end else if imgui.Button('Change language', imgui.ImVec2(100, 0)) then elements.checkbox.lang.v = 2 end end
		end
				end


	if menu == 13 then
	imgui.Text('Command | s.add - Add player to silent aim blacklist')
	imgui.Text('Command | s.rem - Remove player from silent aim blacklist')
	imgui.Text('Command | s.goto - Teleport to player')
	imgui.Text('Command | s.fps - Show your current FPS')
	imgui.Text('Command | s.tsay - Say current time in chat')
	imgui.Text('Command | s.antispec - Nobody can spectate you')
	imgui.Text('Command | s.unlock (CarID) - Unlock car doors')
	imgui.Text('Command | s.jp - Get a free jetpack')
	imgui.Text('Command | s.follow - Follow a player')
	imgui.Text('Command | s.ground (CarID) - Teleport vehicle underground')
	imgui.Text('Command | s.rv - Slaps player away')
	imgui.Text('Command | s.relog - Relogs script fast')
	imgui.Text('Command | s.rip - Taking damage to all players around you')
	imgui.Text('Command | s.spec | s.specoff - Spectate a player')
	imgui.Text('Command | s.changebutton - Change activate button of menu (default is F5)')
	imgui.Text('Command | s.seatvr (CAR ID) - Send vehicle underground (use show car id function in vehicle tab to see car id)')
	imgui.Text('Command | s.pass (CAR ID) - Teleport to passanger seat (use show car id function in vehicle tab to see car id)')
	imgui.Text('Command | s.takecar (CAR ID) - Take car from a victim you choose (use show car id function in vehicle tab to see car id)')
	end


	imgui.EndChild()
	
	--imgui.Text("test")
	--imgui.SameLine(167)
	--if imgui.ToggleButton("Test2##1", imBool) then end
	
	--    imgui.BeginChild('##left', imgui.ImVec2(350, 0), true)
    --    imgui.EndChild()
	
	--if imgui.Button("Player Cheats") then menu = 1 end

   -- if menu == 1 then 
     --   imgui.Text("Cum cum cum cum")
    --end
	
	imgui.End()
	end
end


function apply_custom_style()
	imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    local ImVec2 = imgui.ImVec2
	
	style.WindowRounding = 3
	style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
	style.ChildWindowRounding = 3
	style.FrameRounding = 3
	style.ItemSpacing = imgui.ImVec2(5.0, 4.0)
	style.ScrollbarSize = 13.0
	style.ScrollbarRounding = 1
	style.GrabMinSize = 8.0
	style.GrabRounding = 3
	style.WindowPadding = imgui.ImVec2(4.0, 4.0)
	style.FramePadding = imgui.ImVec2(2.5, 3.5)
	style.ButtonTextAlign = imgui.ImVec2(0.02, 0.4)
end
apply_custom_style()

function imgui.TextQuestion(...)
	imgui.SameLine()
	imgui.TextDisabled('(???)')
	local id = imgui.GetCursorPos()
	imgui.Hint(...)
end

function f(v)
	return v+tonumber("0.0000"..math.random(9))
end

function ground2(carid)
lua_thread.create(function()
	local _, veh = sampGetCarHandleBySampVehicleId(vid)
    local bool, carHandle = sampGetCarHandleBySampVehicleId(carid)
    if bool then
    local x, y, z= getCarCoordinates(carHandle)
    setCharCoordinates(PLAYER_PED, x,y,z)
    sampSendEnterVehicle(carid, true)
    wait(1000)
    warpCharIntoCar(PLAYER_PED, carHandle)
	wait(1000)
	setCharCoordinates(playerPed, x, y, z-5)
	wait(1000)
	warpCharFromCarToCoord(playerPed, x, y, z+5)
	printStringNow('Wait...', 1500)
	wait(2000)
	warpCharFromCarToCoord(playerPed, x-40, y, z+1)
	printStringNow('Finish', 1000)
	wait(500)
	sampAddChatMessage(tag..'Sucessfull ground car!')
end
end)
end

function getPlayerOnFootInfo()
	local _, playerID = sampGetPlayerIdByCharHandle(PLAYER_PED)
	local playerHP = getCharHealth(PLAYER_PED)
	return getActiveInterior(),
		playerID,
		playerHP,
		getCharArmour(PLAYER_PED),
		sampGetPlayerPing(playerID)
end

function getPlayerInCarInfo()
	local _, playerID = sampGetPlayerIdByCharHandle(PLAYER_PED)
	local playerHP = getCharHealth(PLAYER_PED)
	local playerCar = storeCarCharIsInNoSave(PLAYER_PED)
	local _, vehId = sampGetVehicleIdByCarHandle(playerCar)
	return playerID,
		vehId,
		playerHP,
		getCharArmour(PLAYER_PED),
		getCarHealth(playerCar),
		sampGetPlayerPing(playerID)
end

function myHandler(message) --send
    if message:find('userConnected (.+)') then
        connectedUser = message:match('userConnected (.+)')
        if not userList:find(connectedUser) then userList = userList..'\n'..connectedUser end
    else
        sampAddChatMessage('Sended: '..message, -1)
    end
end

function translite(text)
	for k, v in pairs(chars) do
		text = string.gsub(text, k, v)
	end
	return text
end

function cnick() 
    while true do
        CREATp = "fcf403"
        targ = 0xFFfcf403
        load = "-"
        wait(100)
        CREATp = "ada500"
        targ = 0xFFada500
        load = "/"
        wait(100)
        CREATp = "ffb300"
        targ = 0xFFffb300
        load = "-"
        wait(100)
        CREATp = "ffdd8f"
        targ = 0xFFada500
        load = "\\"
        wait(100)
        CREATp = "fcf403"
        targ = 0xFFfcf403
        load = "-"
        wait(100)
        CREATp = "ffb300" 
        targ = 0xFFffb300
        load = "/"
        wait(100)
        CREATp = "fcf403"
        targ = 0xFFfcf403
        load = "-"
        wait(100)
        CREATp = "ffdd8f"
        targ = 0xFFada500
        load = "\\"
        wait(100)
        CREATp = "ffb300"
        targ = 0xFFffb300
        load = "-"
        wait(100)                       
    end
end


function car()
	repeat
	         freezeCarPosition = true
				if isKeyDown(1) then
					poww = poww + 0.001
					printStringNow("~b~ speed +"..poww, 1000)
				elseif isKeyDown(2) then
					poww = poww - 0.001
					if poww < 0 then
						poww = 0
					end
					printStringNow("~b~ speed -"..poww, 1000)
				end
				local x, y, z = getCharCoordinates(PLAYER_PED)
				local x1, y1, z1 = getActiveCameraCoordinates()
				local head = math.rad(getHeadingFromVector2d(x-x1, y-y1))
				if isKeyDown(87) then
					x = x-math.sin(-head+3.14)*poww
					y = y-math.cos(-head+3.14)*poww
				elseif isKeyDown(83) then
					x = x+math.sin(-head+3.14)*poww
					y = y+math.cos(-head+3.14)*poww
				end
				if isKeyDown(16) then
					z = z-poww/2.5
				elseif isKeyDown(32) then
					z = z+poww/1.9
				end
				local sync = samp_create_sync_data("vehicle")
				sync.position = {f(x),f(y),f(z)}
				sync.moveSpeed = {f(0),f(0),f(0)}
				local x2,y2,z2 = getCharCoordinates(PLAYER_PED)
				if x ~= x2 or y ~= y2 or z ~= z2 then
					sync.moveSpeed = {f(0.05),f(0.05),f(0.05)}
				end
		sync.send()
		setCharHeading(PLAYER_PED, math.deg(head))
		setCharCoordinates(PLAYER_PED, x, y, z - 1.2)
	until MOP
end

function tppassenger(carid)
    lua_thread.create(function ()
        local bool, carHandle = sampGetCarHandleBySampVehicleId(carid)
        local x, y, z = getCarCoordinates(carHandle)
        if bool then
            setCharCoordinates(playerPed, x, y, z)
            sampSendEnterVehicle(carid, true)
            wait(850)
            taskWarpCharIntoCarAsPassenger(playerPed, carHandle, false)
            sampAddChatMessage(tag..'{ffffff} You have been teleported to the passanger seat!', -1)
			printStringNow('Finish', 1000)
        end
    end)
end

function onReceiveRpc(id, bitStream)
	if anticheat and (id == 12 or id == 71 or id == 15 or id == 159) then
		lua_thread.create(function()
			msg('Attention! Kick possible! Transfer to a car!')
			--warpCharFromCarToCoord(PLAYER_PED, x, y, z)
		end)
		return false
	end
end

function tpseatvred(carid)
    lua_thread.create(function()
        local bool, carHandle = sampGetCarHandleBySampVehicleId(carid)
        if bool then
            local x, y, z= getCarCoordinates(carHandle)
            local x1, y1, z1= getCharCoordinates(playerPed)
            setCharCoordinates(playerPed, x, y, z)
            sampSendEnterVehicle(carid, true)
            warpCharIntoCarAsPassenger(playerPed, carHandle, false)
            sampAddChatMessage(tag..'{ffffff}Lets drive the car underground from the ID {6600ff}' ..carid, -1)
            setCharCoordinates(playerPed, x, y, z-5)
            warpCharFromCarToCoord(playerPed, x1, y1, z1)
			printStringNow('Finish', 1000)
        end
    end)
end

function onfoot()
    repeat
	if isKeyDown(1) then
		pow = pow + 0.001
		printStringNow("~b~ speed +"..pow, 1000)
	elseif isKeyDown(2) then
		pow = pow - 0.001
		if pow < 0 then
			pow = 0
		end
		printStringNow("~b~ speed -"..pow, 1000)
	end
	local x, y, z = getCharCoordinates(playerPed)
	local x1, y1, z1 = getActiveCameraCoordinates()
	local head = math.rad(getHeadingFromVector2d(x-x1, y-y1))
	if isKeyDown(87) then
		x = x-math.sin(-head+3.14)*pow
		y = y-math.cos(-head+3.14)*pow
	elseif isKeyDown(83) then
		x = x+math.sin(-head+3.14)*pow
		y = y+math.cos(-head+3.14)*pow
	end
	if isKeyDown(16) then
		z = z-pow/2.2
	elseif isKeyDown(32) then
		z = z+pow/2.2
	end
	local sync = samp_create_sync_data("player")
	sync.position = {f(x),f(y),f(z-1)}
	sync.moveSpeed = {f(0),f(0),f(0)}
	local x2,y2,z2 = getCharCoordinates(playerPed)
	if x ~= x2 or y ~= y2 or z ~= z2 then
		sync.moveSpeed = {f(0.09),f(0.091),f(0.071)}
	end
	sync.send()
	setCharHeading(playerPed, math.deg(head))
	setCharCoordinates(playerPed, x, y, z-1)
	until MOP
end

function setLocalId(id)
memory.setuint16(sampGetPlayerPoolPtr() + 4, id)
end

function sampev.onSendGiveDamage()
	if elements.checkbox.bell.v then
		local audio = loadAudioStream('moonloader/sadfi resource/resource/bells/bell.mp3')
		setAudioStreamState(audio, 1)
	else
		return false
	end
end

function getClosestPlayerOfCrosshair()
	local relable_one, target = getCharPlayerIsTargeting(playerHandle)
	local relable_two, player = sampGetPlayerIdByCharHandle(target) 
	if relable_two then
		return player, target
	end
	local minimal_distance = (((select(1, getScreenResolution())) / 2) / getCameraFov()) * elements.sliders.fieldOfSearch.v
	local closestId, closestPed = -1, -1
	for i = 0, 999 do
		local result, handle = sampGetCharHandleBySampPlayerId(i)
		if result then
			local my_pos = {getCharCoordinates(playerPed)}
			local other_pos = {getCharCoordinates(handle)}
			if getDistanceBetweenCoords3d(my_pos[1], my_pos[2], my_pos[3], other_pos[1], other_pos[2], other_pos[3]) < 100.0 then
				local screen_coords = {convert3DCoordsToScreen(getCharCoordinates(handle))}
				local dist = math.sqrt( (screen_coords[1] - (( ( select(1, getScreenResolution() ) ) )) * representIntAsFloat(readMemory(0xB6EC14, 4, false))) ^ 2 + (screen_coords[2] - ((select(2, getScreenResolution() ) )) * representIntAsFloat(readMemory(0xB6EC10, 4, false))) ^ 2 )
                if dist < minimal_distance then
					minimal_distance = dist
					closestId, closestPed = i, handle
				end
			end
		end
	end
	return closestId, closestPed
end

function samp_create_sync_data(sync_type, copy_from_player)
    local ffi = require 'ffi'
    local sampfuncs = require 'sampfuncs'
    local raknet = require 'samp.raknet'
    require 'samp.synchronization'
    copy_from_player = copy_from_player or true
    local sync_traits = {
        player = {'PlayerSyncData', raknet.PACKET.PLAYER_SYNC, sampStorePlayerOnfootData},
        vehicle = {'VehicleSyncData', raknet.PACKET.VEHICLE_SYNC, sampStorePlayerIncarData},
    }
    local sync_info = sync_traits[sync_type]
    local data_type = 'struct ' .. sync_info[1]
    local data = ffi.new(data_type, {})
    local raw_data_ptr = tonumber(ffi.cast('uintptr_t', ffi.new(data_type .. '*', data)))
    if copy_from_player then
        local copy_func = sync_info[3]
        if copy_func then
            local _, player_id
            if copy_from_player == true then
                _, player_id = sampGetPlayerIdByCharHandle(PLAYER_PED)
            else
                player_id = tonumber(copy_from_player)
            end
            copy_func(player_id, raw_data_ptr)
        end
    end
    local func_send = function()
        local bs = raknetNewBitStream()
        raknetBitStreamWriteInt8(bs, sync_info[2])
        raknetBitStreamWriteBuffer(bs, raw_data_ptr, ffi.sizeof(data))
        raknetSendBitStreamEx(bs, sampfuncs.HIGH_PRIORITY, sampfuncs.UNRELIABLE_SEQUENCED, 1)
        raknetDeleteBitStream(bs)
    end
    local mt = {
        __index = function(t, index)
            return data[index]
        end,
        __newindex = function(t, index, value)
            data[index] = value
        end
    }
    return setmetatable({send = func_send}, mt)
end


function is_key_check_available()
    if not isSampfuncsLoaded() then
      return not isPauseMenuActive()
    end
    local result = not isSampfuncsConsoleActive() and not isPauseMenuActive()
    if isSampLoaded() and isSampAvailable() then
      result = result and not sampIsChatInputActive() and not sampIsDialogActive()
    end
    return result
end

function save()
    inicfg.save(HLcfg, 'Advanced_SADFI_MENU.ini')
end

function getBodyPartCoordinates(id, handle)
    local pedptr = getCharPointer(handle)
    local vec = ffi.new("float[3]")
    getBonePosition(ffi.cast("void*", pedptr), vec, id, true)
    return vec[0], vec[1], vec[2]
end

function join_argb(a, r, g, b) -- by FYP
    local argb = b  -- b
    argb = bit.bor(argb, bit.lshift(g, 8))  -- g
    argb = bit.bor(argb, bit.lshift(r, 16)) -- r
    argb = bit.bor(argb, bit.lshift(a, 24)) -- a
    return argb
end
function rainbow(speed, alpha, offset) -- by rraggerr
    local clock = os.clock() + offset
    local r = math.floor(math.sin(clock * speed) * 127 + 128)
    local g = math.floor(math.sin(clock * speed + 2) * 127 + 128)
    local b = math.floor(math.sin(clock * speed + 4) * 127 + 128)
    return r,g,b,alpha
end

function join_argb(a, r, g, b)
    local argb = b  -- b
    argb = bit.bor(argb, bit.lshift(g, 8))  -- g
    argb = bit.bor(argb, bit.lshift(r, 16)) -- r
    argb = bit.bor(argb, bit.lshift(a, 24)) -- a
    return argb
end
  
function explode_argb(argb)
    local a = bit.band(bit.rshift(argb, 24), 0xFF)
    local r = bit.band(bit.rshift(argb, 16), 0xFF)
    local g = bit.band(bit.rshift(argb, 8), 0xFF)
    local b = bit.band(argb, 0xFF)
    return a, r, g, b
end

function onScriptTerminate(script, quitGame)
	if script == thisScript() then
		imgui.ShowCursor = false
	end
end

function onScriptTerminate(zuwiScript, quitGame)
	if script == thisScript() then
		sampAddChatMessage(tag..('The script crashed. Settings have been saved') or 'The script crashed')
	end
end

function fix(angle)
	while angle > math.pi do
		angle = angle - (math.pi*2)
	end
	while angle < -math.pi do
		angle = angle + (math.pi*2)
	end
	return angle
end

function playerBeShotWalls(handle)
	if elements.checkbox.shotThrxWalls.v then return true else return canPedBeShot(handle) end
end

function next_switch(key)
    for k,v in pairs(switch) do
        if switch[k] == true then
            switch[k] = false
            switch[key] = true
            break
        end
    end
end

function get_crosshair_position()
		local ffi = require 'ffi'
    local vec_out = ffi.new("float[3]")
    local tmp_vec = ffi.new("float[3]")
    ffi.cast(
        "void (__thiscall*)(void*, float, float, float, float, float*, float*)",
        0x514970
    )(
        ffi.cast("void*", 0xB6F028),
        15.0,
        tmp_vec[0], tmp_vec[1], tmp_vec[2],
        tmp_vec,
        vec_out
    )
    return vec_out[0], vec_out[1], vec_out[2]
end

 function events.onPlayerSync(playerId, data)
            if HH_randquats.v then
                data.quaternion[0] = math.random(0,1)
                data.quaternion[1] = math.random(0,1)
                data.quaternion[2] = math.random(0,1)
                data.quaternion[3] = math.random(0,1)
            end
            if HH_upsidedown.v then
                data.quaternion[1] = 0
                data.quaternion[2] = 0
                data.quaternion[3] = 1
            end
            return {playerId, data}
        end


function event.onSendBulletSync(data)
	if elements.checkbox.silentaim.v then
		local shoot = false
		for i = 0, sampGetMaxPlayerId(true) do
			if shoot then
				return false
			elseif sampIsPlayerConnected(i) then
				local _, ped = sampGetCharHandleBySampPlayerId(i)
				if _ then
					if isCharOnScreen(ped) then
						local cx, cy = convert3DCoordsToScreen(get_crosshair_position())
						local px, py = convert3DCoordsToScreen(getCharCoordinates(ped))
						local dist = getDistanceBetweenCoords2d(cx, cy, px, py)
						if dist <= aim_fov or dist <= -aim_fov then
							local data2 = samp_create_sync_data('bullet')
							data2.targetType = 1
							data2.targetId = i
							data2.target.x, data2.target.y, data2.target.z = getCharCoordinates(ped)
							data2.origin.x, data2.origin.y, data2.origin.z = getActiveCameraCoordinates()
							data2.weaponId = getCurrentCharWeapon(PLAYER_PED)
							data2.send()
							break
							shoot = true
							return false
						end
					end
				end
			end
		end
	end
end



function imgui.Hint(str_id, hint, delay)
	local hovered = imgui.IsItemHovered()
	local col = imgui.GetStyle().Colors[imgui.Col.ButtonHovered]
	local animTime = 0.2
	local delay = delay or 0.00
	local show = true

	if not allHints then allHints = {} end
	if not allHints[str_id] then
		allHints[str_id] = {
			status = false,
			timer = 0
		}
	end

	if hovered then
		for k, v in pairs(allHints) do
			if k ~= str_id and os.clock() - v.timer <= animTime  then
				show = false
			end
		end
	end

	if show and allHints[str_id].status ~= hovered then
		allHints[str_id].status = hovered
		allHints[str_id].timer = os.clock() + delay
	end

	local showHint = function(text, alpha)
		imgui.PushStyleVarFloat(imgui.StyleVar.Alpha, alpha)
		imgui.PushStyleVarFloat(imgui.StyleVar.WindowRounding, 5)
		imgui.BeginTooltip()
            imgui.TextColored(imgui.ImVec4(col.x, col.y, col.z, 1.00), fa.ICON_INFO_CIRCLE..' Help:')
	        imgui.PushStyleVarVec2(imgui.StyleVar.ItemSpacing, imgui.ImVec2(0, 0))
	        imgui.TextColoredRGB(text, false, true)
	        imgui.PopStyleVar()
        imgui.EndTooltip()
        imgui.PopStyleVar(2)
	end

	if show then
		local btw = os.clock() - allHints[str_id].timer
		if btw <= animTime then
			local s = function(f)
				return f < 0.0 and 0.0 or (f > 1.0 and 1.0 or f)
			end
			local alpha = hovered and s(btw / animTime) or s(1.00 - btw / animTime)
			showHint(hint, alpha)
		elseif hovered then
			showHint(hint, 1.00)
		end
	end
end

function events.onSendPlayerSync(data)
	if elements.checkbox.invisible.v then
		data.position.z = pPlayerPosZ-5
	end
end

function SetRwObjectAlpha(handle, alpha)
    local pedEn = getCharPointer(handle)
    if pedEn ~= 0 then
        ffi.cast("void (__thiscall *)(int, int)", 0x5332C0)(pedEn, alpha)
    end
end

function gotos(p)
  if #p > 0 then
    local id = tonumber(p)
    if sampIsPlayerConnected(id) then
      local result, posX, posY, posZ = sampGetStreamedOutPlayerPos(id)
      if result then
        teleportToPlayer(id, posX, posY, posZ)
      else
        local result, handle = sampGetCharHandleBySampPlayerId(id)
        if result and doesCharExist(handle) then
          local posX, posY, posZ = getCharCoordinates(handle)
          teleportToPlayer(id, posX, posY, posZ)
        else
          sampAddChatMessage(string.format(tag.."A player %s(%d) the position is unknown.", sampGetPlayerNickname(id), id), 0xCC0000)
		  sampAddChatMessage(string.format(tag.."Igrac %s(%d) polozaj je nepoznat.", sampGetPlayerNickname(id), id), 0xCC0000)
		  sampAddChatMessage(string.format(tag.." %s(%d) .", sampGetPlayerNickname(id), id), 0xCC0000)
        end
      end
    else
      sampAddChatMessage(string.format(tag.."A player %d not on the server.", id), 0xCC0000)
	  sampAddChatMessage(string.format(tag.."Igrac %d nije na serveru.", id), 0xCC0000)
    end
  end
end

function ev.onSendVehicleSync(data)
    if ignore then return false end
    if state then
        if not isHooked then
            data.position = lastPos
            data.position.z = data.position.z - 1
        else
            data.moveSpeed.z = -1
        end
    end
end

function onReceiveRpc(id, bitStream)
    if state then
        if id == 86 or id == 87 then return false end
    end
end

function ev.onPlayerSync(playerid, data)
    if state then
        if playerid == target then
            if data.surfingVehicleId == getMyVehicleId() and not isHooked then
                isHooked = true
            end
        end
    end
end

function ev.onSendUnoccupiedSync(data)
    if state and isHooked then
        data.position = lastPos
        data.position.z = data.position.z + 2
        data.roll = {x = 0e+1000, y = 0e+1000, z = 0e+1000}
        printStringNow('SENT', 1000)
    end
end

function getMyVehicleId()
    if not isCharOnFoot(PLAYER_PED) then
        local veh = getCarCharIsUsing(PLAYER_PED)
        local _, vid = sampGetVehicleIdByCarHandle(veh)
        if _ then
            return vid
        end
    end
    return -1
end


function forceMe()
    if isCharOnFoot(PLAYER_PED) then
        sampForceOnfootSync()
    else
        local veh = getCarCharIsUsing(PLAYER_PED)
        local _, vid = sampGetVehicleIdByCarHandle(veh)
        if _ then
            if getDriverOfCar(veh) == PLAYER_PED then
                sampForceVehicleSync(vid)
            end
        end
    end
end

function samp_create_sync_data(sync_type, copy_from_player)
    local ffi = require 'ffi'
    local sampfuncs = require 'sampfuncs'
    -- from SAMP.Lua
    local raknet = require 'samp.raknet'
    --require 'samp.synchronization'

    copy_from_player = copy_from_player or true
    local sync_traits = {
        player = {'PlayerSyncData', raknet.PACKET.PLAYER_SYNC, sampStorePlayerOnfootData},
        vehicle = {'VehicleSyncData', raknet.PACKET.VEHICLE_SYNC, sampStorePlayerIncarData},
        passenger = {'PassengerSyncData', raknet.PACKET.PASSENGER_SYNC, sampStorePlayerPassengerData},
        aim = {'AimSyncData', raknet.PACKET.AIM_SYNC, sampStorePlayerAimData},
        trailer = {'TrailerSyncData', raknet.PACKET.TRAILER_SYNC, sampStorePlayerTrailerData},
        unoccupied = {'UnoccupiedSyncData', raknet.PACKET.UNOCCUPIED_SYNC, nil},
        bullet = {'BulletSyncData', raknet.PACKET.BULLET_SYNC, nil},
        spectator = {'SpectatorSyncData', raknet.PACKET.SPECTATOR_SYNC, nil}
    }
    local sync_info = sync_traits[sync_type]
    local data_type = 'struct ' .. sync_info[1]
    local data = ffi.new(data_type, {})
    local raw_data_ptr = tonumber(ffi.cast('uintptr_t', ffi.new(data_type .. '*', data)))
    -- copy player's sync data to the allocated memory
    if copy_from_player then
        local copy_func = sync_info[3]
        if copy_func then
            local _, player_id
            if copy_from_player == true then
                _, player_id = sampGetPlayerIdByCharHandle(PLAYER_PED)
            else
                player_id = tonumber(copy_from_player)
            end
            copy_func(player_id, raw_data_ptr)
        end
    end
    -- function to send packet
    local func_send = function()
        local bs = raknetNewBitStream()
        raknetBitStreamWriteInt8(bs, sync_info[2])
        raknetBitStreamWriteBuffer(bs, raw_data_ptr, ffi.sizeof(data))
        raknetSendBitStreamEx(bs, sampfuncs.HIGH_PRIORITY, sampfuncs.UNRELIABLE_SEQUENCED, 1)
        raknetDeleteBitStream(bs)
    end
    -- metatable to access sync data and 'send' function
    local mt = {
        __index = function(t, index)
            return data[index]
        end,
        __newindex = function(t, index, value)
            data[index] = value
        end
    }
    return setmetatable({send = func_send}, mt)
end

function tsay()
	sampSendChat(string.format('%s | %s', os.date('%X'), os.date('%x')))
end


--- Functions
function teleportToPlayer(id, x, y, z)
  setCharCoordinates(playerPed, x, y, z)
  sampAddChatMessage(string.format(tag.."Teleportiran na %s (%d). Polozaj %.2f %.2f %.2f", sampGetPlayerNickname(id), id, x, y, z), 0xAAAAAA)
  sampAddChatMessage(string.format(tag.."Teleport to %s (%d). Position %.2f %.2f %.2f", sampGetPlayerNickname(id), id, x, y, z), 0xAAAAAA)
end


function passUnlock(carid)
    lua_thread.create(function ()
        local bool, carHandle = sampGetCarHandleBySampVehicleId(carid)
        if bool then
            lockCarDoors(carHandle, false)
			sampAddChatMessage('{FF0000}[PIZDARVANKA PROJECT]: {FF0000}Sucessfull unlock vehicle!')
			printStringNow('Finish', 1000)
        end
    end)
end

function tpwrong(carid)
lua_thread.create(function()
    local bool, carHandle = sampGetCarHandleBySampVehicleId(carid)
    if bool then
    local x, y, z= getCarCoordinates(carHandle)
    setCharCoordinates(PLAYER_PED, x,y,z)
    sampSendEnterVehicle(carid, true)
    wait(1000)
    warpCharIntoCar(PLAYER_PED, carHandle)
	wait(1000)
	setCharCoordinates(playerPed, x, y, z+99999)
	wait(1000)
	warpCharFromCarToCoord(playerPed, x, y, z+5)
	printStringNow('Wait...', 1500)
	wait(2000)
	warpCharFromCarToCoord(playerPed, x, y, z+1)
	printStringNow('Finish', 1000)
	wait(500)
	sampAddChatMessage(tag..'Sucessfully taked car!')
end
end)
end

function update()
  local fpath = os.getenv('TEMP') .. '\\Custom Player-version.json' -- куда будет качаться наш файлик для сравнения версии
  downloadUrlToFile('https://gitlab.com/-/snippets/2484391/raw/main/Custom%20Player-version.json', fpath, function(id, status, p1, p2) -- ссылку на ваш гитхаб где есть строчки которые я ввёл в теме или любой другой сайт
    if status == dlstatus.STATUS_ENDDOWNLOADDATA then
    local f = io.open(fpath, 'r') -- открывает файл
    if f then
      local info = decodeJson(f:read('*a')) -- читает
      updatelink = info.updateurl
      if info and info.latest then
        version = tonumber(info.latest) -- переводит версию в число
        if version > tonumber(thisScript().version) then -- если версия больше чем версия установленная то...
          lua_thread.create(goupdate) -- апдейт
        else -- если меньше, то
          update = false -- не даём обновиться 
          sampAddChatMessage(('[Testing]: У вас и так последняя версия! Обновление отменено'), color)
        end
      end
    end
  end
end)
end
--скачивание актуальной версии
function goupdate()
sampAddChatMessage(('[Testing]: Обнаружено обновление. AutoReload может конфликтовать. Обновляюсь...'), color)
sampAddChatMessage(('[Testing]: Текущая версия: '..thisScript().version..". Новая версия: "..version), color)
wait(300)
downloadUrlToFile(updatelink, thisScript().path, function(id3, status1, p13, p23) -- качает ваш файлик с latest version
  if status1 == dlstatus.STATUS_ENDDOWNLOADDATA then
  sampAddChatMessage(('[Testing]: Обновление завершено!'), color)
  thisScript():reload()
end
end)
end

function autoupdate(json_url, prefix, url)
	local dlstatus = require('moonloader').download_status
	local json = getWorkingDirectory() .. '\\'..thisScript().name..'-version.json'
	if doesFileExist(json) then os.remove(json) end
	downloadUrlToFile(json_url, json, function(id, status, p1, p2)
      	if status == dlstatus.STATUSEX_ENDDOWNLOAD then
			if doesFileExist(json) then
				local f = io.open(json, 'r')
				if f then
					local info = decodeJson(f:read('*a'))
					updatelink = info.updateurl
					updateversion = info.latest
					f:close()
					os.remove(json)
					if updateversion == version_script then
						sampAddChatMessage(tag..'You are using {04ff00}the current {888EA0}version of the script', colors.chat.main)
						update = false
					elseif updateversion < version_script then
						sampAddChatMessage(tag..'You are using {F9D82F}testing {888EA0}version of the script', colors.chat.main)
						update = false
					elseif updateversion > version_script then
						lua_thread.create(function(prefix)
							local dlstatus = require('moonloader').download_status
							sampAddChatMessage(tag..'An update is available. Downloading {0E8604}the latest {888EA0}version '..updateversion, colors.chat.main)
							wait(250)
							downloadUrlToFile(updatelink, thisScript().path, function(id3, status1, p13, p23)
								if status1 == dlstatus.STATUS_DOWNLOADINGDATA then
									log('Downloading')
								elseif status1 == dlstatus.STATUS_ENDDOWNLOADDATA then
									sampAddChatMessage(tag..'The download is complete. The script has been updated to version '..updateversion, colors.chat.main)
									goupdatestatus = true
									lua_thread.create(function() wait(500) thisScript():reload() end)
								end
								if status1 == dlstatus.STATUSEX_ENDDOWNLOAD then
									if goupdatestatus == nil then
										sampAddChatMessage(tag..'{B31A06}Failed {888EA0}updating', colors.chat.main)
										update = false
									end
								end
							end)
						end, prefix)
					else
						sampAddChatMessage(tag..'{B31A06}Failed {888EA0}to check the version of the script', colors.chat.main)
						update = false
					end
				end
			else
				sampAddChatMessage(tag..'{B31A06}Failed {888EA0}to check the version of the script', colors.chat.main)
				update = false
			end
		end
	end)
	while update ~= false do wait(100) end
end

function RandomFloat(low, great)
    return low + math.random() * (great - low)
end

function VectorySize(amount1, amount2, amount3)
	return math.sqrt(amount1 * amount1 + amount2 * amount2, amount3 * amount3)
end

function GetWeaponOkay(weap)
	if weap >= 22 and weap <= 34 or weap == 38 then return 1 end
	return 0
end

function GetWeaponName(weap)
	local namearray =
	{
	    [22] = "9mm",
	    [23] = "Silenced 9mm",
	    [24] = "Desert Eagle",
	    [25] = "Shotgun",
	    [26] = "Sawnoff Shotgun",
	    [27] = "Combat Shotgun",
	    [28] = "Micro SMG/Uzi",
	    [29] = "MP5",
	    [30] = "AK-47",
	    [31] = "M4",
	    [32] = "Tec-9",
	    [33] = "Country Rifle",
	    [34] = "Sniper Rifle",
	    [38] = "Minigun"
	}
	return namearray[weap]
end

function GetWeaponDamage(weap)
    local dmgarray =
    {
        [22] = 8.25,
        [23] = 13.2,
        [24] = 46.2,
        [25] = 3.3,
        [26] = 3.3,
        [27] = 4.95,
        [28] = 6.6,
        [29] = 8.25,
        [30] = 9.9,
        [31] = 9.9,
        [32] = 6.6,
        [33] = 24.75,
        [34] = 41.25,
        [38] = 46.2
    }
    return dmgarray[weap]
end

function GetWeaponDist(weap)
	local distarray =
	{
		[22] = 35.0,
		[23] = 35.0,
		[24] = 35.0,
		[25] = 40.0,
		[26] = 35.0,
		[27] = 40.0,
		[28] = 35.0,
		[29] = 45.0,
		[30] = 70.0,
		[31] = 90.0,
		[32] = 35.0,
		[33] = 95.0,
        [34] = 320.0,
        [38] = 75.0
	}
	return distarray[weap]
end


function imgui.Hint(text, delay)
    if imgui.IsItemHovered() then
        if go_hint == nil then go_hint = os.clock() + (delay and delay or 0.0) end
        local alpha = (os.clock() - go_hint) * 5
        if os.clock() >= go_hint then
            imgui.PushStyleVar(imgui.StyleVar.Alpha, (alpha <= 1.0 and alpha or 1.0))
            imgui.PushStyleColor(imgui.Col.PopupBg, imgui.GetStyle().Colors[imgui.Col.ButtonHovered])
            imgui.BeginTooltip()
            imgui.PushTextWrapPos(450)
            imgui.TextUnformatted(text)
            if not imgui.IsItemVisible() and imgui.GetStyle().Alpha == 1.0 then go_hint = nil end
            imgui.PopTextWrapPos()
            imgui.EndTooltip()
            imgui.PopStyleColor()
            imgui.PopStyleVar()
        end
    end
end

function imgui.CenterText(text)
    local width = imgui.GetWindowWidth()
    local calc = imgui.CalcTextSize(text)
    imgui.SetCursorPosX( width / 2 - calc.x / 2 )
    imgui.Text(text)
end

function imgui.TextColoredRGB(text, render_text)
    local max_float = imgui.GetWindowWidth()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local ImVec4 = imgui.ImVec4
    local explode_argb = function(argb)
        local a = bit.band(bit.rshift(argb, 24), 0xFF)
        local r = bit.band(bit.rshift(argb, 16), 0xFF)
        local g = bit.band(bit.rshift(argb, 8), 0xFF)
        local b = bit.band(argb, 0xFF)
        return a, r, g, b
    end
    local getcolor = function(color)
        if color:sub(1, 6):upper() == 'SSSSSS' then
            local r, g, b = colors[1].x, colors[1].y, colors[1].z
            local a = tonumber(color:sub(7, 8), 16) or colors[1].w * 255
            return ImVec4(r, g, b, a / 255)
        end
        local color = type(color) == 'string' and tonumber(color, 16) or color
        if type(color) ~= 'number' then return end
        local r, g, b, a = explode_argb(color)
        return imgui.ImColor(r, g, b, a):GetVec4()
    end
    local render_text = function(text_)
        for w in text_:gmatch('[^\r\n]+') do
            local text, colors_, m = {}, {}, 1
            w = w:gsub('{(......)}', '{%1FF}')
            while w:find('{........}') do
                local n, k = w:find('{........}')
                local color = getcolor(w:sub(n + 1, k - 1))
                if color then
                    text[#text], text[#text + 1] = w:sub(m, n - 1), w:sub(k + 1, #w)
                    colors_[#colors_ + 1] = color
                    m = n
                end
                w = w:sub(1, n - 1)..w:sub(k + 1, #w)
            end
            local length = imgui.CalcTextSize(w)
            if render_text == 2 then
                imgui.NewLine()
                imgui.SameLine(max_float / 2 - ( length.x / 2 ))
            elseif render_text == 3 then
                imgui.NewLine()
                imgui.SameLine(max_float - length.x - 5 )
            end
            if text[0] then
                for i = 0, #text do
                    imgui.TextColored(colors_[i] or colors[1], text[i])
                    imgui.SameLine(nil, 0)
                end
                imgui.NewLine()
            else imgui.Text(w) end
        end
    end
    render_text(text)
end





function ev.onSendPlayerSync(data)
	player_sync = {position = {}, health = {}, armor = {}, quaternion = {}, moveSpeed = {}, weapon = {}}
	player_sync.position.x = data.position.x
	player_sync.position.y = data.position.y
	player_sync.position.z = data.position.z
	player_sync.health = 100
	player_sync.armor = 0
	player_sync.quaternion[0] = data.quaternion[0]
	player_sync.quaternion[1] = data.quaternion[1]
	player_sync.quaternion[2] = data.quaternion[2]
	player_sync.quaternion[3] = data.quaternion[3]
	player_sync.moveSpeed.x = data.moveSpeed.x
	player_sync.moveSpeed.y = data.moveSpeed.y
	player_sync.moveSpeed.z = data.moveSpeed.z
	player_sync.weapon = 0
end



function FacingToCoords(posX, posY, ang)
    local vecX = camX + (frontX * 50.0)
    local vecY = camY + (frontY * 50.0)
    local mposX, mposY, mposZ = getCharCoordinates(PLAYER_PED)
    
    local dist = VectorySize(mposX - posX, mposY - posY, 0.0)
    local ndist = 7.0 - (dist / 5)
    if ndist < 0.0 then ndist = 0.0 end
    
    local uang = math.atan2(mposX - vecX, mposY - vecY)
	local tang = math.atan2(mposX - posX, mposY - posY)
	local ugrad = math.deg(uang) + ndist
	local tgrad = math.deg(tang)

	if tgrad - ang < ugrad and tgrad + ang > ugrad then
        if ugrad > tgrad then return ugrad - tgrad
        else return tgrad - ugrad end
	end
    return nil
end

function memory_bool(arg)
    if arg then return 1 else return 0 end
end

function clistFriend(my_id, other_id)
    if sampGetPlayerColor(my_id) ~= other_id then return true else return false end
end

function onToggleButton()
    imgui.SameLine() imgui.SetCursorPosY(12)
end

function onSettings()
    imgui.SetCursorPosX(322)
    imgui.SetCursorPosY(22)
end

function hack.onSendPlayerSync(data)
	if bh then
		if bit.band(data.keysData, 0x28) == 0x28 then
			data.keysData = bit.bxor(data.keysData, 0x20)
		end
	end
end



function imgui.ButtonActivated(activated, ...)
    if activated then
        imgui.PushStyleColor(imgui.Col.Button, imgui.GetStyle().Colors[imgui.Col.CheckMark])
        imgui.PushStyleColor(imgui.Col.ButtonHovered, imgui.GetStyle().Colors[imgui.Col.CheckMark])
        imgui.PushStyleColor(imgui.Col.ButtonActive, imgui.GetStyle().Colors[imgui.Col.CheckMark])

            imgui.Button(...)

        imgui.PopStyleColor()
        imgui.PopStyleColor()
        imgui.PopStyleColor()

    else
        return imgui.Button(...)
    end
end

function imgui.ToggleButton(type, str_id, bool)
	if type == 0 then
		imgui.Checkbox(str_id, bool)
	else
		local rBool = false

		if LastActiveTime == nil then
			LastActiveTime = {}
		end
		if LastActive == nil then
			LastActive = {}
		end

		local function ImSaturate(f)
			return f < 0.0 and 0.0 or (f > 1.0 and 1.0 or f)
		end

		local p = imgui.GetCursorScreenPos()
		local dl = imgui.GetWindowDrawList()

		local height = imgui.GetTextLineHeightWithSpacing()
		local width = height * 1.70
		local radius = height * 0.50
		local ANIM_SPEED = type == 2 and 0.10 or 0.15
		local butPos = imgui.GetCursorPos()

		if imgui.InvisibleButton(str_id, imgui.ImVec2(width, height)) then
			bool[0] = not bool[0]
			rBool = true
			LastActiveTime[tostring(str_id)] = os.clock()
			LastActive[tostring(str_id)] = true
		end

		imgui.SetCursorPos(imgui.ImVec2(butPos.x + width + 8, butPos.y + 2.5))
		imgui.Text( str_id:gsub('##.+', '') )

		local t = bool[0] and 1.0 or 0.0

		if LastActive[tostring(str_id)] then
			local time = os.clock() - LastActiveTime[tostring(str_id)]
			if time <= ANIM_SPEED then
				local t_anim = ImSaturate(time / ANIM_SPEED)
				t = bool[0] and t_anim or 1.0 - t_anim
			else
				LastActive[tostring(str_id)] = false
			end
		end

		local col_circle = bool[0] and imgui.ColorConvertFloat4ToU32(imgui.ImVec4(imgui.GetStyle().Colors[imgui.Col.ButtonActive])) or imgui.ColorConvertFloat4ToU32(imgui.ImVec4(imgui.GetStyle().Colors[imgui.Col.TextDisabled]))
		local text_circle = bool[0] and fa.ICON_CHECK_CIRCLE or fa.ICON_TIMES_CIRCLE -- new
		if type == 2 then
			dl:AddRectFilled(p, imgui.ImVec2(p.x + width, p.y + height), imgui.ColorConvertFloat4ToU32(imgui.GetStyle().Colors[imgui.Col.FrameBg]), height * 0.5)
			dl:AddText(imgui.ImVec2(p.x + (radius / 2) + t * (width - radius * 2.4), p.y + ((radius / 2) - 2.0)), col_circle, text_circle) -- new
		elseif type == 1 then
			dl:AddRectFilled(p, imgui.ImVec2(p.x + width, p.y + height), imgui.ColorConvertFloat4ToU32(imgui.GetStyle().Colors[imgui.Col.FrameBg]), height * 0.5)
			dl:AddCircleFilled(imgui.ImVec2(p.x + radius + t * (width - radius * 2.0), p.y + radius), radius - 1.5, col_circle)
		end
		return rBool
	end
end

function getDownKeys()
    local curkeys = ""
    local bool = false
    for k, v in pairs(vkeys) do
      if isKeyDown(v) then
        curkeys = v
        bool = true
      end
    end
    return curkeys, bool
end

function imgui.ClickCopy(text)
	if imgui.IsItemClicked() then
		imgui.LogToClipboard()
		imgui.LogText(text)
		imgui.LogFinish()
	end
end

function imgui.ToggleButton(str_id, bool)
	local rBool = false

	if LastActiveTime == nil then
		LastActiveTime = {}
	end
	if LastActive == nil then
		LastActive = {}
	end

	local function ImSaturate(f)
		return f < 0.0 and 0.0 or (f > 1.0 and 1.0 or f)
	end
	
	local p = imgui.GetCursorScreenPos()
	local draw_list = imgui.GetWindowDrawList()

	local height = imgui.GetTextLineHeightWithSpacing()
	local width = height * 1.55
	local radius = height * 0.50
	local ANIM_SPEED = 0.15

	if imgui.InvisibleButton(str_id, imgui.ImVec2(width, height)) then
		bool.v = not bool.v
		rBool = true
		LastActiveTime[tostring(str_id)] = os.clock()
		LastActive[tostring(str_id)] = true
	end

	local t = bool.v and 1.0 or 0.0

	if LastActive[tostring(str_id)] then
		local time = os.clock() - LastActiveTime[tostring(str_id)]
		if time <= ANIM_SPEED then
			local t_anim = ImSaturate(time / ANIM_SPEED)
			t = bool.v and t_anim or 1.0 - t_anim
		else
			LastActive[tostring(str_id)] = false
		end
	end

	local col_bg
	if bool.v then
		col_bg = imgui.GetColorU32(imgui.GetStyle().Colors[imgui.Col.FrameBgHovered])
	else
		col_bg = imgui.ImColor(100, 100, 100, 180):GetU32()
	end

	draw_list:AddRectFilled(imgui.ImVec2(p.x, p.y + (height / 6)), imgui.ImVec2(p.x + width - 1.0, p.y + (height - (height / 6))), col_bg, 5.0)
	draw_list:AddCircleFilled(imgui.ImVec2(p.x + radius + t * (width - radius * 2.0), p.y + radius), radius - 0.75, imgui.GetColorU32(bool.v and imgui.GetStyle().Colors[imgui.Col.ButtonActive] or imgui.ImColor(150, 150, 150, 255):GetVec4()))

	return rBool
end

function onToggleButton()
    imgui.SameLine() imgui.SetCursorPosY(12)
end

function CalculateQuat(rotX, rotY, rotZ)
    local b = rotX * math.pi / 360.0
    local h = rotY * math.pi / 360.0
    local a = rotZ * math.pi / 360.0
    
    local c1, c2, c3 = math.cos(h), math.cos(a), math.cos(b)
    local s1, s2, s3 = math.sin(h), math.sin(a), math.sin(b)
    
    local qw = c1 * c2 * c3 - s1 * s2 * s3
    local qx = s1 * s2 * c3 + c1 * c2 * s3
    local qy = s1 * c2 * c3 + c1 * s2 * s3
    local qz = c1 * s2 * c3 - s1 * c2 * s3
    return qw, qx, qy, qz
end

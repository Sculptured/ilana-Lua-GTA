--HUGE THANKS TO CHRIS LAD. (orignal uploader.)
--Thanks andy for helping me figure out a loop to then get this to where its at now.
--Thanks jesus for not only coming in and not only debugging but becoming a second helping hands on this project <3
--Thanks vsus ren + murten for the player throttler. i love you all
--Thank you prisuhm for the unlocks from jinxscript. 


util.on_stop(function()
	util.toast("Enjoy the shitty loop that was constructed")
end)

--AutoLoad Start

menu.trigger_commands("luamusinessbanagersource")
menu.trigger_commands("luailanalua")

--Autoload End



util.keep_running()
util.require_natives(1663599433)

MenuA =  menu.action
MenuL = menu.list
MenuR = menu.my_root()

--root list
menu.divider(menu.my_root(), "------------------------------")
MoneyRoot = MenuL(MenuR, "Money Making")
menu.divider(menu.my_root(), "Special Crate related")
GenRoot = MenuL(MenuR, "General Features", {}, "random stuff i threw in here.")
UNLKRoot = MenuL(MenuR, "Unlock stuff", {}, "Unlike Stand's Unlock all, this will also unlock Packed Unlocks :)")
LogRoot = menu.list(menu.my_root(), "Change Log", {}, "Change log + Version. ")
CreditRoot = MenuL(MenuR, "Credits", {}, "People who helped/supported.")
DevRoot = MenuL(MenuR, "Super Secret Developer Settings")

--root list end

--load text

local YOURUSERNAME = "kool kid"
util.toast("Loaded ilanas skidded script !\nYou're a "..YOURUSERNAME.."")

--end load text

-----------------------------------------------------------------------------------------------------------------------------------------

--Begin Change+Ver Log

menu.readonly(LogRoot, "Implementing new features")
menu.readonly(LogRoot, "added sell delays")
menu.readonly(LogRoot, "Stabilizing sell loop slightly")
menu.divider(LogRoot, "Script Version")
menu.readonly(LogRoot, "version public. - 1x.01")

--end change+ver log

-------------------------------------------------------------------------------------------------------------------------------------------

--Begin credits

menu.action(CreditRoot, "you", {}, "", function(on_click)
	util.toast("Thank you, yes you. for using my shitty skidded script")
end)

menu.action(CreditRoot, "chris", {}, "", function(on_click)
	util.toast("Thank you ChrisLad#9487 for uploading the script originally")
end)

menu.action(CreditRoot, "Zero Tsu", {}, "", function(on_click)
	util.toast("Huge thanks to Zero Tsu for help keeping me sane through the early stages <3")
end)

menu.action(CreditRoot, "Icy+Vsus", {}, "", function(on_click)
	util.toast("Huge thanks to vsus/ren and IcyPhoneix for making MB in the first place.")
end)

menu.action(CreditRoot, "Andy", {}, "", function(on_click)
    util.toast("Big thanks to Anwy for the help aswell as teaching me certain things.")
end) 

menu.action(CreditRoot, "Jesus_Is_Cap aka In Stand We Trust", {}, "", function(on_click)
    util.toast("Thank you Jesus_is_cap for helping with coding + debugging!")
end)

menu.action(CreditRoot, ".Ren", {}, "", function(on_click)
    util.toast("Thank you Ren for the motivation to work on this. (femboy ren) ")
end)

menu.action(CreditRoot, "someoneIdfk", {}, "", function(on_click)
    util.toast("Thank you SomeoneIdfk for helping/tips overall.")
end)

--End Credits

-----------------------------------------------------------------------------------------------------------------------------------------

--Start Unlock Section

        function SET_INT_GLOBAL(Global, Value)
            memory.write_int(memory.script_global(Global), Value)
        end
        function SET_FLOAT_GLOBAL(Global, Value)
            memory.write_float(memory.script_global(Global), Value)
        end
		
        function SET_PACKED_INT_GLOBAL(StartGlobal, EndGlobal, Value) ---------- remvoed this feature because it bricks an account
            for i = StartGlobal, EndGlobal do
                SET_INT_GLOBAL(262145 + i, Value)
            end
        end

menu.action(UNLKRoot, "Unlock Packed Bools", {}, "Unlock a bunch of Packed Bools", function()
    for u = 0, 40000 do STATS.SET_PACKED_STAT_BOOL_CODE(u, + u, true, util.get_char_slot())
	end
end)


menu.action(UNLKRoot, "Unlock Globals", {}, "To use in 1.61 only, if version of GTA Online is higher than 1.61, this function will not work as intended", function()
    for h = 32800, 32960 do memory.write_float(memory.script_global(262145 + h), 1)
	end
	for l = 33550, 33570 do memory.write_float(memory.script_global(262145 + l), 1)
	end
end)


menu.divider(UNLKRoot, "")

menu.action(UNLKRoot, "Unlock M16", {}, "", function()
    memory.write_int(memory.script_global(262145 + 32775), 1)
end)
menu.click_slider(UNLKRoot, "Movie Props", {}, "", 0, 9, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {-1178972880, 0, 0, i, 1, 1, 1})
end)
menu.click_slider(UNLKRoot, "Hidden Caches", {}, "", 0, 9, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {-1178972880, 0, 1, i, 1, 1, 1})
end)
menu.click_slider(UNLKRoot, "Treasure Chests", {}, "", 0, 1, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {-1178972880, 0, 2, i, 1, 1, 1})
end)
menu.click_slider(UNLKRoot, "Radio Antennas", {}, "", 0, 9, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {-1178972880, 0, 3, i, 1, 1, 1})
end)
menu.click_slider(UNLKRoot, "Media USBs", {}, "", 0, 19, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {-1178972880, 0, 4, i, 1, 1, 1})
end)
menu.action(UNLKRoot, "Shipwreck", {}, "", function()
    util.trigger_script_event(1 << players.user(), {-1178972880, 0, 5, 0, 1, 1, 1})
end)
menu.click_slider(UNLKRoot, "Buried Stash", {}, "", 0, 1, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {-1178972880, 0, 6, i, 1, 1, 1})
end)
menu.action(UNLKRoot, "Halloween T-Shirt", {}, "", function()
    util.trigger_script_event(1 << players.user(), {-1178972880, 0, 7, 1, 1, 1, 1})
end)
menu.click_slider(UNLKRoot, "Jack O' Lanterns", {}, "", 0, 9, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {-1178972880, 0, 8, i, 1, 1, 1})
end)
menu.click_slider(UNLKRoot, "Lamar Davis Organics Product", {}, "", 0, 99, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {-1178972880, 0, 9, i, 1, 1, 1})
end)
menu.click_slider(UNLKRoot, "Junk Energy Skydive", {}, "", 0, 9, 0, 1, function(i)
    util.trigger_script_event(1 << players.user(), {-1178972880, 0, 10, i, 1, 1, 1})
end)

--End Unlocks Section

-----------------------------------------------------------------------------------------------------------------------------------------------

--Start Jerry Script Skidded Code

local Int_PTR = memory.alloc_int()

    local function getMPX()
        return 'MP'.. util.get_char_slot() ..'_'
    end

    local function STAT_GET_INT(Stat)
        STATS.STAT_GET_INT(util.joaat(getMPX() .. Stat), Int_PTR, -1)
        return memory.read_int(Int_PTR)
    end

--End Jerry Script Skidded Code

-----------------------------------------------------------------------------------------------------------------------------------------------

--MB Cargo Loop

function Cleanser()
if util.is_session_started() and not util.is_session_transition_active() then
	local ct = 0
	for k,ent in pairs(entities.get_all_vehicles_as_handles()) do
		entities.delete_by_handle(ent)
		ct = ct + 1
	end
	for k,ent in pairs(entities.get_all_peds_as_handles()) do
		if not is_ped_player(ent) then
			entities.delete_by_handle(ent)
		end
		ct = ct + 1
	end
	for k,ent in pairs(entities.get_all_objects_as_handles()) do
		entities.delete_by_handle(ent)
		ct = ct + 1
	end
	end
end
	
function resupply()
if util.is_session_started() and not util.is_session_transition_active() then
	STATS.SET_PACKED_STAT_BOOL_CODE(32359 + 0, true, util.get_char_slot())
    memory.write_int(memory.script_global(2689235 + 1 + (players.user() * 453) + 318 + 6), -1)
    end
end

function TELEPORT(X, Y, Z)
	local Handle = PED.IS_PED_IN_ANY_VEHICLE(players.user_ped(), false) and PED.GET_VEHICLE_PED_IS_IN(players.user_ped(), false) or players.user_ped()
	ENTITY.SET_ENTITY_COORDS(Handle, X, Y, Z)
end

function tpfps()
	TELEPORT(-6969.69, -6969.69, 2668.69)
end

function kill_appsecuroserv()
    util.spoof_script("appsecuroserv", SCRIPT.TERMINATE_THIS_THREAD)
    PLAYER.SET_PLAYER_CONTROL(players.user(), true, 0)
    PAD.ENABLE_ALL_CONTROL_ACTIONS(0)
    PAD.ENABLE_CONTROL_ACTION(2, 1, true)
    PAD.ENABLE_CONTROL_ACTION(2, 2, true)
    PAD.ENABLE_CONTROL_ACTION(2, 187, true)
    PAD.ENABLE_CONTROL_ACTION(2, 188, true)
    PAD.ENABLE_CONTROL_ACTION(2, 189, true)
    PAD.ENABLE_CONTROL_ACTION(2, 190, true)
    PAD.ENABLE_CONTROL_ACTION(2, 199, true)
    PAD.ENABLE_CONTROL_ACTION(2, 200, true)
end

---------------

--Classic Sell Loop

MoneyRootCLS = MenuL(MoneyRoot, "Classic delayed MB cargo Loop")

menu.toggle_loop(MoneyRootCLS, "Remove transaction pending", {"Transaction pending"}, "Use if Transaction pending is fucking with you", function(on_click)
    menu.trigger_commands("removetransactionpending")
end)

menu.divider(MoneyRootCLS, "Made by Jesus_Is_Cap")
	
local speed = 2000
	menu.slider(MoneyRootCLS, "Sell Speed", {"selspd"}, "Modify Sell Speed (in miliseconds)",900, 4650, 2000, 25, function(speed_value)
    speed = speed_value
end)

CrateSellLoop = menu.toggle_loop(MoneyRootCLS, "Crate Sell Loop", {"sellloop"}, "Make sure to set a loop speed before enabling this", function(on_click)
	sell()
    if STAT_GET_INT("CONTOTALFORWHOUSE0",12) <= 5 then
    util.yield(0)
    resupply()
	end
end)

function sell()
if util.is_session_started() and not util.is_session_transition_active() then
	tpfps()
	Cleanser()
    menu.trigger_commands("sellacrate")
    util.yield(800)
	kill_appsecuroserv()
	util.yield(speed -800)
end
end

menu.action(MoneyRootCLS, "No RP", {}, "Click to enable/disable RP gain", function(on_click)
	menu.trigger_commands("NoRP")
end)

menu.divider(MoneyRootCLS, "------------------------------")

menu.action(MoneyRootCLS, "Create Spoofed Solo Session", {"spoofsolo"}, "Use this if you're as paranoid as Jesus_Is_Cap", function()
	menu.trigger_commands("sellinprivate on")
	menu.trigger_commands("spoofsessionstory")
	menu.trigger_commands("gosolo")
end)

menu.action(MoneyRootCLS, "Kill script", {}, "Use this to end the script without having to go back 10,000 times", function(on_click)
	util.stop_script()
end)

--Classic Sell Loop End

--Superiority Loop Stuff

MoneyRootSUP = MenuL(MoneyRoot, "Superiority Loop Options")

menu.action(MoneyRootSUP, "Credits", {}, "", function(on_click)
    util.toast("thank you ilana + ren for getting me into lua -jesus is cap.")
end)

menu.divider(MoneyRootSUP, "Made by Jesus_Is_Cap")

Opti = menu.toggle(MoneyRootSUP, "Optimised Settings", {""}, "Will hopefully Maximise your TPS and FPS", function()
	if menu.get_value(Opti) then
	menu.trigger_commands("potatomode on")
	menu.trigger_commands("nosky on")
	menu.trigger_commands("lodscale 0")
	menu.trigger_commands("fovfponfoot 0")
	menu.trigger_commands("fovtponfoot 0")
	menu.trigger_commands("editstring ")
	menu.trigger_commands("editgbsellbm02 ")
	util.yield(100) GRAPHICS.TOGGLE_PAUSED_RENDERPHASES(on)
	end
	if not menu.get_value(Opti) then
	menu.trigger_commands("potatomode off")
	menu.trigger_commands("nosky off")
	menu.trigger_commands("lodscale 1")
	menu.trigger_commands("fovfponfoot -5")
	menu.trigger_commands("fovtponfoot -5")
	GRAPHICS.TOGGLE_PAUSED_RENDERPHASES(not on)
	end
end)

menu.action(MoneyRootSUP, "No RP", {}, "Click to enable/disable RP gain", function(on_click)
	menu.trigger_commands("NoRP")
end)

menu.action(MoneyRootSUP, "Source Crates", {"sourcecrate"}, "Will source crates for Warehouse in slot 0", function()
    resupply()
end)

local ress = 10
    menu.slider(MoneyRootSUP, "Resupply at", {"rspat"}, "Select value to resupply warehouse when using the Superiority Loop", 0, 108, 10, 1, function(ress_value)
    ress = ress_value
end)

CrateSellLoopSUP = menu.toggle_loop(MoneyRootSUP, "Superiority Loop", {"sellloopsp"}, "The Superior Loop has been found, this will sell crates as fast as the game can KINDA", function(on_click)
	sellsuperior()
    if STAT_GET_INT("CONTOTALFORWHOUSE0",12) <= ress then
	util.yield(0)
    resupply()
	end
end)

Stabilizers = MenuL(MoneyRootSUP, "Stabilizers", {}, "Stabilizers for the hard delays included in the sell function for the Superiority Loop")

--Stabilizers Stuff

local RSTRTLP = 25000
    menu.slider(Stabilizers, "Loop Restart", {}, "Select how fast the loop should restart after switching sessions due to too many failed selling attempts (Usually happens when a Special Cargo Raid happens or some other shit) ", 5000, 30000, 25000, 1000, function(RSTRTLP_value)
    RSTRTLP = RSTRTLP_value
end)

local SCV = 750
    menu.slider(Stabilizers, "Kill SecuroServ App Stabilizer", {}, "Stabilizer to set hard delay in which the SecuroServ app will be killed after executing the sellcrate command", 400, 1000, 750, 25, function(SCV_value)
    SCV = SCV_value
end)

local HRD = 25
    menu.slider(Stabilizers, "Hard Loop Stabilizer", {}, "Stabilizer to set when the Loop will try to restart (Can't really find a better way to explain it) ", 0, 1000, 25, 25, function(HRD_value)
    HRD = HRD_value
end)

function sellsuperior()
if not NETWORK.NETWORK_IS_SCRIPT_ACTIVE("GB_CONTRABAND_SELL") then
	tpfps()
	Cleanser()
    menu.trigger_commands("sellacrate")
    util.yield(SCV)
	kill_appsecuroserv()
	util.yield(HRD)
end
end

--Stabilizers Stuff End

menu.divider(MoneyRootSUP, "------------------------------")

menu.action(MoneyRootSUP, "Create Spoofed Solo Session", {}, "Use this if you're as paranoid as Jesus_Is_Cap", function()
	menu.trigger_commands("spoofsolo")
end)

menu.action(MoneyRootSUP, "Kill script", {}, "Use this to end the script without having to go back 10,000 times", function(on_click)
	util.stop_script()
end)

--Superiority Loop Stuff End

--MB Cargo Loop

-----------------------------------------------------------------------------------------------------------------------------------------------

--Unstuck shit

function LeaveSession()
	menu.trigger_commands("sellloop off")
	util.yield(500)
	menu.trigger_commands("go solo")
	util.yield(25000)
	menu.trigger_commands("sellloop on")
end

function LeaveSessionSUP()
	menu.trigger_commands("sellloopsp off")
	util.yield(500)
	menu.trigger_commands("go solo")
	util.yield(RSTRTLP)
	menu.trigger_commands("sellloopsp on")
end

local temoin = 0
util.create_tick_handler(function()
    while menu.get_value(CrateSellLoop) do
        local n = STAT_GET_INT("CONTOTALFORWHOUSE0",12)
        util.yield(speed)
        if n == STAT_GET_INT("CONTOTALFORWHOUSE0",12) then
            temoin = temoin + 1
            if temoin >= 7 then
                LeaveSession()
                temoin = 0
            end
        else
            temoin = 0
        end
    end
end)

local temoin = 0
util.create_tick_handler(function()
    while menu.get_value(CrateSellLoopSUP) do
        local n = STAT_GET_INT("CONTOTALFORWHOUSE0",12)
        util.yield(1800)
        if n == STAT_GET_INT("CONTOTALFORWHOUSE0",12) then
            temoin = temoin + 1
            if temoin >= 5 then
                LeaveSessionSUP()
                temoin = 0
            end
        else
            temoin = 0
        end
    end
end)

--Unstuck shit End

-----------------------------------------------------------------------------------------------------------------------------------------------

--Start GenStuff

---Cleanse Start

	 menu.action(GenRoot, "Cleanser", {"pclean"}, "Uses stand API to delete EVERY entity it finds (This may or may not break certain stuff, be careful when using it)", function(on_click)
		local ct = 0
		for k,ent in pairs(entities.get_all_vehicles_as_handles()) do
			entities.delete_by_handle(ent)
			ct = ct + 1
		end
		for k,ent in pairs(entities.get_all_peds_as_handles()) do
			if not is_ped_player(ent) then
				entities.delete_by_handle(ent)
			end
			ct = ct + 1
		end
	for k,ent in pairs(entities.get_all_objects_as_handles()) do
		entities.delete_by_handle(ent)
		ct = ct + 1
	end
	util.toast("ilana's cleaner is complete! " .. ct .. " entities removed :}")
end)
function is_ped_player(ped)
    if PED.GET_PED_TYPE(ped) >= 4 then
        return false
    else
        return true
    end
end

---Cleanse End


--Custom Alert

local function custom_alert(l1) -- set your own R* alert
    poptime = os.time()
    while true do
        if PAD.IS_CONTROL_JUST_RELEASED(18, 18) then
            if os.time() - poptime > 0.1 then
                break
            end
        end
        native_invoker.begin_call()
        native_invoker.push_arg_string("ALERT")
        native_invoker.push_arg_string("JL_INVITE_ND")
        native_invoker.push_arg_int(2)
        native_invoker.push_arg_string("")
        native_invoker.push_arg_bool(true)
        native_invoker.push_arg_int(-1)
        native_invoker.push_arg_int(-1)
        native_invoker.push_arg_string(l1)
        native_invoker.push_arg_int(0)
        native_invoker.push_arg_bool(true)
        native_invoker.push_arg_int(0)
        native_invoker.end_call("701919482C74B5AB")
        util.yield()
    end
end

menu.action(GenRoot, "Custom Alert", {"ralert"}, "", function(on_click) menu.show_command_box("ralert ") end, function(text)
    custom_alert(text)
end)

--Custom Alert end

--Player slots start

menu.slider(GenRoot, "max players", {"maxplayers"}, "set the max players for the lobby\nonly works when host\ncredit to Ren#5219 for discovering this + murten for being amazing", 1, 32, 32, 1, function (value)
    if Stand_internal_script_can_run then
        NETWORK.NETWORK_SESSION_SET_MATCHMAKING_GROUP_MAX(0, value)
    end
end)
menu.slider(GenRoot, "max spectators", {"maxspectators"}, "set the max spectators for the lobby\nonly works when host\ncredit to Ren#5219 for discovering this + murten for being amazing", 0, 2, 2, 1, function (value)
    if Stand_internal_script_can_run then
        NETWORK.NETWORK_SESSION_SET_MATCHMAKING_GROUP_MAX(4, value)
    end
end)

menu.toggle_loop(GenRoot, "No RP", {"NoRP"}, "", function()
	if util.is_session_started() and not util.is_session_transition_active() then
    util.draw_debug_text("RP Disabled")
    memory.write_float(memory.script_global(262145 + 1), 0)
	end
end, function()
    memory.write_float(memory.script_global(262145 + 1), 1)
end)

--Player slots end

-----------------------------------------------------------------------------------------------------------------------------------------------

function EnableAdmin()
	util.toast("And desert you")
	util.toast("Never gonna run around")
	util.toast("Never gonna let you down")
	util.toast("Never gonna give you up")
end





--Start Dev stuff

menu.action(DevRoot, "Implement Admin files into your game", {}, "This will allow you to ban players, perform money gifts/corrections on any players and acces GTA Online's console", function()
	EnableAdmin()
end)



menu.action(DevRoot, "Test Stuff", {}, "", function()
	util.spoof_script("GB_SELL_CONTRABAND")
end)

--End Dev Stuff

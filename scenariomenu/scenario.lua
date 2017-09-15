local looped = 0
local looped2 = 1



local scens = {
    {scen = "WORLD_HUMAN_AA_COFFEE", label = "Coffee"},
    {scen = "WORLD_HUMAN_AA_SMOKE", label = "Smoke"},
    {scen = "WORLD_HUMAN_BINOCULARS", label = "Binoculars"},
    {scen = "WORLD_HUMAN_BUM_FREEWAY", label = "Freeway Bum"},
    {scen = "WORLD_HUMAN_BUM_SLUMPED", label = "Slumped"},
    {scen = "WORLD_HUMAN_BUM_STANDING", label = "Standing Bum"},
    {scen = "WORLD_HUMAN_BUM_WASH", label = "Washing Bum"},
    {scen = "WORLD_HUMAN_CAR_PARK_ATTENDANT", label = "Car Park Attendant"},
    {scen = "WORLD_HUMAN_CHEERING", label = "Cheering"},
    {scen = "WORLD_HUMAN_CLIPBOARD", label = "Clipboard"},
    {scen = "WORLD_HUMAN_CONST_DRILL", label = "Drilling"},
    {scen = "WORLD_HUMAN_COP_IDLES", label = "Idling Cop"},
    {scen = "WORLD_HUMAN_DRINKING", label = "Drinking"},
    {scen = "WORLD_HUMAN_DRUG_DEALER", label = "Drug Dealer"},
    {scen = "WORLD_HUMAN_DRUG_DEALER_HARD", label = "Drug Dealer Hard"},
    {scen = "WORLD_HUMAN_MOBILE_FILM_SHOCKING", label = "Film With Phone"},
    {scen = "WORLD_HUMAN_GARDENER_LEAF_BLOWER", label = "Leaf Blower"},
    {scen = "WORLD_HUMAN_GARDENER_PLANT", label = "Planting"},
    {scen = "WORLD_HUMAN_GOLF_PLAYER", label = "Golf Player"},
    {scen = "WORLD_HUMAN_GUARD_PATROL", label = "Guard Patrol"},
    {scen = "WORLD_HUMAN_GUARD_STAND", label = "Guard Standing"},
    {scen = "WORLD_HUMAN_GUARD_STAND_ARMY", label = "Army Standing"},
    {scen = "WORLD_HUMAN_HAMMERING", label = "Hammering"},
    {scen = "WORLD_HUMAN_HANG_OUT_STREET", label = "Hang Out"},
    {scen = "WORLD_HUMAN_HIKER_STANDING", label = "Hiker Standing"},
    {scen = "WORLD_HUMAN_HUMAN_STATUE", label = "Human Statue"},
    {scen = "WORLD_HUMAN_JANITOR", label = "Janitor"},
    {scen = "WORLD_HUMAN_JOG_STANDING", label = "Jog On The Spot"},
    {scen = "WORLD_HUMAN_LEANING", label = "Lean"},
    {scen = "WORLD_HUMAN_MUSCLE_FLEX", label = "Flex"},
    {scen = "WORLD_HUMAN_MUSCLE_FREE_WEIGHTS", label = "Weights"},
    {scen = "WORLD_HUMAN_MUSICIAN", label = "Musician"},
    {scen = "WORLD_HUMAN_PAPARAZZI", label = "Paparazzi"},
    {scen = "WORLD_HUMAN_PARTYING", label = "Partying"},
    {scen = "WORLD_HUMAN_PICNIC", label = "Picnic"},
    {scen = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS", label = "Low Class Prostitute"},
    {scen = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", label = "High Class Prostitute"},
    {scen = "WORLD_HUMAN_PUSH_UPS", label = "Push Ups"},
    {scen = "WORLD_HUMAN_SEAT_LEDGE", label = "Seat Ledge"},
    {scen = "WORLD_HUMAN_SECURITY_SHINE_TORCH", label = "Shine Torch"},
    {scen = "WORLD_HUMAN_SIT_UPS", label = "Sit Ups"},
    {scen = "WORLD_HUMAN_SMOKING", label = "Smoking"},
    {scen = "WORLD_HUMAN_SMOKING_POT", label = "Smoking Pot"},
    {scen = "WORLD_HUMAN_STAND_FIRE", label = "Stand By Fire"},
    {scen = "WORLD_HUMAN_STAND_FISHING", label = "Fishing"},
    {scen = "WORLD_HUMAN_STAND_IMPATIENT", label = "Impatient"},
    {scen = "WORLD_HUMAN_STAND_MOBILE", label = "Stand Using Mobile"},
    {scen = "WORLD_HUMAN_STRIP_WATCH_STAND", label = "Watch Stripper"},
    {scen = "WORLD_HUMAN_STUPOR", label = "Stupor"},
    {scen = "WORLD_HUMAN_SUNBATHE", label = "Sunbathe"},
    {scen = "WORLD_HUMAN_SUNBATHE_BACK", label = "Sunbathe On Back"},
    {scen = "WORLD_HUMAN_SUPERHERO", label = "Superhero"},
    {scen = "WORLD_HUMAN_SWIMMING", label = "Swimming"},
    {scen = "WORLD_HUMAN_TENNIS_PLAYER", label = "Tennis Player"},
    {scen = "WORLD_HUMAN_TOURIST_MAP", label = "Tourist With Map"},
    {scen = "WORLD_HUMAN_TOURIST_MOBILE", label = "Mobile"},
    {scen = "WORLD_HUMAN_VEHICLE_MECHANIC", label = "Mechanic"},
    {scen = "WORLD_HUMAN_WELDING", label = "Welding"},
    {scen = "WORLD_HUMAN_WINDOW_SHOP_BROWSE", label = "Browse Shop Window"},
    {scen = "WORLD_HUMAN_YOGA", label = "Yoga"},
    {scen = "PROP_HUMAN_ATM", label = "ATM"},
    {scen = "PROP_HUMAN_BBQ", label = "BBQ"},
    {scen = "PROP_HUMAN_SEAT_MUSCLE_BENCH_PRESS", label = "Bench Press"},
}
-- {scen = "", label = ""},
Citizen.CreateThread(function()
    local checkbox2 = false
        
    WarMenu.CreateMenu('list', "Tea\'s Scenarios")
    WarMenu.SetSubTitle('list', 'Options')
    WarMenu.CreateSubMenu('scens', 'list', 'Scenarios')
    WarMenu.CreateSubMenu('creds', 'list', 'Credits')


    while true do
            
        local ped = GetPlayerPed(-1)

        if checkbox2 then
            looped2 = 1
        else
            looped2 = 0
        end

        if WarMenu.IsMenuOpened('list') then

            if WarMenu.MenuButton('Scenarios', 'scens') then
            end


            if WarMenu.MenuButton('Credits', 'creds') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('scens') then
            if WarMenu.CheckBox2('Loop Scenarios', checkbox2, function(checked2)
                    checkbox2 = checked2
                end) then
            elseif WarMenu.Button('~r~~h~Stop Scenario') then
                ClearPedTasksImmediately(ped)
            elseif WarMenu.MenuButton('Jobs', 'job') then
            end
            for theId,theItems in pairs(scens) do
                if WarMenu.Button(theItems.label) then
                    TaskStartScenarioInPlace(ped, theItems.scen, looped2, true)
                end
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('creds') then
            if WarMenu.Button('Warmenu Base By:~h~ Warxander') then
                TriggerEvent("chatMessage", "IllusiveTea", {255, 0, 0}, "Warmenu Is Amazing!")
            elseif WarMenu.Button('Menu By:~h~ IllusiveTea') then
            elseif WarMenu.Button('~h~~r~NOTE: THIS IS A WORK IN PROGRESS!') then
            elseif WarMenu.Button('~h~~r~ANIMATIONS AND CATAGORIES') then
            elseif WarMenu.Button('~h~~r~WILL BE ADDED VERY SOON!') then
            end

            WarMenu.Display()
        elseif IsControlJustReleased(0, 167) then --f6
            WarMenu.OpenMenu('list')
        end

        Citizen.Wait(0)
    end
end)

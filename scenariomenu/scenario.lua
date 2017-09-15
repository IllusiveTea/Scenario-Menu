local looped = 0
local looped2 = 1


local scens = {
    {scen = "WORLD_HUMAN_CAR_PARK_ATTENDANT", label = "Car Park Attendant", category = "Jobs"},
    {scen = "WORLD_HUMAN_CLIPBOARD", label = "Clipboard", category = "Jobs"},
    {scen = "WORLD_HUMAN_CONST_DRILL", label = "Drilling", category = "Jobs"},
    {scen = "WORLD_HUMAN_COP_IDLES", label = "Idling Cop", category = "Jobs"},
    {scen = "WORLD_HUMAN_DRUG_DEALER", label = "Drug Dealer", category = "Jobs"},
    {scen = "WORLD_HUMAN_DRUG_DEALER_HARD", label = "Drug Dealer Hard", category = "Jobs"},
    {scen = "WORLD_HUMAN_GARDENER_LEAF_BLOWER", label = "Leaf Blower", category = "Jobs"},
    {scen = "WORLD_HUMAN_GARDENER_PLANT", label = "Planting", category = "Jobs"},
    {scen = "WORLD_HUMAN_GUARD_PATROL", label = "Guard Patrol", category = "Jobs"},
    {scen = "WORLD_HUMAN_GUARD_STAND", label = "Guard Standing", category = "Jobs"},
    {scen = "WORLD_HUMAN_GUARD_STAND_ARMY", label = "Army Standing", category = "Jobs"},
    {scen = "WORLD_HUMAN_HAMMERING", label = "Hammering", category = "Jobs"},
    {scen = "WORLD_HUMAN_HUMAN_STATUE", label = "Human Statue", category = "Jobs"},
    {scen = "WORLD_HUMAN_JANITOR", label = "Janitor", category = "Jobs"},
    {scen = "WORLD_HUMAN_MUSICIAN", label = "Musician", category = "Jobs"},
    {scen = "WORLD_HUMAN_PAPARAZZI", label = "Paparazzi", category = "Jobs"},
    {scen = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS", label = "Low Class Prostitute", category = "Jobs"},
    {scen = "WORLD_HUMAN_PROSTITUTE_LOW_CLASS", label = "High Class Prostitute", category = "Jobs"},
    {scen = "WORLD_HUMAN_SECURITY_SHINE_TORCH", label = "Shine Torch", category = "Jobs"},
    {scen = "WORLD_HUMAN_STAND_FISHING", label = "Fishing", category = "Jobs"},
    {scen = "WORLD_HUMAN_VEHICLE_MECHANIC", label = "Mechanic", category = "Jobs"},
    {scen = "WORLD_HUMAN_WELDING", label = "Welding", category = "Jobs"},
    {scen = "WORLD_HUMAN_AA_COFFEE", label = "Coffee", category = "Drink"},
    {scen = "WORLD_HUMAN_AA_SMOKE", label = "Smoking 1", category = "Drink"},
    {scen = "WORLD_HUMAN_SMOKING", label = "Smoking 2", category = "Drink"},
    {scen = "WORLD_HUMAN_BINOCULARS", label = "Binoculars", category = "Misc"},
    {scen = "WORLD_HUMAN_BUM_FREEWAY", label = "Freeway Bum", category = "Misc"},
    {scen = "WORLD_HUMAN_BUM_SLUMPED", label = "Slumped", category = "Misc"},
    {scen = "WORLD_HUMAN_BUM_STANDING", label = "Standing Bum", category = "Misc"},
    {scen = "WORLD_HUMAN_BUM_WASH", label = "Washing Bum", category = "Misc"},
    {scen = "WORLD_HUMAN_CHEERING", label = "Cheering", category = "Misc"},
    {scen = "WORLD_HUMAN_DRINKING", label = "Drinking", category = "Drink"},
    {scen = "WORLD_HUMAN_MOBILE_FILM_SHOCKING", label = "Film With Phone", category = "Misc"},
    {scen = "WORLD_HUMAN_GOLF_PLAYER", label = "Golf Player", category = "Hobby"},
    {scen = "WORLD_HUMAN_HANG_OUT_STREET", label = "Hang Out", category = "Misc"},
    {scen = "WORLD_HUMAN_HIKER_STANDING", label = "Hiker Standing", category = "Misc"},
    {scen = "WORLD_HUMAN_JOG_STANDING", label = "Jog On The Spot", category = "Misc"},
    {scen = "WORLD_HUMAN_LEANING", label = "Lean", category = "Misc"},
    {scen = "WORLD_HUMAN_MUSCLE_FLEX", label = "Flex", category = "Hobby"},
    {scen = "WORLD_HUMAN_MUSCLE_FREE_WEIGHTS", label = "Weights", category = "Hobby"},
    {scen = "WORLD_HUMAN_PARTYING", label = "Partying", category = "Hobby"},
    {scen = "WORLD_HUMAN_PICNIC", label = "Picnic", category = "Hobby"},
    {scen = "WORLD_HUMAN_PUSH_UPS", label = "Push Ups", category = "Hobby"},
    {scen = "WORLD_HUMAN_SIT_UPS", label = "Sit Ups", category = "Hobby"},
    {scen = "WORLD_HUMAN_SMOKING", label = "Smoking", category = "Drink"},
    {scen = "WORLD_HUMAN_SMOKING_POT", label = "Smoking Pot", category = "Drink"},
    {scen = "WORLD_HUMAN_STAND_FIRE", label = "Stand By Fire", category = "Misc"},
    {scen = "WORLD_HUMAN_STAND_IMPATIENT", label = "Impatient", category = "Misc"},
    {scen = "WORLD_HUMAN_STAND_MOBILE", label = "Stand Using Mobile", category = "Misc"},
    {scen = "WORLD_HUMAN_STRIP_WATCH_STAND", label = "Watch Stripper", category = "Hobby"},
    {scen = "WORLD_HUMAN_STUPOR", label = "Stupor", category = "Drink"},
    {scen = "WORLD_HUMAN_SUNBATHE", label = "Sunbathe", category = "Hobby"},
    {scen = "WORLD_HUMAN_SUNBATHE_BACK", label = "Sunbathe On Back", category = "Hobby"},
    {scen = "WORLD_HUMAN_SUPERHERO", label = "Superhero", category = "Hobby"},
    {scen = "WORLD_HUMAN_SWIMMING", label = "Swimming", category = "Hobby"},
    {scen = "WORLD_HUMAN_TENNIS_PLAYER", label = "Tennis Player", category = "Hobby"},
    {scen = "WORLD_HUMAN_TOURIST_MAP", label = "Tourist With Map", category = "Misc"},
    {scen = "WORLD_HUMAN_TOURIST_MOBILE", label = "Mobile", category = "Misc"},
    {scen = "WORLD_HUMAN_WINDOW_SHOP_BROWSE", label = "Browse Shop Window", category = "Misc"},
    {scen = "WORLD_HUMAN_YOGA", label = "Yoga", category = "Hobby"},
    {scen = "PROP_HUMAN_ATM", label = "ATM", category = "Misc"},
    {scen = "PROP_HUMAN_BBQ", label = "BBQ", category = "Hobby"},
    {scen = "PROP_HUMAN_SEAT_ARMCHAIR", label = "Armchair", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_BAR", label = "Bar Seat", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_BENCH", label = "Bench", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_BENCH_DRINK", label = "Bench Drink", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_BENCH_DRINK_BEER", label = "Bench Drink Beer", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_BENCH_FOOD", label = "Bench Eating", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_BUS_STOP_WAIT", label = "Bus Stop", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_CHAIR", label = "Chair", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_CHAIR_DRINK", label = "Chair Drinking", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_CHAIR_DRINK_BEER", label = "Chair Drinking Beer", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_CHAIR_FOOD", label = "Chair Eating", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_CHAIR_UPRIGHT", label = "Sat Upright", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", label = "Chair (MP Char)", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_COMPUTER", label = "Sat At Computer", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_DECKCHAIR", label = "Deckchair", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_DECKCHAIR_DRINK", label = "Deckchair Drinking", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_MUSCLE_BENCH_PRESS", label = "Bench Press", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_MUSCLE_BENCH_PRESS_PRISON", label = "Bench Press (Prison)", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_SEWING", label = "Sewing", category = "Sat"},
    {scen = "PROP_HUMAN_SEAT_SUNLOUNGER", label = "Sunlounger", category = "Sat"},
}
-- {scen = "", label = "", category = ""},
Citizen.CreateThread(function()
    local checkbox2 = false
    WarMenu.CreateMenu('list', "Tea\'s Scenarios")
    WarMenu.SetSubTitle('list', 'Scenario Menu V1.1!')
    WarMenu.CreateSubMenu('job', 'list', 'Jobs')
    WarMenu.CreateSubMenu('hobby', 'list', 'Hobbies')
    WarMenu.CreateSubMenu('drink', 'list', 'Drinking & Drugs')
    WarMenu.CreateSubMenu('sat', 'list', 'Sat Down Animations')
    WarMenu.CreateSubMenu('misc', 'list', 'Misc')
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
            elseif WarMenu.MenuButton('Hobbies', 'hobby') then
            elseif WarMenu.MenuButton('Drinks + Drugs', 'drink') then
            elseif WarMenu.MenuButton('Sitting Scenarios', 'sat') then
            elseif WarMenu.MenuButton('Misc', 'misc') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('job') then
            if WarMenu.CheckBox2('Loop Scenarios', checkbox2, function(checked2)
                    checkbox2 = checked2
                end) then
            elseif WarMenu.Button('~r~~h~Stop Scenario') then
                ClearPedTasksImmediately(ped)
            end
            for theId,theItems in pairs(scens) do
                if theItems.category == "Jobs" then
                    if WarMenu.Button(theItems.label) then
                    TaskStartScenarioInPlace(ped, theItems.scen, looped2, true)
                    end
                end
            end

        WarMenu.Display()
        elseif WarMenu.IsMenuOpened('hobby') then
            if WarMenu.CheckBox2('Loop Scenarios', checkbox2, function(checked2)
                    checkbox2 = checked2
                end) then
            elseif WarMenu.Button('~r~~h~Stop Scenario') then
                ClearPedTasksImmediately(ped)
            end
            for theId,theItems in pairs(scens) do
                if theItems.category == "Hobby" then
                    if WarMenu.Button(theItems.label) then
                    TaskStartScenarioInPlace(ped, theItems.scen, looped2, true)
                    end
                end
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('drink') then
            if WarMenu.CheckBox2('Loop Scenarios', checkbox2, function(checked2)
                    checkbox2 = checked2
                end) then
            elseif WarMenu.Button('~r~~h~Stop Scenario') then
                ClearPedTasksImmediately(ped)
            end
            for theId,theItems in pairs(scens) do
                if theItems.category == "Drink" then
                    if WarMenu.Button(theItems.label) then
                    TaskStartScenarioInPlace(ped, theItems.scen, looped2, true)
                    end
                end
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('sat') then
            if WarMenu.CheckBox2('Loop Scenarios', checkbox2, function(checked2)
                    checkbox2 = checked2
                end) then
            elseif WarMenu.Button('~r~~h~Stop Scenario') then
                ClearPedTasksImmediately(ped)
            end
            for theId,theItems in pairs(scens) do
                if theItems.category == "Sat" then
                    if WarMenu.Button(theItems.label) then
                    TaskStartScenarioInPlace(ped, theItems.scen, looped2, true)
                    end
                end
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('misc') then
            if WarMenu.CheckBox2('Loop Scenarios', checkbox2, function(checked2)
                    checkbox2 = checked2
                end) then
            elseif WarMenu.Button('~r~~h~Stop Scenario') then
                ClearPedTasksImmediately(ped)
            end
            for theId,theItems in pairs(scens) do
                if theItems.category == "Misc" then
                    if WarMenu.Button(theItems.label) then
                    TaskStartScenarioInPlace(ped, theItems.scen, looped2, true)
                    end
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
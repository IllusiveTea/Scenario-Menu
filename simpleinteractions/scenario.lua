local looped2 = 1

Citizen.CreateThread(function()
    local checkbox2 = false
    WarMenu.CreateMenu('list', "Simple Interactions")
    WarMenu.SetSubTitle('list', 'Simple Interactions V1.2!')
    WarMenu.CreateSubMenu('scens', 'list', 'Scenarios')
    WarMenu.CreateSubMenu('job', 'scens', 'Jobs')
    WarMenu.CreateSubMenu('hobby', 'scens', 'Hobbies')
    WarMenu.CreateSubMenu('drink', 'scens', 'Drinking & Drugs')
    WarMenu.CreateSubMenu('sat', 'scens', 'Sat Down Animations')
    WarMenu.CreateSubMenu('misc', 'scens', 'Misc')
    WarMenu.CreateSubMenu('creds', 'scens', 'Credits')


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

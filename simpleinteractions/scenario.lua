local looped = 8
local looped2 = 16

Citizen.CreateThread(function()
    local checkbox2 = false
    WarMenu.CreateMenu('list', "Simple Interactions")
    WarMenu.SetSubTitle('list', 'Simple Interactions')
    WarMenu.CreateSubMenu('anims', 'list', 'Animations')
    WarMenu.CreateSubMenu('gesture', 'anims', 'Gestures')
    WarMenu.CreateSubMenu('misc2', 'anims', 'Misc')
    WarMenu.CreateSubMenu('scens', 'list', 'Scenarios')
    WarMenu.CreateSubMenu('job', 'scens', 'Jobs')
    WarMenu.CreateSubMenu('hobby', 'scens', 'Hobbies')
    WarMenu.CreateSubMenu('drink', 'scens', 'Drinking & Drugs')
    WarMenu.CreateSubMenu('ems', 'scens', 'EMS Scenarios')
    WarMenu.CreateSubMenu('sat', 'scens', 'Sat Down Scenarios')
    WarMenu.CreateSubMenu('misc', 'scens', 'Misc')
    WarMenu.CreateSubMenu('creds', 'list', 'Credits')

    for theId,theItems in pairs(anims) do
        RequestAnimDict(theItems.dic)
    end

    Buttons = setupScaleform("instructional_buttons")

    while true do

        local ped = PlayerPedId()

        if checkbox then
            looped = 1
        else
            looped = 32
        end

        if checkbox2 then
            looped2 = 1
        else
            looped2 = 0
        end

        if WarMenu.IsMenuOpened('list') then
            DrawScaleformMovieFullscreen(Buttons, 255, 255, 255, 255, 0)
            if WarMenu.MenuButton('Animations', 'anims') then
            end

            if WarMenu.MenuButton('Scenarios', 'scens') then
            end

            if WarMenu.MenuButton('Credits', 'creds') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('anims') then
            DrawScaleformMovieFullscreen(Buttons, 255, 255, 255, 255, 0)
            if WarMenu.CheckBox('Loop Animations', checkbox, function(checked)
                    checkbox = checked
                end) then
            elseif WarMenu.Button('~r~~h~Stop Animation') then
                ClearPedTasksImmediately(ped)
            elseif WarMenu.MenuButton('Gestures', 'gesture') then
            elseif WarMenu.MenuButton('Misc', 'misc2') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('gesture') then
            DrawScaleformMovieFullscreen(Buttons, 255, 255, 255, 255, 0)
            if WarMenu.CheckBox('Loop Animations', checkbox, function(checked)
                    checkbox = checked
                end) then
            elseif WarMenu.Button('~r~~h~Stop Animation') then
                ClearPedTasksImmediately(ped)
            end
            for theId,theItems in pairs(anims) do
                if theItems.category == "Gesture" then
                    if WarMenu.Button(theItems.label) then
                        TaskPlayAnim(ped, theItems.dic, theItems.anim, 8.0, -1, -1, looped, 1, 0, 0, 0)
                    end
                end
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('misc2') then
            DrawScaleformMovieFullscreen(Buttons, 255, 255, 255, 255, 0)
            if WarMenu.CheckBox('Loop Animations', checkbox, function(checked)
                    checkbox = checked
                end) then
            elseif WarMenu.Button('~r~~h~Stop Animation') then
                ClearPedTasksImmediately(ped)
            end
            for theId,theItems in pairs(anims) do
                if theItems.category == "Misc" then
                    if WarMenu.Button(theItems.label) then
                        TaskPlayAnim(ped, theItems.dic, theItems.anim, 8.0, -1, -1, looped, 1, 0, 0, 0)
                    end
                end
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('scens') then
            DrawScaleformMovieFullscreen(Buttons, 255, 255, 255, 255, 0)
            if WarMenu.CheckBox2('Loop Scenarios', checkbox2, function(checked2)
                    checkbox2 = checked2
                end) then
            elseif WarMenu.Button('~r~~h~Stop Scenario') then
                ClearPedTasksImmediately(ped)
            elseif WarMenu.MenuButton('Jobs', 'job') then
            elseif WarMenu.MenuButton('Hobbies', 'hobby') then
            elseif WarMenu.MenuButton('Drinks + Drugs', 'drink') then
            elseif WarMenu.MenuButton('EMS Animations', 'ems') then
            elseif WarMenu.MenuButton('Sitting Scenarios', 'sat') then
            elseif WarMenu.MenuButton('Misc', 'misc') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('job') then
            DrawScaleformMovieFullscreen(Buttons, 255, 255, 255, 255, 0)
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
            DrawScaleformMovieFullscreen(Buttons, 255, 255, 255, 255, 0)
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
            DrawScaleformMovieFullscreen(Buttons, 255, 255, 255, 255, 0)
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
        elseif WarMenu.IsMenuOpened('ems') then
            DrawScaleformMovieFullscreen(Buttons, 255, 255, 255, 255, 0)
            if WarMenu.CheckBox2('Loop Scenarios', checkbox2, function(checked2)
                    checkbox2 = checked2
                end) then
            elseif WarMenu.Button('~r~~h~Stop Scenario') then
                ClearPedTasksImmediately(ped)
            end
            for theId,theItems in pairs(scens) do
                if theItems.category == "EMS" then
                    if WarMenu.Button(theItems.label) then
                    TaskStartScenarioInPlace(ped, theItems.scen, looped2, true)
                    end
                end
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('sat') then
            DrawScaleformMovieFullscreen(Buttons, 255, 255, 255, 255, 0)
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
            DrawScaleformMovieFullscreen(Buttons, 255, 255, 255, 255, 0)
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
            DrawScaleformMovieFullscreen(Buttons, 255, 255, 255, 255, 0)
            if WarMenu.Button('Warmenu Base By:~h~ Warxander') then
                TriggerEvent("chatMessage", "IllusiveTea", {255, 0, 0}, "Neat easter egg! :D")
            elseif WarMenu.Button('Menu By:~h~ IllusiveTea') then
            end

            WarMenu.Display()
        elseif IsControlJustReleased(0, 167) then --f6
            WarMenu.OpenMenu('list')
        end

        Citizen.Wait(0)
    end
end)

function ButtonMessage(text)
    BeginTextCommandScaleformString("STRING")
    AddTextComponentScaleform(text)
    EndTextCommandScaleformString()
end

function Button(ControlButton)
    N_0xe83a3e3557a56640(ControlButton)
end

function setupScaleform(scaleform)
    local scaleform = RequestScaleformMovie(scaleform)
    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end
    PushScaleformMovieFunction(scaleform, "CLEAR_ALL")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_CLEAR_SPACE")
    PushScaleformMovieFunctionParameterInt(200)
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(0)
    Button(GetControlInstructionalButton(2, 191, true))
    ButtonMessage("Select")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(1)
    Button(GetControlInstructionalButton(2, 194, true))
    ButtonMessage("Back")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(2)
    Button(GetControlInstructionalButton(2, 172, true))
    ButtonMessage("Up")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(3)
    Button(GetControlInstructionalButton(2, 173, true))
    ButtonMessage("Down")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_BACKGROUND_COLOUR")
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(80)
    PopScaleformMovieFunctionVoid()

    return scaleform
end

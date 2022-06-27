Survival = {}
Survival.name = "Survival"

function Survival:loadMap()
    print('No sleep enabled!')

    -- override sleep check
    SleepManager.getCanSleep = Utils.overwrittenFunction(SleepManager.getCanSleep, Survival.disableFunction)

end

-- return false to disable overwritten function
function Survival:disableFunction()
    return false
end

addModEventListener(Survival)

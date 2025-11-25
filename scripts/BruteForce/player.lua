local types = require("openmw.types")
local self = require("openmw.self")
local I = require("openmw.interfaces")

require("scripts.BruteForce.utils.consts")
local L = require("scripts.BruteForce.bf_logic")
local omw_utils = require("scripts.BruteForce.utils.openmw_utils")

local function onObjectHit(o, var, res)
    if not L.registerAttack(o) or L.attackMissed(o) then return end
    if L.unlock(o) then
        L.giveCurrWeaponXp()
        if types.Container.objectIsInstance(o) then
            L.damageContainerEquipment(o)
        end
        if L.objectIsOwned(o) then
            L.alertNpcs(o)
        end
    end
end

local function onLoad(savedData)
    omw_utils.checkDependencies(self, Dependencies)
    JammedLocks = savedData
    I.impactEffects.addHitObjectHandler(onObjectHit)
end

local function onSave()
    return JammedLocks
end

local function isLockJammed(id)
    return JammedLocks[id] == true
end

local function setJammedLock(id, val)
    JammedLocks[id] = val
end

return {
    engineHandlers = {
        onLoad = onLoad,
        onSave = onSave,
    },
    eventHandlers = {
        jammedLockOpen = function(ctx) setJammedLock(ctx.id, nil) end,
    },
    interfaceName = "BruteForce",
    interface = {
        version = 1,
        isLockJammed = isLockJammed,
        setJammedLock = setJammedLock,
    },
}

local I = require('openmw.interfaces')

I.Settings.registerPage {
    key = 'BruteForce',
    l10n = 'BruteForce',
    name = 'page_name',
    description = 'page_description',
}

I.Settings.registerGroup {
    key = 'SettingsBruteForce_unlocking',
    page = 'BruteForce',
    l10n = 'BruteForce',
    name = 'unlocking_group_name',
    order = 1,
    permanentStorage = true,
    settings = {
        {
            key = 'strBonus',
            name = 'strBonus_name',
            description = 'strBonus_description',
            renderer = 'number',
            integer = false,
            default = 25,
        },
        {
            key = 'jamChance',
            name = 'jamChance_name',
            description = 'jamChance_description',
            renderer = 'number',
            integer = false,
            default = .15,
            min = 0,
            max = 1,
        },
        {
            key = 'enableXpReward',
            name = 'enableXpReward_name',
            description = 'enableXpReward_description',
            renderer = 'checkbox',
            default = true,
        },
        {
            key = 'damageContentsOnUnlock',
            name = 'damageContentsOnUnlock_name',
            description = 'damageContentsOnUnlock_description',
            renderer = 'checkbox',
            default = true,
        },
    }
}

I.Settings.registerGroup {
    key = 'SettingsBruteForce_alerting',
    page = 'BruteForce',
    l10n = 'BruteForce',
    name = 'alerting_group_name',
    description = 'alerting_group_description',
    order = 2,
    permanentStorage = true,
    settings = {
        {
            key = 'bounty',
            name = 'bounty_name',
            description = 'bounty_description',
            renderer = 'number',
            integer = true,
            default = 400,
            min = 0,
        },
        {
            key = 'losMaxDistBase',
            name = 'losMaxDistBase_name',
            description = 'losMaxDistBase_description',
            renderer = 'number',
            integer = false,
            default = 150,
            min = 0,
        },
        {
            key = 'losMaxDistSneakModifier',
            name = 'losMaxDistSneakModifier_name',
            description = 'losMaxDistSneakModifier_description',
            renderer = 'number',
            integer = false,
            default = .75,
            min = 0,
        },
        {
            key = 'soundRangeBase',
            name = 'soundRangeBase_name',
            description = 'soundRangeBase_description',
            renderer = 'number',
            integer = false,
            default = 40,
            min = 0,
        },
        {
            key = 'soundRangeWeaponSkillModifier',
            name = 'soundRangeWeaponSkillModifier_name',
            description = 'soundRangeWeaponSkillModifier_description',
            renderer = 'number',
            integer = false,
            default = .15,
            min = 0,
        },
    }
}

I.Settings.registerGroup {
    key = 'SettingsBruteForce_debug',
    page = 'BruteForce',
    l10n = 'BruteForce',
    name = 'debug_group_name',
    order = 100,
    permanentStorage = true,
    settings = {
        {
            key = 'modEnabled',
            name = 'modEnabled_name',
            renderer = 'checkbox',
            default = true,
        },
        {
            key = 'alwaysHit',
            name = 'alwaysHit_name',
            renderer = 'checkbox',
            default = false,
        },
    }
}
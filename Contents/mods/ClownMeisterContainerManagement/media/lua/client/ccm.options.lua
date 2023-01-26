local tweaksOptions = {};
tweaksOptions.modOptions = {};

tweaksOptions.configOptions = {
    options_data = {
        ccm = {
            getText("IGUI_MOD_CCM_OFF"),
            getText("IGUI_MOD_CCM_ON"),
            name = getText("MOD_CCM_ON") .. "/" .. getText("IGUI_MOD_CCM_OFF"),
            default = 2,
        },
    },
    mod_id = "clownmeisterContainerManagement",
    mod_fullname = getText("IGUI_MOD_CCM_FULL_NAME"),
    mod_shortname = getText("IGUI_MOD_CCM_SHORT_NAME"),
}

function tweaksOptions.getOption(infoOption)
    if (infoOption == "on") then return tweaksOptions.modOptions.options.ccm > 1 end;
    if (infoOption == "off") then return tweaksOptions.modOptions.options.ccm == 3 end;
end

if ModOptions and ModOptions.getInstance then
    tweaksOptions.modOptions = ModOptions:getInstance(tweaksOptions.configOptions);
end

return tweaksOptions;
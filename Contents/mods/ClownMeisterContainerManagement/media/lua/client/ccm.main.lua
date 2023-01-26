local options = require("ccm.options");

local ContainerManager = {};

---@param inventoryPage ISInventoryPage
---@param state string
function ContainerManager.RefreshInventoryCallback(inventoryPage, state)
    if state ~= "buttonsAdded" then return end;
    --if (not options.getOption("ccmOn")) then return end;

    local barHeight = inventoryPage:titleBarHeight()
    local buttonX = 100
    local buttonY = 0
    local buttonWidth = 50

    --if (inventoryPage.onCharacter) then
    --    inventoryPage.ccmTestChar = ISButton:new(
    --            buttonX, buttonY, buttonWidth, barHeight,
    --            getText("CCM_TEST_CHAR"), inventoryPage, inventoryPage.ccmTestChar
    --    );
    --    inventoryPage.ccmTestChar:initialise();
    --    inventoryPage.ccmTestChar.borderColor.a = 0.0;
    --    inventoryPage.ccmTestChar.backgroundColor.a = 0.0;
    --    inventoryPage.ccmTestChar.backgroundColorMouseOver.a = 0.7;
    --    inventoryPage:addChild(self.CCMTestChar);
    --    inventoryPage.ccmTestChar:setVisible(true);
    --end

    if (not inventoryPage.onCharacter) then
        inventoryPage.ccmTestLoot = ISButton:new(
                buttonX, buttonY, buttonWidth, barHeight,
                getText("IGUI_CCM_TEST_LOOT"), inventoryPage, ISInventoryPage.ccmTestLoot
        );
        inventoryPage.ccmTestLoot:initialise();
        inventoryPage.ccmTestLoot.borderColor.a = 0.0;
        inventoryPage.ccmTestLoot.backgroundColor.a = 0.0;
        inventoryPage.ccmTestLoot.backgroundColorMouseOver.a = 0.7;
        inventoryPage:addChild(inventoryPage.ccmTestLoot);
        inventoryPage.ccmTestLoot:setVisible(true);
    end
end

Events.OnRefreshInventoryWindowContainers.Add(ContainerManager.RefreshInventoryCallback);

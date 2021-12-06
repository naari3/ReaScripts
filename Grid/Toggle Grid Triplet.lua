-- @description Toggle grid triplet
-- @author naari3
-- @version 1.0
-- @about
--   # Toggle grid triplet
--
--   Each action toggles the triplet in the grid.
--
--   for example, You may want to set up a shortcut as follows...
--
--   ```
--   Ctrl + Shift + 1 -> Grid: Adjust by 1/2
--   Ctrl + Shift + 2 -> Grid: Adjust by 2
--   Ctrl + Shift + 3 -> this script
--   ```

--------------------------------------------------------------------------------------------------

local _, current_div = reaper.GetSetProjectGrid(0, false)
local div = 1 / current_div

local to = 1
if div % 3 == 0 then
  to = current_div / (2/3)
else
  to = current_div * (2/3)
end

reaper.GetSetProjectGrid(0, true, to)

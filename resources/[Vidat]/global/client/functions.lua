GLOBAL = {}

GLOBAL.Dump = function(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. GLOBAL.Dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end
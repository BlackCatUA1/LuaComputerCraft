print ("Microcrap Calc\n")
 local tEnv = {
 ["exit"] = function()
 bRunning = false
 end,
 }
 setmetatable( tEnv, { __index = getfenv() } )
 local s = io.read()
 local nForcePrint = 0
 local func, e = loadstring( s )

 local func2, e2 = loadstring( "return "..s )
 if not func then
 if func2 then
 func = func2
 e = nil
 nForcePrint = 1
 end
 else
 if func2 then
 func = func2
 end
 end
 if func then
 setfenv( func, tEnv )
 local tResults = { pcall( func ) }
 if tResults[1] then
 local n = 1
 while (tResults[n + 1] ~= nil) or (n <= nForcePrint) do
 print( tostring( tResults[n + 1] ) )
 n = n + 1
 end
 else
 print( tResults[2] )
 end
 else
 print( e )
 end

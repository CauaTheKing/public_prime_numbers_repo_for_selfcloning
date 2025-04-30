globals_ = {}

local globals_local = globals_


globals = globals_local


globals.first_cases = {}

globals.first_cases[2] = true
globals.first_cases[3] = true
globals.first_cases[1] = false

local to_ret = nil

if tostring(globals_local) == ""..tostring(globals) then
	to_ret = globals_local

else
	to_ret = {}
end

--[[
for N, val in pairs(to_ret) do
	print("Name: "..N,  " | Value:",val)
end
]]


function globals.random_int(num_val, argL)
	local min_rand = num_val or -1
	local max_rand = argL or math.maxinteger

	if max_rand ~= argL and not(min_rand < 0) then
		max_rand = num_val; -->
		  min_rand = -1;
	end
	--[[
		print(min_rand, max_rand) ]]

	math.randomseed(os.time())
	

	local res_int, _ = math.modf( math.random(min_rand, max_rand) )
	return res_int
end

function globals.modular_powering(baseval, exp, modval, _, result)
	result = 1; baseval = (baseval % modval)

	while exp > 0 do		
		if exp % 2 == 1 then
			result = (result * baseval) % modval
		end

		baseval = (baseval ^ 2) % modval

		exp = exp // 2
	end


	return result
end
function globals.test_primality(val, kTimes)
	local x = nil
	local function xCompWithVal()
		if x == nil then
			return
		end

		x = x or math.mininteger

		-- print("are eqq? >> ", x, val-1)
		return val-1 == x
	end

	local first_case_res = nil

	first_case_res = globals.first_cases[val] or nil

	kTimes = 5 or kTimes
	if first_case_res ~= nil then
		return first_case_res
	end

	local d, s = (val - 1), 0;

	while (math.fmod(d, 2) == 0) do
		d = d//2; 
		  s = s + 1;
	end

	local is_composite = true

	for cO = 1, kTimes, 1 do
	   -- miller-rabin algoritm 
	   -- for loop PART ;
	   --- in LUA: vv
		
	    local a = -1


		a = globals.random_int(2, val-2)
		x = globals.modular_powering(a, d, val)
		
		-- print(val-2, x, 2, val)
		is_composite = true
		
		x = globals.modular_powering(x, 2, val)

		if ( xCompWithVal() or x == 1 ) then
			is_composite = false
		else
			
			for cL= 1, s, 1 do
				x = globals.modular_powering(x, 2, val)

				if xCompWithVal() then
					is_composite = false

					break
				end
			end


		end

		if is_composite then
			return false
		end
	end


	return true
end


------(globals.test_primality(7547))

return to_ret

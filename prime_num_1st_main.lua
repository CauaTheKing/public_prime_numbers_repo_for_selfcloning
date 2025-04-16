--------------------------
--- # FROM PASTEBIN \\ ---
--------------------------


local _main = nil

--[[
function main()
    print("ABC")
end
]]
local function getPrimesCompositeMAIN(range_and_min, num, stepping)
        local most_possib_done = -11
        
        local cur_range = globals.ranges.current
        
        local globals = {}
        
        globals.min_diviser = -1
        
        
        local fun_to_run = _main
        
        local number_argo = nil or num
        number_argo = (bfr_number_argo or number_argo) or nil
        
        if number_argo == nil then
            print("# WARNING arg for num is NIL")
        else
            num = number_argo
        end
        
        -------print(num, '|', cur_range, "|", number_argo)

        
        --- print((num-cur_range-2))
        

        

        
        local _range_min = cur_range-2 --// (num)


        
        
        range_and_min = nil or range_and_min
        range_and_min = _range_min

        range_and_min = num + (range_and_min * stepping) 

        if range_and_min > -33339 and (not(string.len(num..'') >= 3)) then
            local globals_cur = {
                ["new_cur"] = true
            }

            globals = globals or globals_cur

            if globals['new_cur'] ~= nil then
                globals.ranges = {
                    ['min'] = -999;
                    ['max'] = -999
                }
            else
                globals['ranges'] = {
                    ['min'] = 30853;
                    ['max'] = 30853
            }
            end

            globals.ranges.max = num-1
            globals.ranges.min = globals.ranges.max

            range_and_min = num + (globals.ranges.min * stepping) 
        end

        local _step = ( -1 or (stepping or nil) )
        
        stepping = stepping or _step
        
        print(stepping, "<<< # steppo")
        
        --[[
        return nil 
        

        ]]
        local min_argo = num
        min_argo = math.min(num, num - (stepping) )
        
        
        
        if stepping < 0 then
            min_argo = num - 1

            print('#### num is:  ', num)
        end
        
        ----------print(min_argo, range_and_min, stepping)

        print("argos: "..min_argo.." & "..range_and_min,"with current range of: "..cur_range)

        for cur_test=min_argo, range_and_min, stepping do
            
            
            ----------------------  ---------------------
            
            
            
            
            local is_prime = fun_to_run(cur_test)
            
            if is_prime then
                
                
                most_possib_done = cur_test
                print(most_possib_done, "  # result of most possible","using "..stepping.." stepping's", "size")
               

                if ( ( (stepping<0) and stepping ~= 0 ) == true ) then --// runs if the stepping is positive
                    if num-1 == most_possib_done then
                        break
                    end
                end

                if stepping > 0 then
                    break
                end
            end
        end
        
        
        return most_possib_done

    end
    


globals = {
    ["_isTable__"] = 1
}
globals.min_diviser = -1

globals.ranges = {}
globals.ranges['min'] = 25
globals.ranges['max'] = globals.ranges['min']


local lower = -1

local upper = -365

local 
function restOfDivIsZeroOrUpper(num)
    local is_prime = true
    
    globals.min_diviser = math.max(2, globals.min_diviser)


    local cur_min = globals.min_diviser * -1
    
    
    
    for cur_min=globals.min_diviser,num,1 
    do
        if cur_min == num then
           print("# same numbers here.... ||") 
           
           break
        end
        
        --- print(globals.min_diviser, "|", cur_min)
        
        if math.fmod(num, cur_min) == 0 then
            is_prime = false
            
            break
        end
    end

    return is_prime
end


function getFirstLowerPrime(num, range, _)
    range = range or globals.ranges.min
    range = tonumber(''..range)
   
    print('# RANGE is '..range)
   
    ------
    -- changin' RANGE if needed
    ------
    
        --[[  change name later ]]
    
    
  --[[
        
        function secondary()
            -- if num > 
        end
    
 ]]
 
    ------  
    --      --[               END                 \]]
    ------
    
    _ = _ or "optionals: [RANGE || 2]"
    local _ = _
   
    _main = restOfDivIsZeroOrUpper
    
    local bfr_number_argo = num
    
    globals.ranges.current = range

    local main = getPrimesCompositeMAIN
    
        print("########### ".._, ">>", num)

    local res = main(num, range, -1)
    return res
end

function getLastHigherPrime(num, range, _)
    _ = _ or "optionals: [RANGE || 2]"
    local _ = _ 
    
   
    ------------ 
    
    
    range = range or globals.ranges.max
    range = tonumber(''..range)
   
    print('# RANGE is '..range)
    ------------ 
  
    local first_fun_num_argo = num
  
    globals.ranges.current = range

    _main = restOfDivIsZeroOrUpper
  
    -----print(num, "|", range)

    local res = getPrimesCompositeMAIN(range+num, first_fun_num_argo, 1)

    ------- print(res);--[[##result]]
end


local prime_num_test = -3451

-- print(math.max(-1, 1))
-- print(getFirstLowerPrime(prime_num_test))

local cases = {
    ["primes"] = {}
}

cases.primes.lowest = getFirstLowerPrime
cases.primes.highest = getLastHigherPrime
-- cases.primes.tested_one = restOfDivIsZeroOrUpper

local _prime_cases = cases.primes

cases.primes_foos = _prime_cases


local cur_case_res = nil


prime_num_test = 38
for cur_case, foo in pairs(_prime_cases) do
    print("#runnning; ",cur_case..":")

    cur_case_res = foo(prime_num_test)

    if cur_case_res ~= nil then
        cases.primes[cur_case] = cur_case_res
    end

    print("#RES:  ", cases.primes[cur_case])
end


--[[
79997305
]]

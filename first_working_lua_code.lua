local prime_num_input = -1
local input_is_prime = false

 
print("Pseudo-Algoritmo previsor de números \nprimos utilizando Lua puro\n")


io.write("Digite qualquer número... ")  prime_num_input = tonumber(io.read())

local smallest_highest = nil
local latest_smallest = -1

local table_of_8_base = {}

for i = 8, 256, 8 do  --[[ Goes up to 256 (but clamped to 255) 
             ^^ Taken from AI prompt
]]

local clamped_value = math.min(i, 255)
  
  table.insert(table_of_8_base, clamped_value)
  
  if #table_of_8_base == 6 then
    break
  end
end

local input_len = math.max(1, string.len(''..prime_num_input))

local smallest_possib = math.max( 1, prime_num_input - table_of_8_base[input_len] )

if smallest_possib < 2 then
  latest_smallest = 1
end

local highest_possib = prime_num_input+200

for possib=smallest_possib, highest_possib, 1 do 
  possib_prime = true
  
  for cur=2, possib-1, 1 do
    if math.fmod(possib, cur) == 0 then
      possib_prime = false
      
      
    end
  end
  
  
  if possib == (prime_num_input) then
    if possib_prime then
      input_is_prime = true
    end
    
    possib_prime = false
  end
  
  if possib_prime and possib ~= prime_num_input then
    if possib > latest_smallest and possib < prime_num_input then
      latest_smallest = possib
    end
    
    if possib > prime_num_input then
      smallest_highest = possib
      
      break
    end
  end
end

latest_smallest = ""..latest_smallest..""
smallest_highest = ""..smallest_highest..""

io.write("\nos 2 valores primos próximos são: \n\t"..latest_smallest.." & "..smallest_highest)

if input_is_prime and tonumber(latest_smallest) ~= prime_num_input then
  prime_num_input = ""..prime_num_input..""
  
  io.write('\n'..'\n'.."  e "..prime_num_input.." é primo também")
end

io.write('.')

io.read()

print()

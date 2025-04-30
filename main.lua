local prime_num_input = -1
local globals = require("./globals")

print("Pseudo-Algoritmo previsor de números \nprimos utilizando Lua puro\n")


print("Digite qualquer número... ")  prime_num_input = (999999999 + 155534877 + 155534877 + 98765432 --[[ 1 ]] )
    ----tonumber(io.read()) ;

print("RES: ", globals.test_primality(prime_num_input, 11))
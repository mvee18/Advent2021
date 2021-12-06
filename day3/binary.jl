function createArray(filepath::String)
    gamma = ""
    epsilon = ""
	for x in eachline(filepath)
		zeroes = 0
		ones = 0
		for c in x
			if c == '0'
				zeroes += 1
			else
				ones += 1
			end
			
			if (zeroes > ones)
				gamma = string(gamma, "0")
				epsilon = string(epsilon, "1")

			else
				gamma = string(gamma, "1")
				epsilon = string(epsilon, "0")
			end
		end
	end

	println(parse(Int64, gamma, base=2))

end

createArray("test.txt")
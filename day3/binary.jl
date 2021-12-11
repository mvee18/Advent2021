using DelimitedFiles

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

function generateArrayFromText(filepath::String)
	newMat = []
	m = readdlm(filepath, ' ', Int, '\n')

	for x in m
		push!(newMat, digits(x, pad=5))
	end

	return newMat
end

function getCols(m)
	tot = sum(m, dims = 1)
	gamma = ""    
	epsilon = ""

	rev = reverse(tot[1])
	println(rev, size(m, 1))
	for i in rev
		println(i, " ", size(m, 1)-i)
		if (i > size(m, 1)-i)
			gamma = string(gamma, "1")
			epsilon = string(epsilon, "0")
		else
			gamma = string(gamma, "0")
			epsilon = string(epsilon, "1")
		end
	end

	return gamma, epsilon
end

g, e = getCols(generateArrayFromText("test.txt"))


# println(g, " ", e)
# println((parse(Int64, g, base=2) * parse(Int64, e, base=2)))

test = generateArrayFromText("test.txt")

function filterArrayOxygen(m)
	tot = sum(m, dims = 1)
	rev = reverse(tot[1])
	for i in rev
		# If one is the prevalent value...
		if (i > size(m, 1)-i)
		else

		end
	end
end

function filterArray(m, index, val)
end


function createArray(filepath::String)
    n = []
	for x in eachline(filepath)
        push!(n, split(x, " "))
	end

    return n
end

function submarine(n)
	depth = 0
	horizontal = 0
	for x in n
		if x[1] == "forward"
			horizontal += parse(Int64, x[2])
		elseif x[1] == "down"
			depth += parse(Int64, x[2])
		elseif x[1] == "up"
			depth -= parse(Int64, x[2])
		
		end
	end

	return depth*horizontal
end

function aim_sub(n)
	aim = 0
	depth = 0
	horizontal = 0
	for x in n
		if x[1] == "forward"
			horizontal += parse(Int64, x[2])
			depth += parse(Int64, x[2])*aim
		elseif x[1] == "down"
			aim += parse(Int64, x[2])
		elseif x[1] == "up"
			aim -= parse(Int64, x[2])
		
		end
	end

	return depth*horizontal
end

total = submarine(createArray("input1.txt"))
println(total)

aim = aim_sub(createArray("input1.txt"))
println(aim)
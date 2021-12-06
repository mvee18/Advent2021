
count = 0
prev_number = 0
for number in eachline("input.txt")
	if (prev_number < parse(Int64, number))
		global prev_number = parse(Int64, number)
		global count += 1
	else 
		global prev_number = parse(Int64, number)
	end
end 

println("Final count ", count-1)

a, b, c = [], [], [], []
function createArray()
    n = []
	for x in eachline("input.txt")
        push!(n, parse(Int64, x))
	end
    
    return n
end

function triple(n)
	prev = 0
	count = 0
        for x in eachindex(n)
        	if (x >= 3)
			val = n[x] + n[x-1] + n[x-2]
			if prev < val
				println(prev, " ", val)
				count += 1
				prev = val
			else
				prev = val
			end
		end
	end

	println("The count of 3 sums that increased is: ", count-1)
end

triple(createArray())

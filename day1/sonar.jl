
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
    println(n)
    #    for x in eachindex(n)
#        println(x)
#    end
end 

triple(createArray())

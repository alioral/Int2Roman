#This program is intended to convert numbers between 1-2999
#to roman numbers.

def romanify(number,one,four,five,nine)
	result=""
	if number < "9"
		if number < "4"
			numOfTimes=Integer(number)
			i=0
			while i < numOfTimes
				result+=one
				i+=1
			end
		elsif number > "4"
			result=five
			if result == 5
				return result
			else
				number = Integer(number)-5
				i=0
				while i < numOfTimes
					result+=one
					i+=1
				end
			end
		else
			result=four
		end
	else
		result=nine
	end
	return result
end
def calculate1s(number)
	result = romanify(number,"I","IV","V","IX")
	return result
end
def calculate10s(number)
  puts number[0]
  puts number[1]
	result = romanify(number[0],"X","XL","L","XC")+romanify(number[1],"I","IV","V","IX")
	return result
end

def calculate100s(number)
	result = romanify(number[0],"C","CD","D","CM")+romanify(number[1],"X","XL","L","XC")+romanify(number[2],"I","IV","V","IX")
end
def calculate1000s(number)
	result=romanify(number[0],"M","","","")+romanify(number[1],"C","CD","D","CM")+romanify(number[2],"X","XL","L","XC")+romanify(number[3],"I","IV","V","IX")
	return result
end

def intToRoman(number)
	if number.length == 1
		return calculate1s(number)
	elsif number.length == 2
		return calculate10s(number)
	elsif number.length == 3
		return calculate100s(number)
	else
		if number < "4000"
			return calculate1000s(number)
		else
			return "Out of bounds!"
		end
	end
end

puts intToRoman("2912")





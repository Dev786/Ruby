
$VERBOSE = nil #Suppress Warning


puts "Enter Minimum length"
length = gets.to_i

puts "Enter Number of Special Character"
SpecialChar = gets.to_i


puts "Enter Number of Numbers"
numbers = gets.to_i

findpasskey = true #variable to check invalid condition
genrate_more = true #varibale to check Whether user want more passKey


#checking error Condition
if length < (numbers+SpecialChar) 
	puts "length should be greater >= (numbers+SpecialChar) i.e. #{numbers+SpecialChar}"
	findpasskey = false
end


generate_more = "y" #Variable to generate check for more Passkey

#Arrays to hold special character, lowercase letter, uppercase letters
special_char = ["#","$","%","&","*","+","/",".","-","_","?","@"]	
lower_letter = []
for x in 'a'..'z' do
	lower_letter.push(x)
end
upper_letter = []
for x in 'A'..'Z' do
	upper_letter.push(x)
end

#original Values
org_length = length
org_special = SpecialChar
org_numbers = numbers

#Generating PassKey
while generate_more == "y"
	if findpasskey 
		passkey = ""
		#looping for length
		while length>0
			x = Random.rand(3)
			if x==0 && SpecialChar>0
				passkey+=special_char[Random.rand(special_char.length)]
				length-=1
				SpecialChar-=1
			elsif x==1 && numbers>0
				passkey+= Random.rand(10).to_s
				length-=1
				numbers-=1
			else
				let = Random.rand(2)
				if let==0
					passkey+=lower_letter[Random.rand(lower_letter.length)]
					length-=1
				else
					passkey+=upper_letter[Random.rand(upper_letter.length)]
					length-=1
				end
			end
		#Shuffle Array
			special_char.shuffle()
			upper_letter.shuffle()
			lower_letter.shuffle()
		end
		puts "\n"
		puts "*"*50
		puts "Your PassKey is: "
		puts passkey
		puts "*"*50
		puts "Do you want more passkey (y/n)"
		generate_more = gets.chomp()
		length = org_length
		numbers = org_numbers
		SpecialChar = org_special
	else
		break
	end
end
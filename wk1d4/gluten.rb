require './allergy_error' #in order to use AllergyError in this program,
#link the file where the AllergyError class was created


#the kinds of food to be eaten
pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]



class Person

attr_accessor :stomach, :allergy

	def initialize(stomach=true, allergy)
		@stomach = stomach
		@allergy = allergy
	end


	def eat(food) #a method to pass the food arrays to the objects
		new_stomach = [] #the stomach starts empty because we haven't given it any food yet
		new_stomach = food.each {|x| new_stomach << food} #for each item in the food array, put
		#it in the new_stomach array
		unless food.include?(@allergy)#unless the food array includes the @allergy that you
			#pass in when you call .new
			p new_stomach  #print the new stomach to the screen.
			puts "that hit the spot!"
		 #otherwise 
		  begin #raise an error because they are allergic and they should stop eating
		  	#i.e. stop adding things to the @stomach array
		   raise AllergyError.new("this person is allergic to #{@allergy}") #new instance of
		   	#AllergyError
		  rescue #instead of breaking in the program, instead, clear the @stomach array
		  	#and print the empty array to the screen
			 	new_stomach.clear
			 	p new_stomach
			 	puts "you just ate something you are allergic to and threw up everywhere."
		  end			
	
			
		end
		
	end


end

chris = Person.new("gluten") #new Person object with variable chris which will have
#an empty @stomach array by default, and is alleric to gluten
beth = Person.new("scallops") #new Person object with variable beth which will have
#an empty @stomach array by default, and is alleric to scallops


chris.eat(pizza)
# chris.eat(pan_seared_scallops)
# chris.eat(water)

beth.eat(pizza)
# beth.eat(pan_seared_scallops)
# beth.eat(water)

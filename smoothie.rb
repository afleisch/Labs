smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

# #def blend (smoothie_ingredients)
# smoothie_arr = smoothie_ingredients.keys.join.delete(" ").split("").shuffle.join
# p smoothie_arr
#   end
# blend(smoothie_ingredients)
 
class Blender
  attr_accessor :power
  
  def initialize(power= "off")
    @power = power
  end


  def blend(ingredients) #the argument is an array
    ingredients.keys.join.delete(" ").split("").shuffle.join #joins all the characters
    #into one string, deletes the spaces, splits it back into another array where each
    #character is it's own string, shuffles the strings, and then joins them back
    #together to become one large mixed string
  end


  end
    new_blender = Blender.new
    puts "The blender is currently #{new_blender.power}"
    puts "Would you like to turn on your blender? You need to. Press p."
    res = gets.chomp
    if res == "p"
      new_blender.power = "on"
      puts "Your blender is now #{new_blender.power}"
      puts new_blender.blend(smoothie_ingredients)
    else
    end

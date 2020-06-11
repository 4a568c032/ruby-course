# Lesson 3: Prompt for Favorite Color

class FavoriteColor

  attr_reader :favorite

  class YourFavoriteColorSucks < StandardError
    def initialize(stupid_color)
       @wrong = stupid_color
    end

    def exception
      puts "Your favorite color #{@wrong} is stupid"
      super()
    end
  end

  def initialize(color)
    @favorite = color
  end

  def favorite_color_matches?(other_color)
    raise YourFavoriteColorSucks.new(other_color) unless @favorite == other_color
    true
  end

end

biased_color = "blue"

puts "What is your favorite color?"
c = FavoriteColor.new(gets.chomp)

if c.favorite_color_matches?(biased_color)
  puts "OMG our favorite colors match lolol"
end



# Lesson 4: Using an If Statement

# if color == "blue"
#     puts "Wow! My favorite color is #{color} also!"
# end

# Lesson 5: Adding an Else Statement

# if color == "blue"
#     puts "Wow! My favorite color is #{color} also!"
# else
#     puts "I'm not a big fan of #{color}."
# end

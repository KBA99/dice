class Dice

  def roll
    return rand(1..6)
  end
  
  def dice(number)
    array = []
    number.times { array.push(roll) }
    puts array
  end
end

# Example code
# dice = Dice.new
# dice.dice(4)

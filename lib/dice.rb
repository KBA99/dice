class Dice

  def roll
    return rand(1..6)
  end
  
  def dice(number)
    array = []
    number.times { array.push(roll) }
    array
  end
end
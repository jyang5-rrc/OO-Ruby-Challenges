class BeerSong
  def verse(number_of_bottles)
    case number_of_bottles
      when 0
        "No more bottles of beer on the wall, no more bottles of beer.\n" \
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
      when 1
        "1 bottle of beer on the wall, 1 bottle of beer.\n" \
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
      when 2
        "2 bottles of beer on the wall, 2 bottles of beer.\n" \
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"
      else
        "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.\n" \
        "Take one down and pass it around, #{number_of_bottles - 1} bottles of beer on the wall.\n"
    end
  end

  def verses(starting_bottles, ending_bottles)
    #loop through the verses by decrementing the number of bottles until it reaches the ending_bottles
    #return the verses
    starting_bottles.downto(ending_bottles).map { |n| verse(n) }.join("\n")
    # map is used to return an array of verses, then join is used to join the array with a new line
  end

  def lyrics
    verses(99, 0)
  end
end
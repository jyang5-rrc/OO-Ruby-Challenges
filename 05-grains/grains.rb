class Grains
  #how many grains were on each square
  def self.square(n)
    2 ** (n - 1)#2 to the power of n - 1
  end
  #the total number of grains on the board
  def self.total
    (1..64).inject { |sum, n| sum + square(n) }
  end
end
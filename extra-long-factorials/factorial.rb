class Factorial
  def self.calcule(number)
    (1..number).reduce(:*)
  end
end

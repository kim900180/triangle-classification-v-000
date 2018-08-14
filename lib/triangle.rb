class Triangle
  # write code here
  attr_accessor :lengthA, :lengthB, :lengthC

  @@equilateral

  def initialize(lengthA, lengthB, lengthC)
    @lengthA = lengthA
    @lengthB = lengthB
    @lengthC = lengthC
  end

  def kind
    if @lengthA == @lengthB && @lengthB == @lengthC
      return :equilateral
    elsif @lengthA == @lengthB && @lengthA != @lengthC
      return :isosceles
    elsif @lengthB == @lengthC && @lengthB != @lengthA
      return :isosceles
    elsif @lengthA == @lengthC && @lengthA != @lengthB
      return :isosceles
    elsif @lengthA != @lengthB && @lengthA != @lengthC
      return :scalene
    end
  end

  class TriangleError < StandardError

  end

end

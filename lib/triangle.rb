class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end 

  def kind 
    validate
    if ((a == b) && (a == c) && (c == b)) 
      :equilateral
    elsif ((a == b) || (b == c) || (c == a)) 
      :isosceles
    else
      :scalene
    end 
  end

  def validate
    triangle = [(a+b>c),(a + c > b), (b + c > a)]
    [a,b,c].each do |side| 
      triangle << false if side <= 0
    raise TriangleError if triangle.include?(false)
  end 
end 
  class TriangleError < StandardError

  end 
end

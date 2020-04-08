 
require 'pry'
class Triangle
<<<<<<< HEAD
  attr_reader :side_1, :side_2, :side_3
  
=======
>>>>>>> f87a39ce642e2407ea8b3c5a6f0b903a72161111
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
<<<<<<< HEAD
  end

  def valid?
    sum_one_two = side_1 + side_2
    sum_one_three = side_1 + side_3
    sum_two_three = side_2 + side_3

    if !(sum_one_two > side_3 && sum_one_three > side_2 && sum_two_three > side_1) || (side_1 <= 0 && side_2 <= 0 && side_3 <= 0)
      raise TriangleError
=======
    @triangle_sides = []
    @triangle_sides << @side_1
    @triangle_sides << @side_2
    @triangle_sides << @side_3
  end

  def valid?
    sum_one_two = @triangle_sides[0] + @triangle_sides[1]
    sum_one_three = @triangle_sides[0] + @triangle_sides[2]
    sum_two_three = @triangle_sides[1] + @triangle_sides[2]


    if(@triangle_sides.none? {|side| side <= 0}) && (sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0]) && ((@side_1 > 0 || @side_2 > 0 || @side_3 > 0) == true)
      return true
    else
      return false
>>>>>>> f87a39ce642e2407ea8b3c5a6f0b903a72161111
    end
  end

  
  def kind
<<<<<<< HEAD
     valid?
       if side_1 == side_2 && side_3 == side_2
        return :equilateral
      elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
=======
    if (valid? == true) 
      if @triangle_sides.uniq.length == 1
        return :equilateral
      elsif @triangle_sides.uniq.length == 2
>>>>>>> f87a39ce642e2407ea8b3c5a6f0b903a72161111
        return :isosceles
      else
        return :scalene
      end
<<<<<<< HEAD
  end
  
  class TriangleError < StandardError

  end
  
end

=======
    else
      raise TriangleError
    end
  end
end

class TriangleError < StandardError

end
>>>>>>> f87a39ce642e2407ea8b3c5a6f0b903a72161111


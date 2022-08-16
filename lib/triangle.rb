class Triangle
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    if one + two <= three || two + three <= one || one + three <= two || (one * two * three) == 0
      begin 
        raise TriangleError
        puts error.message
      end

    elsif one == two && two == three
      :equilateral
    elsif one == two || one == three || two == three
      :isosceles
    else
      :scalene
    end
  end

    class TriangleError < StandardError
      def message
        "this is not a valid triangle"
      end
    end

end

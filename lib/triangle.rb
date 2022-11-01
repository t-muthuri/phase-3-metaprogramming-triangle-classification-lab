class Triangle
  attr_accessor :a, :b, :c

  def initialize (a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind

  # invalid
  #  PSEUDOCODE
  # def no_size?
  #   a == 0 || b == 0 || c == 0
  # end
  # def negative?
  #   a.negative?() && b.negative?() && b.negative?()
  # <= 0 is negative
  # end
  # def triangle_inequality?
    #   a + b > c && a + c > b && b + c > a
    # end

    if 
      (a <= 0 || b <= 0 || c <= 0 || a+b  <= c || a+c <= b || b+c <= a )
      raise TriangleError
    elsif
      a == b && b == c
      :equilateral
    elsif
      a == b || a == c || b == c  
      :isosceles
    else
      a != b && b != c
      :scalene
    # else
    #   begin
    #     raise TriangleError
    #     puts error.message
    #   end
    end
    
  end


  class TriangleError < StandardError

    def message
      "error"
    end
    
  end



end
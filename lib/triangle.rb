class Triangle
  # write code here
  attr_accessor :a
  attr_accessor :b
  attr_accessor :c


  def initialize(a,b,c)
      @a = a
      @b = b
      @c = c
    end
  def kind
    if a<0 || b<0 || c<0 || (a +b) <= c || (b+c) <=a || (a+c) <=b
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif a == b && b==c
      return "equilateral"
    elsif a != b && b!= c
      return "scalene"
    else
      return "isosceles"
    end
  
  end
  
  class TriangleError < StandardError
    # triangle error code
    def message
      "invalid triangle"
    end
  end
end

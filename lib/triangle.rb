class Triangle
  # write code here
  def initialize(side_1,side_2,side_3)
    @side = [side_1,side_2,side_3]
  end

  def kind
    side.sort!
    if invalid?
      raise TriangleError
    else
      type
    end
  end

  private
  def side
    @side
  end

  def type
    case side.uniq.count
    when 1
      :equilateral
    when 2
      :isosceles
    else
      :scalene
    end
  end

  def invalid?
    side[0]+side[1] <= side[2] || side.inject(:+) == 0 ? true : false
  end
end

class TriangleError < StandardError
end

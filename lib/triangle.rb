class Triangle
  attr_accessor :length, :width, :height
  
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end
  
  def kind
    validate_triangle
    if length == width && width == height && height == length
      return :equilateral
    elsif width < length && width < height && length == height
      return :isosceles
    elsif length != width && width != height && height != length
      return :scalene
    end
  end
  
  def validate_triangle
    real_triangle = [(length + width > height), (length + height > width), (width + height > length)]
  
  class TriangleError < StandardError
  end
end

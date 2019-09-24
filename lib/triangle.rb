class Triangle
  attr_accessor :length, :width, :height
  
  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end
  
  def kind
    if length == width && width == height
      return :equilateral
    elsif 
end

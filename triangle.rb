# Triangle Project Code.
# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
#triangle2 Project / Triangle Errors
  a, b, c = [a, b, c].sort
  raise TriangleError if a <= 0 || a + b <= c
    [nil, :equilateral, :isosceles, :scalene][[a, b, c].uniq.size]
  

#triangle1 Project / Categorize Triangles
  if a == b && b == c 
   return :equilateral
  elsif a == b || b == c || a == c
   return :isosceles
  else a != b && b != c && a != c
   return :scalene
end
end
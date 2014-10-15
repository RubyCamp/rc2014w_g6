

#Font.install("font/GAU_cube_B.ttf")

class Count
#	attr_reader :count_b
  def initialize(x, y, count)
    @x = x
    @y = y
    @count = count
	@count_a = 0
    @font=Font.new(80,"GAU_font_cube_B")	
  end

   def draw
     @count += 1
	 @count_a += 1
	if @count_a > 120
     	if @count%120==0
        	$count_b += 1
#        $count = @count_b
     	end
	end
     Window.drawFont(@x, @y, "#{$count_b}", @font, color: [255, 255, 255])
   end
end



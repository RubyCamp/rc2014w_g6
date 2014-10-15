#encoding: Shift_jis
require_relative '../play/director'
p "#{$count_b}"
module Ending
  class Director
    def initialize
      @img1 = Image.load("images/gameover.png")
      @img2 = Image.load("images/start.png")
      #@timer = 3 * 60
	@background_color =Image.new(Window.width, Window.height, [102, 255, 255]) 
	@background=Image.load("images/background.png")
    	@font = Font.new(60,"GAU_font_cube_B")
	end
    def play
      #Window.draw(0,0,background_color,-1)
      #Window.draw(0,0,background)
	Window.draw(0, 0, @background)
	Window.draw(80, 200, @img1)
    Window.drawFont(220, 250, "#{$count_b}", @font, color: [255, 255, 255])
    Window.draw(165, 400, @img2)
	Window.drawFont(50, 100, "GAMEOVER", @font)
    	#			$count_b = 0
      #@timer -= 1
      if Input.key_push?(K_SPACE)
      #if @timer <= 0
		$count_b = 0
        Scene.set_current_scene(:title)
      end
    end
  end
end
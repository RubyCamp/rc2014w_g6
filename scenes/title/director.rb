# coding: shift_jis

module Title
  class Director
    def initialize
      @img1 = Image.load("images/start.png")
      #@timer = 3 * 60
	@background_color =Image.new(Window.width, Window.height, [102, 255, 255]) 
	@background=Image.load("images/background.png")
    	@font = Font.new(60,"GAU_font_cube_B")
    	@font2 = Font.new(15,"MS 明朝")
	end
    def play
      #Window.draw(0,0,background_color,-1)
      #Window.draw(0,0,background)
      
	Window.draw(0, 0, @background)
	Window.draw(165, 300, @img1)
	Window.drawFont(10, 100, "FLAPPY\nSHIMANEKKO", @font)
      	Window.drawFont(250, 600, "島根県観光キャラクター「しまねっこ」", @font2)
      #@timer -= 1
      if Input.key_push?(K_SPACE)
      #if @timer <= 0
        Scene.set_current_scene(:discription)
      end
    end
  end
end

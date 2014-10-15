module Discription
  class Director
    def initialize
        @fr_img2 = Image.load("images/discription.png")
      	@background=Image.load("images/background.png")
        @font = Font.new(60,"GAU_font_cube_B")
    end

    def play
      Window.draw(0, 0, @background)
      Window.draw(200, 300, @fr_img2)
      Window.drawFont(10, 100, "GET READY?", @font)
      #@timer -= 1
      if Input.key_push?(K_SPACE)
      #if @timer <= 0
        Scene.set_current_scene(:play)
      end
    end
  end
end

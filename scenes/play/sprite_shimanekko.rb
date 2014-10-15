
class Shimanekko < Sprite
  def initialize(x, y, image = nil)
    super
    self.image = Image.load("images/shimanekko.png")
    self.image.set_color_key([0, 0, 0])
    @dy = 0
    @gravity = 0.64
	@sound_jump = Sound.new("sounds/jump.wav")
  end

  def update
    @dy += @gravity
    self.y += @dy
   # if self.y > 0
       if Input.keyPush?(K_SPACE)
	 @dy = -8.5 
	 @sound_jump.play
       end 
 #   end
  end

  def hit(obj)
    @dy = 0
  end

  def falling?
   @dy > 0
  end
  
  def angle
    base = @dy + 6 
    a = base * 9.5
    a = 180 if a > 180
    return a
  end

  def draw 
    Window.draw_ex(self.x,self.y, self.image,{angle: angle})
  end
end

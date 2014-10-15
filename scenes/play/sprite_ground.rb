class Ground < Sprite
#	attr_reader :flag

  def initialize(x, y, image = nil)
    image = Image.load("images/shoutotu.png")
    image.set_color_key([0, 0, 0])
    super
    @dx = 0
 #   @flag = flag
   
  end
 #def hit(obj)
 #   @dy = 0
#  end
end

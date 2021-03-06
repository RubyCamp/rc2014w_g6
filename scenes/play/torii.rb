class Torii < Sprite
		attr_reader :flag, :up

	def initialize(x, y, image, flag, r = nil)
		image = Image.load(image)
		image.set_color_key([0, 0, 0])
		super
		@x = x
		@y = y
		@image = image
		@dx = 3		#速さ
		@flag = flag
		@up = 0
		@r = r
	end

	def update
		self.x -= @dx
		@x = self.x
	end

	def draw
		if @flag #下の鳥居
			@i = 285 - @y #差(座標表示
			par = @i / 260.00 #表示されている鳥居@iは元の何倍か
			Window.drawScale(@x, @y, @image, 1, 1 + par, 0, 0)
		else #上の鳥居
			b = 80 + @r #上の鳥居の長さ
			@up = b
			a = b / 260.00
			Window.drawScale(@x, @y-260, @image, 1, -a, 0, 260)
		end
	end
end

class Torii < Sprite
		attr_reader :flag, :up

	def initialize(x, y, image, flag, r = nil)
		image = Image.load(image)
		image.set_color_key([0, 0, 0])
		super
		@x = x
		@y = y
		@image = image
		@dx = 3		#����
		@flag = flag
		@up = 0
		@r = r
	end

	def update
		self.x -= @dx
		@x = self.x
	end

	def draw
		if @flag #���̒���
			@i = 285 - @y #��(���W�\��
			par = @i / 260.00 #�\������Ă��钹��@i�͌��̉��{��
			Window.drawScale(@x, @y, @image, 1, 1 + par, 0, 0)
		else #��̒���
			b = 80 + @r #��̒����̒���
			@up = b
			a = b / 260.00
			Window.drawScale(@x, @y-260, @image, 1, -a, 0, 260)
		end
	end
end

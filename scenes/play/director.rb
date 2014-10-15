require_relative 'count'
require_relative 'torii'
require_relative 'sprite_ground'
require_relative 'sprite_shimanekko'

module Play
	class Director
		def initialize
			@bg_img = Image.load("images/background.png")
			@chars = []
			@g = []
			@timer_limit = 120
			@timer = @timer_limit
			@ground = Ground.new(0,540)
			@player = Shimanekko.new(120, 200)
			@result = false
			@count=Count.new(220,100,0)
            $count_b = 0
		end

		def play
			@timer -= 1
			if @timer <= 0
				r = rand(250)
				@chars << Torii.new(480, 0, "images/torii.png", false, r)#ã
				@chars << Torii.new(480, 230 + r, "images/torii.png", true)#‰º
				@timer = @timer_limit
			end
			Window.draw(0, 0, @bg_img)
			@count.draw
			Sprite.update(@chars)
			Sprite.draw(@chars)
			Sprite.draw(@ground)
			Sprite.update(@player)
			Sprite.draw(@player)
    		@result = false
	    	@chars.each do |c|
    			if c.flag
					if Sprite.check(@player, c)
    	    			@result = true
					end
				else
					c.collision = [c.x - 210, c.y, c.x, c.y + c.up]
					if Sprite.check(@player, c)
						@result = true
					end
				end
	
			
			end

			if Sprite.check(@player, @ground)
				@result = true
			end

			if @result
				@bg_img = Image.load("images/background.png")
				@chars = []
#				@g = []
				@timer_limit = 120
				@timer = @timer_limit
				@ground = Ground.new(0,540)
				@player = Shimanekko.new(120, 200)
		     	@result = false
			    @count=Count.new(220,100,0)
                sound_hit = Sound.new("sounds/hit.wav")
                sound_hit.play
				Scene.set_current_scene(:ending)
			end
		end
	end
end

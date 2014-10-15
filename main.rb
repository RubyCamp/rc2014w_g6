# coding: shift_jis
require 'dxruby'
require_relative'scene'
require_relative 'scenes/load_scenes'

Window.width=480
Window.height=640
background_color =Image.new(Window.width, Window.height, [102, 255, 255]) 
background=Image.load("images/background.png")
Scene.set_current_scene(:title)
Font.install("font/GAU_cube_B.ttf")
#title = Title::Director.new

Window.loop do

Window.draw(0,0,background_color,-1)

Scene.play_scene

end
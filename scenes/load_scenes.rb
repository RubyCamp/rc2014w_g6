require_relative 'title/director'
require_relative 'discription/director'
require_relative 'play/director'
#require_relative 'scene1/director'
#require_relative 'scene2/director'
require_relative 'ending/director'


Scene.add_scene(Title::Director.new,  :title)
Scene.add_scene(Discription::Director.new,  :discription)
Scene.add_scene(Play::Director.new,  :play)
#Scene.add_scene(Scene1::Director.new,  :scene1)
#Scene.add_scene(Scene2::Director.new,  :scene2)
Scene.add_scene(Ending::Director.new,  :ending)

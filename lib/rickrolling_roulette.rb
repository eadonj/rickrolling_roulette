require "rickrolling_roulette/version"
require 'rickrolling_roulette/railtie' if defined?(Rails)


module RickrollingRoulette
 class Rickroll
	 	def initialize(app)
	    @app = app
	  end

	  def call(env)
	  	num = rand(2)
	  	if num == 1
	      [301, {"Location" => 'http://www.youtube.com/watch?v=oHg5SJYRHA0'}, ['rick rolled!']]
      else
        @app.call(env)
      end
    end
  end
end

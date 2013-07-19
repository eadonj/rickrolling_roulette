require "rickrolling_roulette/version"
require 'rickrolling_roulette/railtie' if defined?(Rails)


module RickrollingRoulette

  class ResponseRedirect
    def initialize(app)
      @app = app  
    end  

    def call(env)
      status, headers, response = @app.call(env)

      num = rand(2)
      if num == 1
        [302, {"Location" => "http://www.youtube.com/watch?v=oHg5SJYRHA0"}, response]
      else
        [status, headers, response]
      end
    end
  end  
end

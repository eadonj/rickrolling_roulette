require "rickrolling_roulette/version"

module RickrollingRoulette
  def self.rickroll(num = 5)
  	num = rand(num)
    if num == 1
	   redirect_to 'http://www.youtube.com/watch?v=oHg5SJYRHA0'
    end
  end
end

module RickrollingRoulette
	class Railtie < Rails::Railtie
		initializer "rickrolling_roulette.configure_rails_initialization" do |app|
			app.middleware.use RickrollingRoulette::Rickroll
		end
	end
end
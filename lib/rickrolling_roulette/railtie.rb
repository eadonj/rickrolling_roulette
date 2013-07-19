module RickrollingRoulette
  class Railtie < Rails::Railtie
    railtie_name :rickrolling_roulette
    initializer "rickrolling_roulette.configure_rails_initialization" do |app|
      app.middleware.use RickrollingRoulette::ResponseRedirect
    end
  end
end
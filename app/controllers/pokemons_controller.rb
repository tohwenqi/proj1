class PokemonsController < ApplicationController

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update_attribute(:trainer, current_trainer)
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		newHealth = @pokemon.health - 10
		if newHealth > 0
			@pokemon.update_attribute(:health, newHealth)
		else
			@pokemon.destroy
		end
		redirect_to '/trainers'
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@newPokemon = Pokemon.create(pokemon_params)
		@newPokemon.trainer = current_trainer
		@newPokemon.level = 1
		@newPokemon.health = 100
		@newPokemon.save

		#@newPokemon = Pokemon.create(name: params[:name], level: 1, ndex: params[:ndex], health: 100, trainer_id: current_trainer.id)
		redirect_to '/trainers'
	end

	def update
	    pokemon = Pokemon.find(params[:id])
	    pokemon.update!(pokemon_params)
	    redirect_to '/trainers'
  	end
 
  	private
    def pokemon_params
      params.require(:pokemon).permit(:name, :ndex)
    end
end
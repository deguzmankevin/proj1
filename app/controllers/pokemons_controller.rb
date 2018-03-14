class PokemonsController < ApplicationController

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to :controller => 'home', :action => 'index'
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health -= 10 

		if @pokemon.health <= 0
			@pokemon.destroy
		else 
			@pokemon.save
		end
		
		redirect_to trainer_path(@pokemon.trainer.id)
	end
end

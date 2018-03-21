class PokemonsController < ApplicationController

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to :controller => 'home', :action => 'index'
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		#need to target other pokemon and decrement its' health
		@pokemon.health -= 10 
		@pokemon.save
		redirect_to trainer_path(@pokemon.trainer.id)
	end

	def heal
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health += 10 
		@pokemon.save
		redirect_to trainer_path(@pokemon.trainer.id)
	end
	def new
		@pokemon = Pokemon.create(new_params)#what happens to pokemon.new in show?
		@pokemon.trainer = current_trainer
		@pokemon.level = 1
		@pokemon.health = 100
		if @pokemon.save
			redirect_to trainer_path(current_trainer.id) #why do i need this if simpleformfor has he redirect url?
		else 
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end
	

	def show 
		@pokemon = Pokemon.new  #why do I need this? what does it have to do with @pokemon in simpleformfor
		render :new
	end


	private

	def new_params
		params.require(:pokemon).permit(:name, :ndex)
	end
end

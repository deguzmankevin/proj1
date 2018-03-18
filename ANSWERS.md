# Q0: Why is this error being thrown?
	we don't yet have a pokemon model.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	Only 4 pokemon show up: pikachu, squirtle, charmander and bulbasaur. They are all "starter" pokemon (pikachu doesn't really count does he?).
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
		It creates a button that, when clicked, sends a patch request with the pokemon's id. capture_path(id: @pokemon) sends the id parameter to the capture method in the PokemonsController.
# Question 3: What would you name your own Pokemon?
	Miguel cause that man got the voice of an angel
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
	I passed in trainer_path, which needed the trainer's id so it knew which trainer's page to display!
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
	application.html.erb renders messages.html.erb, which handles the flash message. 
# Give us feedback on the project and decal below!
	Fun project! Not too difficult and time consuming if you do a little each day. I thought #5 had a lot more to do than the other questions, so maybe split in into two parts?  
# Extra credit: Link your Heroku deployed app
https://agile-refuge-23342.herokuapp.com/
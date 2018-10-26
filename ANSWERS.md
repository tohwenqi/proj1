# Q0: Why are these two errors being thrown?
first error: before db:migrate is run, the tables have not actually been created in the database.
second error: The Pokemon model has yet to be generated and thus an error is thrown.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The few random pokemon are hard-coded in the seeds.rb file. When db:seed is run, seeds.rb is run and the new pokemon are created, i.e. they become rows in the database.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
"throw a pokeball" is the display text on the button. capture_path sends the submitted form down the path for 'capture' as specified in routes.rb, with the param id as @pokemon. :class => "button medium" provides styling details. :method => :patch specifies the method to look up in routes.rb.

# Question 3: What would you name your own Pokemon?
bob

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I specified the filepath /trainers. Doing so simply directs the flow to the /trainers directory, which refreshes the trainers page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
application.html.erb is the default layout for rendering any page. Flash messages are a rails convention to display alerts. They are rendered as part of 'messages'.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

# README

### Ahoy, there, friends of GitHub. Here is my Christmas gift to you (and myself, for that matter.)

This is a boilerplate Rails app that is set up with the following opensource tools:
1.Ruby 2.3.1
2.Rails 5
3.Postgres (for the database)
4.Bootstrap (for basic stylin')
5.Sass (to make it easier to give it real style)
 TravisCI (to run tests and automate deployment)
 Heroku (to deploy)
 User (that can log in/ log out)
 BCrypt (authentication)

 SimpleForm (to make forms...simple)

 Minitest & Capybara (for testing bliss)

 ERD ("entity relationship diagram" to make bomb @$$ charts of models)

 Layout broken down into partials for header, notices, footer. 

Why? Because I find myself doing the same thing time after time. This boilerplate will save you at least 35 minutes. Or maybe like 5, but those 5 minutes add up. 

Here's how to get started:
1. fork it, clone it
2. run 'gem install travis'
3. run 'bundle install'
4. run 'rails db:create'
5. run 'rails db:migrate'
6. run 'heroku create app-name'
7. run 'travis setup heroku'
8. update the deploy section of the .travis.yml file to include
	run:
	 - "rake db:migrate"
9. Make it your own by adding models, beefing up controllers, adding views, etc. 
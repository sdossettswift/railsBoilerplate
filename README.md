# README

### Ahoy, there, friends of GitHub. Here is my Christmas gift to you (and myself, for that matter.)

This is a boilerplate Rails app that is set up with the following opensource tools:

1. Ruby 2.3.1

2. Rails 5

3. Postgres (for the database)

4. Bootstrap (for basic stylin')

5. Sass (to make it easier to give it real style)

6. TravisCI (to run tests and automate deployment)

7. Heroku (to deploy)

8. User (that can log in/ log out)

9. BCrypt (authentication)

10. SimpleForm (to make forms...simple)

11. Minitest & Capybara (for testing bliss)

12. ERD ("entity relationship diagram" to make bomb @$$ charts of models)

13. Layout broken down into partials for header, notices, footer.

14. Figaro to manage environmental variables

15. Active Mailer to send emails! -- this will send a sample email to the user upon the creation of their account. 

*Why?* Because I find myself doing the same thing time after time. This boilerplate will save you at least 35 minutes. Or maybe like 5, but those 5 minutes add up.

*Here's how to get started:*

1. fork it, clone it, initiate a GH repo

2. Install TravisCI gem
````
gem install travis
 ````

3. Bundle the gems
````
bundle install
 ````

4. bundle exec figaro install (set environmental variables in production.rb,
development.rb)
````
bundle exec figaro install
 ````

 4.a Add your gmail credentials to application.yml  (created above)
````
 gmail_domain: 'gmail.com'
 gmail_username: 'username@gmail.com'
 gmail_password: 'password'
````


5. Create the database
````
rails db:create
 ````

6. Migrate the Database
````
rails db:create
 ````


7. Run the tests
````
rake
 ````


8. push changes to GH; got to travisci.org and add your GH repository
````
git push -u origin master
 ````

9. Create the app in Heroku (this assumes you have installed the Heroku CLI and have set up an account, etc.)
````
heroku create app-name
````

10. Tell Travis to deploy to Heroku
````
travis setup heroku
````

11. update the deploy section of the .travis.yml file to include

	````
	run:
	 - "rake db:migrate"
	 ````

12. Make it your own by adding models, beefing up controllers, adding views, etc.

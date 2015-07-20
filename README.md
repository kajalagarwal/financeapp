== README

#Ruby and rails version
  2.2.1 and 4.2.2
#System dependencies

#Configuration

#Database creation
  * Two database created one for the users signing up and other for saving the data of uploaded csv file.
  * Has also given secure password path to the user data model.
  * Using the SSL protection.
  * User datamodel is also validating the data for some required information. 
  * Like email should be unique,in a given format and always present, name should be present always, and password should match with confirmation.
  * While looging in it will authenticate the user before giving them an access.

# Database initialization
  * #bundle exec rake db:migrate
  * can run it on the terminal using rails console or for temorary change use rails console --sandbox
  
# Run Test cases
  * There are several test files present with multiple testcases. One each for 2 databases of purchase and user and controller.
  * Test controller and models File are present in the test folder
 
# How to run the test suite
  * Use the command: #bundle exec rake test:models on terminal to run the test cases of models created
  *  Use the command: #bundle exec rake test on terminal to run all the test cases related to app (controller, model,view).

# Services 
  * You can upload the csv file, but it will only accept the file with correct header values whih are as:
     * PurchaserName
     * ItemDescription
     * ItemPrice
     * PurchaseQuantity
     * MerchantAddress
     * MerchantName
  * else will give you a CSV error.
  * It will also validate the data given and will accept the file if none of the column is null.

# Deployment instructions
  *Push all the assets on the clouds first
    #RAILS_ENV=production bundle exec rake assets:precompile
  * First Get the heroku login and create an app.
  * Git add and commit
  * Login to heroku using 
  *  #heroku login
  *  Create the heroku name
  *  #heroku create
  *  push to heroku
  *  #git push heroku master
  *  migrate your db
  *  #heroku run rake db:migrate
  * Deploy to the server
  * #heroku ps
  * #heroku open
  * Running at #https://kajal-financeapp.herokuapp.com/